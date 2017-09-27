.class public Lmf/org/apache/xerces/dom/DOMConfigurationImpl;
.super Lmf/org/apache/xerces/util/ParserConfigurationSettings;
.source "DOMConfigurationImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
.implements Lmf/org/w3c/dom/DOMConfiguration;


# static fields
.field protected static final BALANCE_SYNTAX_TREES:Ljava/lang/String; = "http://apache.org/xml/features/validation/balance-syntax-trees"

.field protected static final CDATA:S = 0x8s

.field protected static final COMMENTS:S = 0x20s

.field protected static final DISALLOW_DOCTYPE_DECL_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field protected static final DTD_VALIDATOR_FACTORY_PROPERTY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DTD_VALIDATOR_PROPERTY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final DTNORMALIZATION:S = 0x2s

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final ENTITIES:S = 0x4s

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final GRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final INFOSET_FALSE_PARAMS:S = 0xes

.field protected static final INFOSET_MASK:S = 0x32fs

.field protected static final INFOSET_TRUE_PARAMS:S = 0x321s

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final NAMESPACES:S = 0x1s

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final NSDECL:S = 0x200s

.field protected static final PSVI:S = 0x80s

.field protected static final SCHEMA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final SEND_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SPLITCDATA:S = 0x10s

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field protected static final VALIDATE:S = 0x40s

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

.field protected static final WELLFORMED:S = 0x100s

.field protected static final XERCES_NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final XERCES_VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final XML11_DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "mf.org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

.field protected static final XML_STRING:Ljava/lang/String; = "http://xml.org/sax/properties/xml-string"


# instance fields
.field protected fComponents:Ljava/util/ArrayList;

.field protected fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected final fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fLocale:Ljava/util/Locale;

.field private fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

.field private fSchemaLocation:Ljava/lang/String;

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field protected fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected features:S


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, v0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 268
    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 277
    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 288
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;-><init>(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 211
    iput-short v4, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    .line 245
    new-instance v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    .line 258
    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fSchemaLocation:Ljava/lang/String;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fRecognizedFeatures:Ljava/util/ArrayList;

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fRecognizedProperties:Ljava/util/ArrayList;

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fFeatures:Ljava/util/HashMap;

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fProperties:Ljava/util/HashMap;

    const/16 v0, 0x12

    .line 299
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "http://xml.org/sax/features/validation"

    .line 300
    aput-object v2, v0, v4

    const-string/jumbo v2, "http://xml.org/sax/features/namespaces"

    .line 301
    aput-object v2, v0, v5

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema"

    .line 302
    aput-object v2, v0, v6

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema-full-checking"

    .line 303
    aput-object v2, v0, v7

    const/4 v2, 0x4

    const-string/jumbo v3, "http://apache.org/xml/features/validation/dynamic"

    .line 304
    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "http://apache.org/xml/features/validation/schema/normalized-value"

    .line 305
    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "http://apache.org/xml/features/validation/schema/element-default"

    .line 306
    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "http://apache.org/xml/features/validation/schema/augment-psvi"

    .line 307
    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "http://apache.org/xml/features/generate-synthetic-annotations"

    .line 308
    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "http://apache.org/xml/features/validate-annotations"

    .line 309
    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "http://apache.org/xml/features/honour-all-schemaLocations"

    .line 310
    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    .line 311
    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "http://apache.org/xml/features/disallow-doctype-decl"

    .line 312
    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "http://apache.org/xml/features/validation/balance-syntax-trees"

    .line 313
    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    .line 314
    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "http://apache.org/xml/features/internal/parser-settings"

    .line 315
    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "http://apache.org/xml/features/namespace-growth"

    .line 316
    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "http://apache.org/xml/features/internal/tolerate-duplicates"

    .line 317
    aput-object v3, v0, v2

    .line 319
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->addRecognizedFeatures([Ljava/lang/String;)V

    const-string/jumbo v0, "http://xml.org/sax/features/validation"

    .line 322
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema"

    .line 323
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema-full-checking"

    .line 324
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/dynamic"

    .line 325
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema/normalized-value"

    .line 326
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema/element-default"

    .line 327
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://xml.org/sax/features/namespaces"

    .line 328
    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema/augment-psvi"

    .line 329
    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/generate-synthetic-annotations"

    .line 330
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validate-annotations"

    .line 331
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/honour-all-schemaLocations"

    .line 332
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    .line 333
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/disallow-doctype-decl"

    .line 334
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/balance-syntax-trees"

    .line 335
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    .line 336
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/internal/parser-settings"

    .line 337
    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/namespace-growth"

    .line 338
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/internal/tolerate-duplicates"

    .line 339
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const/16 v0, 0x10

    .line 342
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "http://xml.org/sax/properties/xml-string"

    .line 343
    aput-object v2, v0, v4

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/symbol-table"

    .line 344
    aput-object v2, v0, v5

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/error-handler"

    .line 345
    aput-object v2, v0, v6

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 346
    aput-object v2, v0, v7

    const/4 v2, 0x4

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/error-reporter"

    .line 347
    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/entity-manager"

    .line 348
    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validation-manager"

    .line 349
    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 350
    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "http://apache.org/xml/properties/security-manager"

    .line 351
    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 352
    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 353
    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "http://apache.org/xml/properties/schema/external-schemaLocation"

    .line 354
    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    .line 355
    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validator/dtd"

    .line 356
    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    .line 357
    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    .line 358
    aput-object v3, v0, v2

    .line 360
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->addRecognizedProperties([Ljava/lang/String;)V

    .line 363
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    .line 364
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    .line 365
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    .line 366
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    .line 367
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    .line 368
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    .line 369
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit16 v0, v0, 0x200

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    .line 371
    if-eqz p1, :cond_1

    .line 374
    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/symbol-table"

    .line 378
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 379
    new-instance v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/error-reporter"

    .line 380
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 383
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    const-string/jumbo v0, "mf.org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

    .line 384
    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 385
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    .line 386
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/entity-manager"

    .line 389
    invoke-virtual {p0, v2, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 392
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->createValidationManager()Lmf/org/apache/xerces/impl/validation/ValidationManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/validation-manager"

    .line 393
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 406
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 424
    :cond_0
    :goto_2
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 432
    :goto_3
    return-void

    .line 372
    :cond_1
    new-instance p1, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    goto :goto_0

    .line 398
    :cond_2
    new-instance v0, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    .line 399
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v3, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 400
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v2, v3, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    goto :goto_1

    :cond_3
    :try_start_1
    const-string/jumbo v0, "mf.org.apache.xerces.impl.xs.XSMessageFormatter"

    .line 412
    invoke-static {}, Lmf/org/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 411
    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lmf/org/apache/xerces/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v0

    .line 410
    check-cast v0, Lmf/org/apache/xerces/util/MessageFormatter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 416
    :goto_4
    if-eqz v0, :cond_0

    .line 417
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    goto :goto_2

    .line 413
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_4

    .line 425
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private static newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;
    .locals 4

    .prologue
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "FEATURE_NOT_FOUND"

    const/4 v2, 0x1

    .line 1210
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 1207
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1211
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v1
.end method

.method private static newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;
    .locals 4

    .prologue
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "FEATURE_NOT_SUPPORTED"

    const/4 v2, 0x1

    .line 1201
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 1198
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1202
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v1
.end method

.method private static newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;
    .locals 4

    .prologue
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "TYPE_MISMATCH_ERR"

    const/4 v2, 0x1

    .line 1219
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 1216
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1220
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x11

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1167
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v0

    .line 1171
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 1174
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v0

    .line 1175
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->addRecognizedProperties([Ljava/lang/String;)V

    .line 1177
    return-void

    .line 1165
    :cond_0
    return-void
.end method

.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 969
    if-eqz p2, :cond_0

    .line 978
    instance-of v2, p2, Ljava/lang/Boolean;

    if-nez v2, :cond_1

    const-string/jumbo v2, "error-handler"

    .line 1012
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "resource-resolver"

    .line 1015
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "schema-location"

    .line 1018
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string/jumbo v2, "schema-type"

    .line 1021
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 1027
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/symbol-table"

    .line 1030
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 1034
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string/jumbo v2, "http://apache.org/xml/properties/security-manager"

    .line 1037
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1042
    return v1

    .line 976
    :cond_0
    return v0

    :cond_1
    const-string/jumbo v2, "comments"

    .line 982
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 993
    :cond_2
    return v0

    :cond_3
    const-string/jumbo v2, "datatype-normalization"

    .line 983
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "cdata-sections"

    .line 984
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "entities"

    .line 985
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "split-cdata-sections"

    .line 986
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "namespaces"

    .line 987
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "validate"

    .line 988
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "well-formed"

    .line 989
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "infoset"

    .line 990
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "namespace-declarations"

    .line 991
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "normalize-characters"

    .line 996
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1001
    :cond_4
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_0
    return v0

    :cond_5
    const-string/jumbo v2, "canonical-form"

    .line 997
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "validate-if-schema"

    .line 998
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "check-character-normalization"

    .line 999
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "element-content-whitespace"

    .line 1003
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1006
    :cond_6
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :goto_1
    return v1

    :cond_7
    move v0, v1

    .line 1001
    goto :goto_0

    :cond_8
    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema/augment-psvi"

    .line 1004
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1009
    return v1

    :cond_9
    move v1, v0

    .line 1006
    goto :goto_1

    .line 1013
    :cond_a
    instance-of v2, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v2, :cond_b

    :goto_2
    return v1

    :cond_b
    move v1, v0

    goto :goto_2

    .line 1016
    :cond_c
    instance-of v2, p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-nez v2, :cond_d

    :goto_3
    return v1

    :cond_d
    move v1, v0

    goto :goto_3

    .line 1019
    :cond_e
    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_f

    :goto_4
    return v1

    :cond_f
    move v1, v0

    goto :goto_4

    .line 1024
    :cond_10
    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_12

    :goto_5
    move v0, v1

    :cond_11
    return v0

    .line 1025
    :cond_12
    sget-object v2, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    sget-object v2, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_5

    .line 1028
    :cond_13
    instance-of v2, p2, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-nez v2, :cond_14

    :goto_6
    return v1

    :cond_14
    move v1, v0

    goto :goto_6

    .line 1032
    :cond_15
    instance-of v2, p2, Lmf/org/apache/xerces/util/SymbolTable;

    if-nez v2, :cond_16

    :goto_7
    return v1

    :cond_16
    move v1, v0

    goto :goto_7

    .line 1035
    :cond_17
    instance-of v2, p2, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-nez v2, :cond_18

    :goto_8
    return v1

    :cond_18
    move v1, v0

    goto :goto_8

    .line 1038
    :cond_19
    instance-of v2, p2, Lmf/org/apache/xerces/util/SecurityManager;

    if-nez v2, :cond_1a

    :goto_9
    return v1

    :cond_1a
    move v1, v0

    goto :goto_9
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "http://xml.org/sax/properties/"

    .line 1132
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1156
    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    .line 1158
    return-void

    .line 1133
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "http://xml.org/sax/properties/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const-string/jumbo v1, "xml-string"

    .line 1145
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "xml-string"

    .line 1146
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method protected createValidationManager()Lmf/org/apache/xerces/impl/validation/ValidationManager;
    .locals 1

    .prologue
    .line 1180
    new-instance v0, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;-><init>()V

    return-object v0
.end method

.method public getDTDContentModelHandler()Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 509
    return-object v0
.end method

.method public getDTDHandler()Lmf/org/apache/xerces/xni/XMLDTDHandler;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 494
    return-object v0
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "http://apache.org/xml/features/internal/parser-settings"

    .line 583
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 584
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "comments"

    .line 874
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "namespaces"

    .line 877
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "datatype-normalization"

    .line 880
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "cdata-sections"

    .line 884
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "entities"

    .line 887
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "split-cdata-sections"

    .line 890
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "validate"

    .line 893
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "well-formed"

    .line 896
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "namespace-declarations"

    .line 899
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "infoset"

    .line 902
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "normalize-characters"

    .line 905
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 910
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 875
    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 878
    :cond_3
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object v0

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 882
    :cond_5
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object v0

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 885
    :cond_7
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object v0

    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    .line 888
    :cond_9
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_a

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object v0

    :cond_a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    .line 891
    :cond_b
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_c

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    return-object v0

    :cond_c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    .line 894
    :cond_d
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_e

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6
    return-object v0

    :cond_e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    .line 897
    :cond_f
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_10

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    return-object v0

    :cond_10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    .line 900
    :cond_11
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_12

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_8
    return-object v0

    :cond_12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_8

    .line 903
    :cond_13
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x32f

    const/16 v1, 0x321

    if-eq v0, v1, :cond_14

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_9
    return-object v0

    :cond_14
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_15
    const-string/jumbo v0, "canonical-form"

    .line 906
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "validate-if-schema"

    .line 907
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "check-character-normalization"

    .line 908
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema/augment-psvi"

    .line 912
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "psvi"

    .line 915
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string/jumbo v0, "element-content-whitespace"

    .line 918
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "error-handler"

    .line 921
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "resource-resolver"

    .line 924
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "schema-type"

    .line 931
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "schema-location"

    .line 934
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 937
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/symbol-table"

    .line 940
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 943
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string/jumbo v0, "http://apache.org/xml/properties/security-manager"

    .line 946
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 950
    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v0

    throw v0

    .line 913
    :cond_16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 916
    :cond_17
    iget-short v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_18

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_a
    return-object v0

    :cond_18
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    .line 919
    :cond_19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 922
    :cond_1a
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v0

    return-object v0

    .line 925
    :cond_1b
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v0

    .line 926
    if-nez v0, :cond_1d

    .line 929
    :cond_1c
    return-object v2

    .line 926
    :cond_1d
    instance-of v1, v0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    if-eqz v1, :cond_1c

    .line 927
    check-cast v0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->getEntityResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;

    move-result-object v0

    return-object v0

    :cond_1e
    const-string/jumbo v0, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 932
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 935
    :cond_1f
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fSchemaLocation:Ljava/lang/String;

    return-object v0

    .line 938
    :cond_20
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v0

    return-object v0

    :cond_21
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/symbol-table"

    .line 941
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_22
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 944
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_23
    const-string/jumbo v0, "http://apache.org/xml/properties/security-manager"

    .line 947
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames()Lmf/org/w3c/dom/DOMStringList;
    .locals 2

    .prologue
    .line 1056
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    if-eqz v0, :cond_0

    .line 1096
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    return-object v0

    .line 1057
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "comments"

    .line 1062
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "datatype-normalization"

    .line 1063
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "cdata-sections"

    .line 1064
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "entities"

    .line 1065
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "split-cdata-sections"

    .line 1066
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "namespaces"

    .line 1067
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "validate"

    .line 1068
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "infoset"

    .line 1070
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "normalize-characters"

    .line 1071
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "canonical-form"

    .line 1072
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "validate-if-schema"

    .line 1073
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "check-character-normalization"

    .line 1074
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "well-formed"

    .line 1075
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "namespace-declarations"

    .line 1077
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "element-content-whitespace"

    .line 1078
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "error-handler"

    .line 1080
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "schema-type"

    .line 1081
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "schema-location"

    .line 1082
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "resource-resolver"

    .line 1083
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 1086
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 1087
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/properties/security-manager"

    .line 1088
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    .line 1089
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/augment-psvi"

    .line 1090
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    new-instance v1, Lmf/org/apache/xerces/dom/DOMStringListImpl;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/dom/DOMStringListImpl;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    goto/16 :goto_0
.end method

.method public parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    return-void
.end method

.method protected reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1108
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-nez v0, :cond_0

    .line 1111
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    .line 1112
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1113
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 1114
    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 1112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1109
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    goto :goto_0

    .line 1117
    :cond_1
    return-void
.end method

.method public setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method public setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method protected final setDTDValidatorFactory(Ljava/lang/String;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "1.1"

    .line 1184
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1190
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-ne v0, v1, :cond_2

    .line 1194
    :cond_0
    :goto_0
    return-void

    .line 1185
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v0, v1, :cond_0

    .line 1186
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    .line 1187
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1191
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    .line 1192
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .line 476
    return-void
.end method

.method public setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    return-void
.end method

.method public setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
    .locals 2

    .prologue
    .line 553
    if-nez p1, :cond_0

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    .line 608
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 633
    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fLocale:Ljava/util/Locale;

    .line 634
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    .line 636
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 652
    instance-of v1, p2, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    move v1, v2

    .line 734
    :goto_0
    if-nez v1, :cond_20

    :cond_0
    const-string/jumbo v1, "error-handler"

    .line 737
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string/jumbo v1, "resource-resolver"

    .line 746
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string/jumbo v1, "schema-location"

    .line 757
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string/jumbo v1, "schema-type"

    .line 794
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 820
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    .line 831
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 840
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string/jumbo v1, "http://apache.org/xml/properties/security-manager"

    .line 848
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 859
    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    :cond_1
    move-object v1, p2

    .line 653
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string/jumbo v1, "comments"

    .line 655
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "datatype-normalization"

    .line 658
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "namespaces"

    .line 666
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "cdata-sections"

    .line 669
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "entities"

    .line 672
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string/jumbo v1, "split-cdata-sections"

    .line 675
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string/jumbo v1, "validate"

    .line 678
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "well-formed"

    .line 681
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string/jumbo v1, "namespace-declarations"

    .line 684
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string/jumbo v1, "infoset"

    .line 687
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string/jumbo v1, "normalize-characters"

    .line 695
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 700
    :cond_2
    if-nez v4, :cond_19

    move v1, v2

    goto/16 :goto_0

    .line 656
    :cond_3
    if-nez v4, :cond_4

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, -0x21

    :goto_1
    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v1, v2

    .line 657
    goto/16 :goto_0

    .line 656
    :cond_4
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v1, v1, 0x20

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/normalized-value"

    .line 659
    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    .line 661
    if-nez v4, :cond_6

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, -0x3

    :goto_2
    int-to-short v1, v1

    .line 660
    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    .line 662
    if-nez v4, :cond_7

    move v1, v2

    goto/16 :goto_0

    .line 661
    :cond_6
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 663
    :cond_7
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v1, v1, 0x40

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v1, v2

    .line 665
    goto/16 :goto_0

    .line 667
    :cond_8
    if-nez v4, :cond_9

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, -0x2

    :goto_3
    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v1, v2

    .line 668
    goto/16 :goto_0

    .line 667
    :cond_9
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 670
    :cond_a
    if-nez v4, :cond_b

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, -0x9

    :goto_4
    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v1, v2

    .line 671
    goto/16 :goto_0

    .line 670
    :cond_b
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v1, v1, 0x8

    goto :goto_4

    .line 673
    :cond_c
    if-nez v4, :cond_d

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, -0x5

    :goto_5
    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v1, v2

    .line 674
    goto/16 :goto_0

    .line 673
    :cond_d
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v1, v1, 0x4

    goto :goto_5

    .line 676
    :cond_e
    if-nez v4, :cond_f

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, -0x11

    :goto_6
    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v1, v2

    .line 677
    goto/16 :goto_0

    .line 676
    :cond_f
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v1, v1, 0x10

    goto :goto_6

    .line 679
    :cond_10
    if-nez v4, :cond_11

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, -0x41

    :goto_7
    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v1, v2

    .line 680
    goto/16 :goto_0

    .line 679
    :cond_11
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit8 v1, v1, 0x40

    goto :goto_7

    .line 682
    :cond_12
    if-nez v4, :cond_13

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v1, v1, -0x101

    :goto_8
    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v1, v2

    .line 683
    goto/16 :goto_0

    .line 682
    :cond_13
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit16 v1, v1, 0x100

    goto :goto_8

    .line 685
    :cond_14
    if-nez v4, :cond_15

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v1, v1, -0x201

    :goto_9
    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v1, v2

    .line 686
    goto/16 :goto_0

    .line 685
    :cond_15
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit16 v1, v1, 0x200

    goto :goto_9

    .line 689
    :cond_16
    if-nez v4, :cond_17

    move v1, v2

    goto/16 :goto_0

    .line 690
    :cond_17
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit16 v1, v1, 0x321

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    .line 691
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, -0xf

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/normalized-value"

    .line 692
    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move v1, v2

    .line 694
    goto/16 :goto_0

    :cond_18
    const-string/jumbo v1, "canonical-form"

    .line 696
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "validate-if-schema"

    .line 697
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "check-character-normalization"

    .line 698
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "element-content-whitespace"

    .line 704
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/augment-psvi"

    .line 709
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string/jumbo v1, "psvi"

    .line 717
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    move v1, v3

    .line 721
    goto/16 :goto_0

    .line 701
    :cond_19
    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    .line 705
    :cond_1a
    if-eqz v4, :cond_1b

    move v1, v2

    goto/16 :goto_0

    .line 706
    :cond_1b
    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    .line 713
    :cond_1c
    if-eqz v4, :cond_1d

    move v1, v2

    goto/16 :goto_0

    .line 714
    :cond_1d
    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    .line 718
    :cond_1e
    if-nez v4, :cond_1f

    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v1, v1, -0x81

    :goto_a
    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v1, v2

    .line 719
    goto/16 :goto_0

    .line 718
    :cond_1f
    iget-short v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    or-int/lit16 v1, v1, 0x80

    goto :goto_a

    .line 734
    :cond_20
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 862
    :cond_21
    :goto_b
    return-void

    .line 738
    :cond_22
    instance-of v1, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_24

    .line 739
    :cond_23
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    check-cast p2, Lmf/org/w3c/dom/DOMErrorHandler;

    invoke-virtual {v1, p2}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->setErrorHandler(Lmf/org/w3c/dom/DOMErrorHandler;)V

    .line 740
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V

    goto :goto_b

    .line 738
    :cond_24
    if-eqz p2, :cond_23

    .line 743
    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    .line 747
    :cond_25
    instance-of v1, p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-eqz v1, :cond_27

    .line 749
    :cond_26
    :try_start_0
    new-instance v1, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    check-cast p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    invoke-direct {v1, p2}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;-><init>(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    .line 750
    :catch_0
    move-exception v1

    goto :goto_b

    .line 747
    :cond_27
    if-eqz p2, :cond_26

    .line 754
    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    .line 758
    :cond_28
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 760
    :cond_29
    if-eqz p2, :cond_2b

    .line 767
    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fSchemaLocation:Ljava/lang/String;

    .line 770
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fSchemaLocation:Ljava/lang/String;

    const-string/jumbo v3, " \n\t\r"

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_2c

    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const/4 v2, 0x1

    .line 784
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    check-cast p2, Ljava/lang/String;

    aput-object p2, v2, v3

    .line 782
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    .line 787
    :catch_1
    move-exception v1

    goto :goto_b

    .line 758
    :cond_2a
    if-eqz p2, :cond_29

    .line 791
    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    :cond_2b
    const/4 v1, 0x0

    .line 761
    :try_start_2
    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fSchemaLocation:Ljava/lang/String;

    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const/4 v2, 0x0

    .line 762
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b

    .line 772
    :cond_2c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 773
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    :goto_c
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 775
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_2d
    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 779
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 777
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_b

    .line 795
    :cond_2e
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_30

    .line 797
    :cond_2f
    if-eqz p2, :cond_31

    .line 802
    :try_start_3
    sget-object v1, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 808
    sget-object v1, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 811
    sget-object v2, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    .line 810
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_b

    .line 813
    :catch_2
    move-exception v1

    goto/16 :goto_b

    .line 795
    :cond_30
    if-eqz p2, :cond_2f

    .line 817
    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    :cond_31
    :try_start_4
    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const/4 v2, 0x0

    .line 798
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_32
    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 806
    sget-object v2, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    .line 804
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_b

    .line 821
    :cond_33
    instance-of v1, p2, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-eqz v1, :cond_35

    .line 823
    :cond_34
    :try_start_5
    check-cast p2, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_b

    .line 824
    :catch_3
    move-exception v1

    goto/16 :goto_b

    .line 821
    :cond_35
    if-eqz p2, :cond_34

    .line 828
    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    .line 833
    :cond_36
    instance-of v1, p2, Lmf/org/apache/xerces/util/SymbolTable;

    if-nez v1, :cond_37

    .line 837
    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    :cond_37
    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    .line 834
    invoke-virtual {p0, v1, p2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 841
    :cond_38
    instance-of v1, p2, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v1, :cond_3a

    :cond_39
    const-string/jumbo v1, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 842
    invoke-virtual {p0, v1, p2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 841
    :cond_3a
    if-eqz p2, :cond_39

    .line 845
    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    .line 849
    :cond_3b
    instance-of v1, p2, Lmf/org/apache/xerces/util/SecurityManager;

    if-eqz v1, :cond_3d

    :cond_3c
    const-string/jumbo v1, "http://apache.org/xml/properties/security-manager"

    .line 850
    invoke-virtual {p0, v1, p2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 849
    :cond_3d
    if-eqz p2, :cond_3c

    .line 853
    invoke-static {p1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 620
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 622
    return-void
.end method
