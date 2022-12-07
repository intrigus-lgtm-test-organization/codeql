#include "swift/extractor/remapping/SwiftFileInterception.h"

#include <dlfcn.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>

#include <filesystem>
#include <mutex>
#include <optional>

#include "swift/extractor/infra/file/FileHash.h"
#include "swift/extractor/infra/file/FileHash.h"
#include "swift/extractor/config/SwiftExtractorConfiguration.h"

#define STR(X) _STR(X)
#define _STR(X) #X

namespace fs = std::filesystem;

namespace codeql {

namespace {

void* getLibc() {
  static auto ret = dlopen(STR(SHARED_LIBC), RTLD_LAZY);
  return ret;
}

template <typename Signature>
Signature getOriginal(const char* name) {
  return reinterpret_cast<Signature>(dlsym(getLibc(), name));
}

namespace original {
int open(const char* path, int flags, mode_t mode = 0) {
  static auto original = getOriginal<int (*)(const char*, int, ...)>("open");
  return original(path, flags, mode);
}

int rename(const char* oldpath, const char* newpath) {
  static auto original = getOriginal<int (*)(const char*, const char*)>("rename");
  return original(oldpath, newpath);
}

int symlink(const char* target, const char* linkpath) {
  static auto original = getOriginal<int (*)(const char*, const char*)>("symlink");
  return original(target, linkpath);
}
}  // namespace original

auto& fileInterceptorInstance() {
  static std::weak_ptr<FileInterceptor> ret{};
  return ret;
}

// check if rhs is underneath lhs (i.e. lhs recursively contains rhs)
bool pathIsUnderneath(const fs::path& lhs, const fs::path& rhs) {
  auto [mismatch, _] = std::mismatch(lhs.begin(), lhs.end(), rhs.begin(), rhs.end());
  return mismatch == lhs.end();
}
}  // namespace

class FileInterceptor {
 public:
  FileInterceptor(const SwiftExtractorConfiguration& config) : config{config} {
    fs::create_directories(hashesPath());
    fs::create_directories(storePath());
  }

  static int open(const char* path, int flags, int mode) {
    if (auto interceptor = fileInterceptorInstance().lock()) {
      return interceptor->openRedirected(path, flags, mode);
    } else {
      return original::open(path, flags, mode);
    }
  }

  static int rename(const char* source, const char* destination) {
    if (auto interceptor = fileInterceptorInstance().lock()) {
      return interceptor->renameRedirected(source, destination);
    } else {
      return original::rename(source, destination);
    }
  }

  static int symlink(const char* target, const char* linkpath) {
    if (auto interceptor = fileInterceptorInstance().lock()) {
      return interceptor->symlinkRedirected(target, linkpath);
    } else {
      return original::symlink(target, linkpath);
    }
  }

 private:
  int openRedirected(const char* path, int flags, mode_t mode = 0) const {
    auto accessMode = flags & O_ACCMODE;
    fs::path fsPath{path};
    if (accessMode == O_RDONLY) {
      errno = 0;
      // first, try the same path underneath the artifact store
      if (auto ret = original::open(redirectedPath(fsPath).c_str(), flags);
          ret >= 0 || errno != ENOENT) {
        return ret;
      }
      errno = 0;
      // then try to use the hash map
      if (auto hashed = hashPath(fsPath)) {
        if (auto ret = original::open(hashed->c_str(), flags); ret >= 0 || errno != ENOENT) {
          return ret;
        }
      }
      return original::open(path, flags, mode);
    } else {
      // when writing, redirect to the artifact store
      // we don't need to register swiftmodule files in the hash map, as Swift never writes those
      // files directly, but creates temporary files and then renames them
      return original::open(store(fsPath).c_str(), flags, mode);
    }
  }

  int renameRedirected(const char* source, const char* destination) {
    auto redirectedSource = redirectedPath(source);
    auto redirectedDestination = store(destination);
    return original::rename(redirectedSource.c_str(), redirectedDestination.c_str());
  }

  int symlinkRedirected(const char* target, const char* linkpath) {
    errno = 0;
    auto targetPath = redirectedPath(target);
    if (!fs::exists(targetPath)) {
      targetPath = target;
    }
    return original::symlink(targetPath.c_str(), store(linkpath).c_str());
  }

  fs::path hashesPath() const { return config.getTempArtifactDir() / "hashes"; }

  fs::path storePath() const { return config.getTempArtifactDir() / "store"; }

  fs::path redirectedPath(const fs::path& target) const {
    if (isInternalPath(target)) return target;
    return storePath() / target.relative_path();
  }

  fs::path store(const fs::path& target) const {
    auto ret = redirectedPath(target);
    fs::create_directories(ret.parent_path());
    if (auto hashed = hashPath(target)) {
      std::error_code ec;
      fs::create_symlink(ret, *hashed, ec);
      if (ec) {
        std::cerr << "Cannot remap file " << ret << " -> " << *hashed << ": " << ec.message()
                  << "\n";
      }
    }
    return ret;
  }

  std::optional<fs::path> hashPath(const fs::path& target) const {
    // we only map swiftmodule files for the moment
    if (target.extension() != ".swiftmodule") {
      return std::nullopt;
    }
    if (auto fd = openOriginal(target); fd >= 0) {
      return hashesPath() / hashFile(fd);
    }
    return std::nullopt;
  }

  bool isInternalPath(const fs::path& path) const {
    return pathIsUnderneath(config.trapDir, path) ||
           pathIsUnderneath(config.sourceArchiveDir, path) ||
           pathIsUnderneath(config.scratchDir, path);
  }

  const SwiftExtractorConfiguration& config;
};

int openOriginal(const std::filesystem::path& path) {
  return original::open(path.c_str(), O_RDONLY);
}

std::shared_ptr<FileInterceptor> setupFileInterception(const SwiftExtractorConfiguration& config) {
  auto ret = std::make_shared<FileInterceptor>(config);
  fileInterceptorInstance() = ret;
  return ret;
}
}  // namespace codeql

extern "C" {
int open(const char* path, int oflag, ...) {
  va_list ap;
  mode_t mode = 0;
  if (oflag & O_CREAT) {
    // mode only applies to O_CREAT
    va_start(ap, oflag);
    mode = va_arg(ap, int);
    va_end(ap);
  }

  return codeql::FileInterceptor::open(path, oflag, mode);
}

int rename(const char* source, const char* destination) {
  return codeql::FileInterceptor::rename(source, destination);
}

int symlink(const char* target, const char* linkpath) {
  return codeql::FileInterceptor::symlink(target, linkpath);
}

}  // namespace codeql
