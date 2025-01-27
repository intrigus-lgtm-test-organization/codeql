/** Generated model file */

private import javascript

private class Sinks extends ModelInput::SinkModelCsv {
  override predicate row(string row) {
    row =
      [
        "sequelize.Sequelize;Member[query].Argument[0].Member[query];sql-injection", //
        "sequelize.Sequelize;Member[query].Argument[0];sql-injection", //
        "sequelize.SequelizeStaticAndInstance;Member[asIs,literal].Argument[0];sql-injection", //
        "sequelize;Argument[0..].Member[password];credentials[password]", //
        "sequelize;Argument[0..].Member[username];credentials[username]", //
        "sequelize;Argument[1];credentials[username]", //
        "sequelize;Argument[2];credentials[password]", //
      ]
  }
}

private class Types extends ModelInput::TypeModelCsv {
  override predicate row(string row) {
    row =
      [
        "sequelize-typescript.AssociationCountOptions;sequelize-typescript.Model;Member[$count].Argument[1]", //
        "sequelize-typescript.AssociationCountOptions;sequelize-typescript/model/model/association/association-count-options.AssociationCountOptions;", //
        "sequelize-typescript.AssociationGetOptions;sequelize-typescript.Model;Member[$get].Argument[1]", //
        "sequelize-typescript.AssociationGetOptions;sequelize-typescript.Model;Member[$has].Argument[2]", //
        "sequelize-typescript.AssociationGetOptions;sequelize-typescript/model/model/association/association-get-options.AssociationGetOptions;", //
        "sequelize-typescript.BaseAssociation;sequelize-typescript.BaseAssociationStatic;Instance", //
        "sequelize-typescript.BaseAssociation;sequelize-typescript.BelongsToAssociation;", //
        "sequelize-typescript.BaseAssociation;sequelize-typescript.BelongsToManyAssociation;", //
        "sequelize-typescript.BaseAssociation;sequelize-typescript.HasAssociation;", //
        "sequelize-typescript.BaseAssociation;sequelize-typescript/associations/shared/association-service;Member[addAssociation].Argument[1]", //
        "sequelize-typescript.BaseAssociation;sequelize-typescript/associations/shared/association-service;Member[getAssociations,getAssociationsByRelation].ReturnValue.ArrayElement", //
        "sequelize-typescript.BaseAssociation;sequelize-typescript/associations/shared/association-service;Member[setAssociations].Argument[1].ArrayElement", //
        "sequelize-typescript.BaseAssociation;sequelize-typescript/associations/shared/base-association.BaseAssociation;", //
        "sequelize-typescript.BaseAssociation;sequelize-typescript;Member[addAssociation].Argument[1]", //
        "sequelize-typescript.BaseAssociation;sequelize-typescript;Member[getAssociations,getAssociationsByRelation].ReturnValue.ArrayElement", //
        "sequelize-typescript.BaseAssociation;sequelize-typescript;Member[setAssociations].Argument[1].ArrayElement", //
        "sequelize-typescript.BaseAssociationStatic;sequelize-typescript/associations/shared/base-association.BaseAssociationStatic;", //
        "sequelize-typescript.BaseAssociationStatic;sequelize-typescript/associations/shared/base-association;Member[BaseAssociation]", //
        "sequelize-typescript.BaseAssociationStatic;sequelize-typescript;Member[BaseAssociation]", //
        "sequelize-typescript.BelongsToAssociation;sequelize-typescript.BelongsToAssociationStatic;Instance", //
        "sequelize-typescript.BelongsToAssociation;sequelize-typescript/associations/belongs-to/belongs-to-association.BelongsToAssociation;", //
        "sequelize-typescript.BelongsToAssociationStatic;sequelize-typescript/associations/belongs-to/belongs-to-association.BelongsToAssociationStatic;", //
        "sequelize-typescript.BelongsToAssociationStatic;sequelize-typescript/associations/belongs-to/belongs-to-association;Member[BelongsToAssociation]", //
        "sequelize-typescript.BelongsToAssociationStatic;sequelize-typescript;Member[BelongsToAssociation]", //
        "sequelize-typescript.BelongsToManyAssociation;sequelize-typescript.BelongsToManyAssociationStatic;Instance", //
        "sequelize-typescript.BelongsToManyAssociation;sequelize-typescript/associations/belongs-to-many/belongs-to-many-association.BelongsToManyAssociation;", //
        "sequelize-typescript.BelongsToManyAssociationStatic;sequelize-typescript/associations/belongs-to-many/belongs-to-many-association.BelongsToManyAssociationStatic;", //
        "sequelize-typescript.BelongsToManyAssociationStatic;sequelize-typescript/associations/belongs-to-many/belongs-to-many-association;Member[BelongsToManyAssociation]", //
        "sequelize-typescript.BelongsToManyAssociationStatic;sequelize-typescript;Member[BelongsToManyAssociation]", //
        "sequelize-typescript.DefaultScopeGetter;sequelize-typescript.ScopeOptionsGetters;Member[getDefaultScope]", //
        "sequelize-typescript.DefaultScopeGetter;sequelize-typescript/scopes/default-scope;Member[DefaultScope].Argument[0]", //
        "sequelize-typescript.DefaultScopeGetter;sequelize-typescript/scopes/scope-options.DefaultScopeGetter;", //
        "sequelize-typescript.DefaultScopeGetter;sequelize-typescript;Member[DefaultScope].Argument[0]", //
        "sequelize-typescript.HasAssociation;sequelize-typescript.HasAssociationStatic;Instance", //
        "sequelize-typescript.HasAssociation;sequelize-typescript/associations/has/has-association.HasAssociation;", //
        "sequelize-typescript.HasAssociationStatic;sequelize-typescript/associations/has/has-association.HasAssociationStatic;", //
        "sequelize-typescript.HasAssociationStatic;sequelize-typescript/associations/has/has-association;Member[HasAssociation]", //
        "sequelize-typescript.HasAssociationStatic;sequelize-typescript;Member[HasAssociation]", //
        "sequelize-typescript.Model;sequelize-typescript.Model;Member[$add,$has,$remove,$set].Argument[1]", //
        "sequelize-typescript.Model;sequelize-typescript.Model;Member[$add,$has,$remove,$set].Argument[1].ArrayElement", //
        "sequelize-typescript.Model;sequelize-typescript.Model;Member[$create,reload].ReturnValue.Awaited", //
        "sequelize-typescript.Model;sequelize-typescript.ModelStatic~;Instance", //
        "sequelize-typescript.Model;sequelize-typescript.ModelStatic~;Member[initialize].ReturnValue.TypeVar[sequelize-typescript.ModelStatic.0]", //
        "sequelize-typescript.Model;sequelize-typescript.ModelType;Instance", //
        "sequelize-typescript.Model;sequelize-typescript.Sequelize;Member[getRepository].Argument[0].Instance", //
        "sequelize-typescript.Model;sequelize-typescript.Sequelize;Member[getRepository].ReturnValue.TypeVar[sequelize-typescript.Repository.0]", //
        "sequelize-typescript.Model;sequelize-typescript/model/model/model.Model;", //
        "sequelize-typescript.ModelClassGetter;sequelize-typescript.BaseAssociationStatic;Argument[0]", //
        "sequelize-typescript.ModelClassGetter;sequelize-typescript.BelongsToAssociationStatic;Argument[0]", //
        "sequelize-typescript.ModelClassGetter;sequelize-typescript.BelongsToManyAssociationStatic;Argument[0]", //
        "sequelize-typescript.ModelClassGetter;sequelize-typescript.HasAssociationStatic;Argument[0]", //
        "sequelize-typescript.ModelClassGetter;sequelize-typescript/associations/belongs-to-many/belongs-to-many;Member[BelongsToMany].Argument[0,1]", //
        "sequelize-typescript.ModelClassGetter;sequelize-typescript/associations/belongs-to/belongs-to;Member[BelongsTo].Argument[0]", //
        "sequelize-typescript.ModelClassGetter;sequelize-typescript/associations/foreign-key/foreign-key-meta.ForeignKeyMeta;Member[relatedClassGetter]", //
        "sequelize-typescript.ModelClassGetter;sequelize-typescript/associations/foreign-key/foreign-key-service;Member[addForeignKey].Argument[1]", //
        "sequelize-typescript.ModelClassGetter;sequelize-typescript/associations/foreign-key/foreign-key;Member[ForeignKey].Argument[0]", //
        "sequelize-typescript.ModelClassGetter;sequelize-typescript/associations/has/has-many;Member[HasMany].Argument[0]", //
        "sequelize-typescript.ModelClassGetter;sequelize-typescript/associations/has/has-one;Member[HasOne].Argument[0]", //
        "sequelize-typescript.ModelClassGetter;sequelize-typescript/model/shared/model-class-getter.ModelClassGetter;", //
        "sequelize-typescript.ModelClassGetter;sequelize-typescript;Member[BelongsTo,ForeignKey,HasMany,HasOne].Argument[0]", //
        "sequelize-typescript.ModelClassGetter;sequelize-typescript;Member[BelongsToMany].Argument[0,1]", //
        "sequelize-typescript.ModelStatic~;sequelize-typescript/model/model/model.ModelStatic~;", //
        "sequelize-typescript.ModelStatic~;sequelize-typescript/model/model/model;Member[Model]", //
        "sequelize-typescript.ModelStatic~;sequelize-typescript/model/shared/model-not-initialized-error.ModelNotInitializedErrorStatic;Argument[0]", //
        "sequelize-typescript.ModelStatic~;sequelize-typescript;Member[Model]", //
        "sequelize-typescript.ModelType;sequelize-typescript.BaseAssociation;Member[getAssociatedClass].ReturnValue", //
        "sequelize-typescript.ModelType;sequelize-typescript.BaseAssociation;Member[getSequelizeOptions].Argument[0]", //
        "sequelize-typescript.ModelType;sequelize-typescript.BelongsToAssociation;Member[getSequelizeOptions].Argument[0]", //
        "sequelize-typescript.ModelType;sequelize-typescript.BelongsToManyAssociation;Member[getSequelizeOptions].Argument[0]", //
        "sequelize-typescript.ModelType;sequelize-typescript.HasAssociation;Member[getSequelizeOptions].Argument[0]", //
        "sequelize-typescript.ModelType;sequelize-typescript.ModelClassGetter;ReturnValue", //
        "sequelize-typescript.ModelType;sequelize-typescript.Sequelize;Member[model].Argument[0]", //
        "sequelize-typescript.ModelType;sequelize-typescript/associations/foreign-key/foreign-key-service;Member[getForeignKeyOptions].Argument[0,1]", //
        "sequelize-typescript.ModelType;sequelize-typescript/model/model/model.ModelType;", //
        "sequelize-typescript.ScopeOptionsGetters;sequelize-typescript/scopes/scope-options.ScopeOptionsGetters;", //
        "sequelize-typescript.ScopeOptionsGetters;sequelize-typescript/scopes/scope-service;Member[addScopeOptionsGetter,setScopeOptionsGetters].Argument[1]", //
        "sequelize-typescript.ScopeOptionsGetters;sequelize-typescript/scopes/scope-service;Member[getScopeOptionsGetters].ReturnValue", //
        "sequelize-typescript.ScopeOptionsGetters;sequelize-typescript;Member[addScopeOptionsGetter,setScopeOptionsGetters].Argument[1]", //
        "sequelize-typescript.ScopeOptionsGetters;sequelize-typescript;Member[getScopeOptionsGetters].ReturnValue", //
        "sequelize-typescript.ScopesOptions;sequelize-typescript.ScopesOptionsGetter;ReturnValue.AnyMember", //
        "sequelize-typescript.ScopesOptions;sequelize-typescript/scopes/scope-options.ScopesOptions;", //
        "sequelize-typescript.ScopesOptions;sequelize-typescript/scopes/scope-service;Member[resolveScope].Argument[2]", //
        "sequelize-typescript.ScopesOptions;sequelize-typescript;Member[resolveScope].Argument[2]", //
        "sequelize-typescript.ScopesOptionsGetter;sequelize-typescript.ScopeOptionsGetters;Member[getScopes]", //
        "sequelize-typescript.ScopesOptionsGetter;sequelize-typescript/scopes/scope-options.ScopesOptionsGetter;", //
        "sequelize-typescript.ScopesOptionsGetter;sequelize-typescript/scopes/scopes;Member[Scopes].Argument[0]", //
        "sequelize-typescript.ScopesOptionsGetter;sequelize-typescript;Member[Scopes].Argument[0]", //
        "sequelize-typescript.Sequelize;sequelize-typescript.BaseAssociation;Member[getSequelizeOptions].Argument[1]", //
        "sequelize-typescript.Sequelize;sequelize-typescript.BelongsToManyAssociation;Member[getSequelizeOptions].Argument[1]", //
        "sequelize-typescript.Sequelize;sequelize-typescript.SequelizeStatic;Instance", //
        "sequelize-typescript.Sequelize;sequelize-typescript/sequelize/sequelize/sequelize.Sequelize;", //
        "sequelize-typescript.SequelizeOptions;sequelize-typescript.Sequelize;Member[options]", //
        "sequelize-typescript.SequelizeOptions;sequelize-typescript.SequelizeStatic;Argument[3]", //
        "sequelize-typescript.SequelizeOptions;sequelize-typescript.SequelizeStatic;WithArity[0].Argument[0]", //
        "sequelize-typescript.SequelizeOptions;sequelize-typescript.SequelizeStatic;WithArity[1].Argument[0,1]", //
        "sequelize-typescript.SequelizeOptions;sequelize-typescript.SequelizeStatic;WithArity[2].Argument[1,2]", //
        "sequelize-typescript.SequelizeOptions;sequelize-typescript.SequelizeStatic;WithArity[3].Argument[2]", //
        "sequelize-typescript.SequelizeOptions;sequelize-typescript/sequelize/sequelize/sequelize-options.SequelizeOptions;", //
        "sequelize-typescript.SequelizeOptions;sequelize-typescript/sequelize/sequelize/sequelize-service;Member[prepareArgs].ReturnValue.Member[options]", //
        "sequelize-typescript.SequelizeOptions;sequelize-typescript/sequelize/sequelize/sequelize-service;Member[prepareOptions].Argument[0]", //
        "sequelize-typescript.SequelizeOptions;sequelize-typescript/sequelize/sequelize/sequelize-service;Member[prepareOptions].ReturnValue", //
        "sequelize-typescript.SequelizeOptions;sequelize-typescript;Member[prepareArgs].ReturnValue.Member[options]", //
        "sequelize-typescript.SequelizeOptions;sequelize-typescript;Member[prepareOptions].Argument[0]", //
        "sequelize-typescript.SequelizeOptions;sequelize-typescript;Member[prepareOptions].ReturnValue", //
        "sequelize-typescript.SequelizeStatic;sequelize-typescript/sequelize/sequelize/sequelize.SequelizeStatic;", //
        "sequelize-typescript.SequelizeStatic;sequelize-typescript/sequelize/sequelize/sequelize;Member[Sequelize]", //
        "sequelize-typescript.SequelizeStatic;sequelize-typescript;Member[Sequelize]", //
        "sequelize-typescript/associations/foreign-key/foreign-key-meta.ForeignKeyMeta;sequelize-typescript/associations/foreign-key/foreign-key-service;Member[getForeignKeys].ReturnValue.ArrayElement", //
        "sequelize-typescript/model/model/association/association-create-options.AssociationCreateOptions;sequelize-typescript.Model;Member[$create].Argument[2]", //
        "sequelize-typescript/model/shared/model-not-initialized-error.ModelNotInitializedErrorStatic;sequelize-typescript/model/shared/model-not-initialized-error;Member[ModelNotInitializedError]", //
        "sequelize.AnyFindOptions;sequelize.BelongsToManyAddAssociationMixin;Argument[1]", //
        "sequelize.AnyFindOptions;sequelize.BelongsToManyAddAssociationsMixin;Argument[1]", //
        "sequelize.AnyFindOptions;sequelize.BelongsToManySetAssociationsMixin;Argument[1]", //
        "sequelize.AnyFindOptions;sequelize.DefineOptions;Member[defaultScope]", //
        "sequelize.AnyFindOptions;sequelize.DefineScopeOptions;AnyMember", //
        "sequelize.AnyFindOptions;sequelize.HasManySetAssociationsMixin;Argument[1]", //
        "sequelize.AnyFindOptions;sequelize.Instance;Member[reload].Argument[0]", //
        "sequelize.AnyFindOptions;sequelize.Model;Member[addScope].Argument[1]", //
        "sequelize.AssociationOptionsBelongsToMany;sequelize.Associations;Member[belongsToMany].Argument[1]", //
        "sequelize.Associations;sequelize.Model;", //
        "sequelize.Associations;sequelize.SequelizeStaticAndInstance.Model;", //
        "sequelize.BuildOptions;sequelize-typescript.ModelStatic~;Argument[1]", //
        "sequelize.BuildOptions;sequelize.CreateOptions;", //
        "sequelize.BuildOptions;sequelize.Model;Member[build,bulkBuild].Argument[1]", //
        "sequelize.CountOptions;sequelize.Model;Member[count].Argument[0]", //
        "sequelize.CreateOptions;sequelize-typescript/model/model/association/association-create-options.AssociationCreateOptions;", //
        "sequelize.CreateOptions;sequelize.BelongsToCreateAssociationMixin;Argument[1]", //
        "sequelize.CreateOptions;sequelize.BelongsToManyCreateAssociationMixin;Argument[1]", //
        "sequelize.CreateOptions;sequelize.HasManyCreateAssociationMixin;Argument[1]", //
        "sequelize.CreateOptions;sequelize.HasOneCreateAssociationMixin;Argument[1]", //
        "sequelize.CreateOptions;sequelize.Model;Member[create].Argument[1]", //
        "sequelize.DefineAttributeColumnOptions;sequelize.DefineAttributes;AnyMember", //
        "sequelize.DefineAttributeColumnOptions;sequelize.QueryInterface;Member[addColumn,changeColumn].Argument[2]", //
        "sequelize.DefineAttributeColumnReferencesOptions;sequelize.DefineAttributeColumnOptions;Member[references]", //
        "sequelize.DefineAttributes;sequelize.Hooks;Member[beforeDefine].Argument[1].Argument[0]", //
        "sequelize.DefineAttributes;sequelize.Hooks;Member[beforeDefine].WithArity[1].Argument[0].Argument[0]", //
        "sequelize.DefineAttributes;sequelize.QueryInterface;Member[createTable].Argument[1]", //
        "sequelize.DefineOptions;sequelize.Options;Member[define]", //
        "sequelize.DefineOptions;sequelize.Sequelize;Member[define].Argument[2]", //
        "sequelize.DefineScopeOptions;sequelize.DefineOptions;Member[scopes]", //
        "sequelize.FindCreateFindOptions;sequelize.Model;Member[findCreateFind].Argument[0]", //
        "sequelize.FindOptions;sequelize-typescript.AssociationCountOptions;", //
        "sequelize.FindOptions;sequelize-typescript.AssociationGetOptions;", //
        "sequelize.FindOptions;sequelize-typescript.DefaultScopeGetter;ReturnValue", //
        "sequelize.FindOptions;sequelize-typescript.Model;Member[reload].Argument[0]", //
        "sequelize.FindOptions;sequelize-typescript.ScopesOptions;", //
        "sequelize.FindOptions;sequelize-typescript.ScopesOptions;ReturnValue", //
        "sequelize.FindOptions;sequelize.AnyFindOptions;", //
        "sequelize.FindOptions;sequelize.FindCreateFindOptions;", //
        "sequelize.FindOptions;sequelize.FindOrInitializeOptions;", //
        "sequelize.FindOptions;sequelize.Model;Member[all,find,findAll,findAndCount,findAndCountAll,findOne].Argument[0]", //
        "sequelize.FindOptionsOrderArray;sequelize.FindOptions;Member[order]", //
        "sequelize.FindOptionsOrderArray;sequelize.FindOptions;Member[order].ArrayElement", //
        "sequelize.FindOrInitializeOptions;sequelize.Model;Member[findOrBuild,findOrCreate,findOrInitialize].Argument[0]", //
        "sequelize.HasManyGetAssociationsMixinOptions;sequelize.HasManyGetAssociationsMixin;Argument[0]", //
        "sequelize.HasManyGetAssociationsMixinOptions;sequelize.HasManyHasAssociationMixin;Argument[1]", //
        "sequelize.HasManyGetAssociationsMixinOptions;sequelize.HasManyHasAssociationsMixin;Argument[1]", //
        "sequelize.Hooks;sequelize.Hooks;Member[addHook,hook,removeHook].ReturnValue", //
        "sequelize.Hooks;sequelize.Model;", //
        "sequelize.Hooks;sequelize.Sequelize;", //
        "sequelize.Hooks;sequelize.SequelizeStaticAndInstance.Model;", //
        "sequelize.IncludeAssociation;sequelize.Associations;Member[belongsTo,belongsToMany,hasMany,hasOne].ReturnValue", //
        "sequelize.IncludeAssociation;sequelize.IncludeOptions;Member[association]", //
        "sequelize.IncludeOptions;sequelize.BuildOptions;Member[include].ArrayElement", //
        "sequelize.IncludeOptions;sequelize.CountOptions;Member[include]", //
        "sequelize.IncludeOptions;sequelize.CountOptions;Member[include].ArrayElement", //
        "sequelize.IncludeOptions;sequelize.FindOptions;Member[include]", //
        "sequelize.IncludeOptions;sequelize.FindOptions;Member[include].ArrayElement", //
        "sequelize.IncludeOptions;sequelize.HasManyGetAssociationsMixinOptions;Member[include]", //
        "sequelize.IncludeOptions;sequelize.IncludeOptions;Member[include]", //
        "sequelize.IncludeOptions;sequelize.IncludeOptions;Member[include].ArrayElement", //
        "sequelize.Instance;sequelize.Instance;Member[decrement,increment,reload,save,update,updateAttributes].ReturnValue.Awaited", //
        "sequelize.Instance;sequelize.Instance;Member[equalsOneOf].Argument[0].ArrayElement", //
        "sequelize.Instance;sequelize.Instance;Member[equals].Argument[0]", //
        "sequelize.Instance;sequelize.Instance;Member[set,setAttributes].ReturnValue", //
        "sequelize.Instance;sequelize.Model;Member[Instance,build].ReturnValue", //
        "sequelize.Instance;sequelize.Model;Member[all,bulkCreate,findAll].ReturnValue.Awaited.ArrayElement", //
        "sequelize.Instance;sequelize.Model;Member[bulkBuild].ReturnValue.ArrayElement", //
        "sequelize.Instance;sequelize.Model;Member[create,find,findById,findByPk,findByPrimary,findOne].ReturnValue.Awaited", //
        "sequelize.Instance;sequelize.Model;Member[findAndCount,findAndCountAll].ReturnValue.Awaited.Member[rows].ArrayElement", //
        "sequelize.Instance;sequelize.QueryInterface;Member[delete,increment,insert,update].Argument[0]", //
        "sequelize.Instance;sequelize.QueryOptions;Member[instance]", //
        "sequelize.Instance;sequelize.SequelizeStaticAndInstance;Member[Instance]", //
        "sequelize.Model;sequelize.AssociationOptionsBelongsToMany;Member[through]", //
        "sequelize.Model;sequelize.Associations;Member[belongsTo,belongsToMany,hasMany,hasOne].Argument[0]", //
        "sequelize.Model;sequelize.BuildOptions;Member[include].ArrayElement", //
        "sequelize.Model;sequelize.CountOptions;Member[include]", //
        "sequelize.Model;sequelize.CountOptions;Member[include].ArrayElement", //
        "sequelize.Model;sequelize.DefineAttributeColumnReferencesOptions;Member[model]", //
        "sequelize.Model;sequelize.FindOptions;Member[include]", //
        "sequelize.Model;sequelize.FindOptions;Member[include].ArrayElement", //
        "sequelize.Model;sequelize.FindOptions;Member[lock].Member[of]", //
        "sequelize.Model;sequelize.FindOptionsOrderArray;ArrayElement", //
        "sequelize.Model;sequelize.FindOptionsOrderArray;ArrayElement.Member[model]", //
        "sequelize.Model;sequelize.Hooks;Member[afterDefine].Argument[1].Argument[0]", //
        "sequelize.Model;sequelize.Hooks;Member[afterDefine].WithArity[1].Argument[0].Argument[0]", //
        "sequelize.Model;sequelize.IncludeAssociation;Member[source,target]", //
        "sequelize.Model;sequelize.IncludeOptions;Member[include,model]", //
        "sequelize.Model;sequelize.IncludeOptions;Member[include].ArrayElement", //
        "sequelize.Model;sequelize.Instance;Member[Model]", //
        "sequelize.Model;sequelize.Model;Member[schema,scope,unscoped].ReturnValue", //
        "sequelize.Model;sequelize.Model;Member[sync].ReturnValue.Awaited", //
        "sequelize.Model;sequelize.Models;AnyMember", //
        "sequelize.Model;sequelize.ModelsHashInterface;AnyMember", //
        "sequelize.Model;sequelize.QueryInterface;Member[bulkDelete,rawSelect,upsert].Argument[3]", //
        "sequelize.Model;sequelize.QueryInterface;Member[select].Argument[0]", //
        "sequelize.Model;sequelize.QueryOptions;Member[model]", //
        "sequelize.Model;sequelize.Sequelize;Member[define,import,model].ReturnValue", //
        "sequelize.Model;sequelize.Sequelize;Member[import].Argument[1].ReturnValue", //
        "sequelize.Model;sequelize.SequelizeStaticAndInstance;Member[Model]", //
        "sequelize.Model;sequelize.ThroughOptions;Member[model]", //
        "sequelize.Model;sequelize.Utils;Member[mapOptionFieldNames].Argument[1]", //
        "sequelize.Model;sequelize.Utils;Member[mapValueFieldNames].Argument[2]", //
        "sequelize.Models;sequelize.Model;Member[associate].Argument[0]", //
        "sequelize.ModelsHashInterface;sequelize.Sequelize;Member[models]", //
        "sequelize.Options;sequelize-typescript.SequelizeOptions;", //
        "sequelize.Options;sequelize.Sequelize;Member[options]", //
        "sequelize.Options;sequelize.SequelizeStatic;Argument[3]", //
        "sequelize.Options;sequelize.SequelizeStatic;WithArity[1].Argument[0,1]", //
        "sequelize.Options;sequelize.SequelizeStatic;WithArity[2].Argument[1,2]", //
        "sequelize.Options;sequelize.SequelizeStatic;WithArity[3].Argument[2]", //
        "sequelize.QueryInterface;sequelize.Sequelize;Member[getQueryInterface].ReturnValue", //
        "sequelize.QueryOptions;sequelize.Options;Member[query]", //
        "sequelize.QueryOptions;sequelize.QueryInterface;Member[bulkDelete,bulkInsert,createTable,select,setAutocommit,setIsolationLevel].Argument[2]", //
        "sequelize.QueryOptions;sequelize.QueryInterface;Member[bulkUpdate,delete,insert].Argument[3]", //
        "sequelize.QueryOptions;sequelize.QueryInterface;Member[commitTransaction,deferConstraints,dropTable,rawSelect,rollbackTransaction,showIndex,startTransaction].Argument[1]", //
        "sequelize.QueryOptions;sequelize.QueryInterface;Member[createFunction].Argument[5]", //
        "sequelize.QueryOptions;sequelize.QueryInterface;Member[dropAllEnums,dropAllTables,showAllSchemas,showAllTables].Argument[0]", //
        "sequelize.QueryOptions;sequelize.QueryInterface;Member[increment,update,upsert].Argument[4]", //
        "sequelize.QueryOptions;sequelize.Sequelize;Member[authenticate,validate].Argument[0]", //
        "sequelize.QueryOptions;sequelize.Sequelize;Member[query].Argument[1]", //
        "sequelize.Sequelize;sequelize-typescript.Sequelize;", //
        "sequelize.Sequelize;sequelize.Hooks;Member[afterInit].Argument[1].Argument[0]", //
        "sequelize.Sequelize;sequelize.Hooks;Member[afterInit].WithArity[1].Argument[0].Argument[0]", //
        "sequelize.Sequelize;sequelize.Instance;Member[sequelize]", //
        "sequelize.Sequelize;sequelize.QueryInterface;Member[sequelize]", //
        "sequelize.Sequelize;sequelize.Sequelize;Member[import].Argument[1].Argument[0]", //
        "sequelize.Sequelize;sequelize.SequelizeStatic;Instance", //
        "sequelize.Sequelize;sequelize.SequelizeStatic;Member[useCLS].ReturnValue", //
        "sequelize.SequelizeStatic;sequelize-typescript.Sequelize;", //
        "sequelize.SequelizeStatic;sequelize.Sequelize;Member[Sequelize]", //
        "sequelize.SequelizeStatic;sequelize.SequelizeStatic;Member[Sequelize,default]", //
        "sequelize.SequelizeStatic;sequelize;", //
        "sequelize.SequelizeStaticAndInstance.Model;sequelize-typescript.Model;", //
        "sequelize.SequelizeStaticAndInstance;sequelize.Sequelize;", //
        "sequelize.SequelizeStaticAndInstance;sequelize.SequelizeStatic;", //
        "sequelize.ThroughOptions;sequelize.AssociationOptionsBelongsToMany;Member[through]", //
        "sequelize.Utils;sequelize.SequelizeStaticAndInstance;Member[Utils]", //
      ]
  }
}

private class Summaries extends ModelInput::SummaryModelCsv {
  override predicate row(string row) {
    row =
      [
        "sequelize-typescript.Model;;;Member[reload].ReturnValue.Awaited;type", //
        "sequelize.Instance;;;Member[decrement,increment,reload,save,update,updateAttributes].ReturnValue.Awaited;type", //
        "sequelize.Instance;;;Member[set,setAttributes].ReturnValue;type", //
        "sequelize.Model;;;Member[schema,scope,unscoped].ReturnValue;type", //
        "sequelize.Model;;;Member[sync].ReturnValue.Awaited;type", //
      ]
  }
}

private class TypeVariables extends ModelInput::TypeVariableModelCsv {
  override predicate row(string row) {
    row =
      [
        "sequelize-typescript.ModelStatic.0;Instance", //
        "sequelize-typescript.Repository.0;Instance", //
      ]
  }
}
