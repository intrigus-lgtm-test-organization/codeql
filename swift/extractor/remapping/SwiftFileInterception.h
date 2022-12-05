#pragma once

#include <string>
#include <unordered_map>
#include <filesystem>
#include <memory>

#include "swift/extractor/infra/file/PathHash.h"
#include "swift/extractor/config/SwiftExtractorConfiguration.h"

namespace codeql {

int openOriginal(const std::filesystem::path& path);

class FileInterceptor;

std::shared_ptr<FileInterceptor> setupFileInterception(const SwiftExtractorConfiguration& config);

}  // namespace codeql
