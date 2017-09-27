.class public Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
.super Ljava/lang/Object;
.source "XMLSchemaValidator.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/xni/parser/XMLDocumentFilter;
.implements Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;
.implements Lmf/org/apache/xerces/impl/RevalidationHandler;
.implements Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field private static final BUFFER_SIZE:I = 0x14

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field private static final DEBUG:Z = false

.field private static final DEBUG_NORMALIZATION:Z = false

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field private static final EMPTY_TABLE:Ljava/util/Hashtable;

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field public static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final IDENTITY_CONSTRAINT_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/identity-constraint-checking"

.field protected static final ID_CONSTRAINT_NUM:I = 0x1

.field protected static final ID_IDREF_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/id-idref-checking"

.field protected static final IGNORE_XSI_TYPE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

.field static final INC_STACK_SIZE:I = 0x8

.field static final INITIAL_STACK_SIZE:I = 0x8

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final ROOT_ELEMENT_DECL:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-element-declaration"

.field protected static final ROOT_TYPE_DEF:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-type-definition"

.field protected static final SCHEMA_AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final STANDARD_URI_CONFORMANT_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field public static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final UNPARSED_ENTITY_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/unparsed-entity-checking"

.field protected static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field public static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field static final XSI_NIL:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

.field static final XSI_NONAMESPACESCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

.field static final XSI_SCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

.field static final XSI_TYPE:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;


# instance fields
.field private fAppendBuffer:Z

.field protected fAugPSVI:Z

.field protected final fAugmentations:Lmf/org/apache/xerces/util/AugmentationsImpl;

.field private final fBuffer:Ljava/lang/StringBuffer;

.field private final fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

.field private fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

.field private fCMStateStack:[[I

.field private fCurrCMState:[I

.field private fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

.field private fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field protected fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

.field private fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field protected fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

.field protected fDoValidation:Z

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fDynamicValidation:Z

.field private fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private fElementDepth:I

.field private final fEmptyXMLStr:Lmf/org/apache/xerces/xni/XMLString;

.field protected fEntityRef:Z

.field protected fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field protected final fExpandedLocationPairs:Ljava/util/Hashtable;

.field protected fExternalNoNamespaceSchema:Ljava/lang/String;

.field protected fExternalSchemas:Ljava/lang/String;

.field private fFirstChunk:Z

.field protected fFullChecking:Z

.field private final fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field private fIDCChecking:Z

.field protected fIdConstraint:Z

.field private fIgnoreXSITypeDepth:I

.field protected fInCDATA:Z

.field protected fJaxpSchemaSource:Ljava/lang/Object;

.field protected final fLocationPairs:Ljava/util/Hashtable;

.field private fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

.field private fNFullValidationDepth:I

.field private fNNoneValidationDepth:I

.field protected fNamespaceGrowth:Z

.field private fNil:Z

.field private fNilStack:[Z

.field protected fNormalizeData:Z

.field private final fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

.field private fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

.field private fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

.field private final fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field private fRootElementDeclQName:Ljavax/xml/namespace/QName;

.field private fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field private fRootTypeQName:Ljavax/xml/namespace/QName;

.field private fSawCharacters:Z

.field private fSawText:Z

.field private fSawTextStack:[Z

.field protected fSchemaDynamicValidation:Z

.field protected fSchemaElementDefault:Z

.field private final fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

.field private fSchemaType:Ljava/lang/String;

.field private fSkipValidationDepth:I

.field private fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

.field private fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

.field private fStrictAssess:Z

.field private fStrictAssessStack:[Z

.field private fStringContent:[Z

.field private fSubElement:Z

.field private fSubElementStack:[Z

.field private final fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final fTempQName:Lmf/org/apache/xerces/xni/QName;

.field private fTrailing:Z

.field private fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field private fUnionType:Z

.field protected final fUnparsedLocations:Ljava/util/ArrayList;

.field protected fUseGrammarPoolOnly:Z

.field private fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field private fValidationRoot:Ljava/lang/String;

.field protected fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

.field protected fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

.field private fWhiteSpace:S

.field protected final fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

.field protected final fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

.field private final nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xb

    const/16 v0, 0x11

    .line 261
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    .line 262
    aput-object v1, v0, v4

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema"

    .line 263
    aput-object v1, v0, v5

    const-string/jumbo v1, "http://apache.org/xml/features/validation/dynamic"

    .line 264
    aput-object v1, v0, v6

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema-full-checking"

    .line 265
    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "http://apache.org/xml/features/allow-java-encodings"

    .line 266
    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "http://apache.org/xml/features/continue-after-fatal-error"

    .line 267
    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "http://apache.org/xml/features/standard-uri-conformant"

    .line 268
    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "http://apache.org/xml/features/generate-synthetic-annotations"

    .line 269
    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "http://apache.org/xml/features/validate-annotations"

    .line 270
    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "http://apache.org/xml/features/honour-all-schemaLocations"

    .line 271
    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    .line 272
    aput-object v2, v0, v1

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    .line 273
    aput-object v1, v0, v3

    const/16 v1, 0xc

    const-string/jumbo v2, "http://apache.org/xml/features/validation/id-idref-checking"

    .line 274
    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "http://apache.org/xml/features/validation/identity-constraint-checking"

    .line 275
    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    .line 276
    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "http://apache.org/xml/features/namespace-growth"

    .line 277
    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "http://apache.org/xml/features/internal/tolerate-duplicates"

    .line 278
    aput-object v2, v0, v1

    .line 260
    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/16 v0, 0x11

    .line 283
    new-array v0, v0, [Ljava/lang/Boolean;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 314
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    .line 315
    aput-object v1, v0, v4

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-reporter"

    .line 316
    aput-object v1, v0, v5

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 317
    aput-object v1, v0, v6

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/validation-manager"

    .line 318
    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "http://apache.org/xml/properties/schema/external-schemaLocation"

    .line 319
    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    .line 320
    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 321
    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 322
    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    .line 323
    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    .line 324
    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    .line 325
    aput-object v2, v0, v1

    .line 313
    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 330
    new-array v0, v3, [Ljava/lang/Object;

    .line 329
    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    .line 338
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_TYPE:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 339
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_NIL:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 340
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_SCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 341
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_NONAMESPACESCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 344
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->EMPTY_TABLE:Ljava/util/Hashtable;

    .line 1156
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v1, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    new-instance v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    .line 358
    new-instance v0, Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugmentations:Lmf/org/apache/xerces/util/AugmentationsImpl;

    .line 364
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    .line 365
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    .line 366
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    .line 367
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    .line 368
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    .line 369
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    .line 370
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    .line 371
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    .line 372
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    .line 375
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    .line 378
    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;

    .line 381
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    .line 382
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    .line 505
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;-><init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    .line 511
    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 512
    new-instance v0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    .line 516
    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    .line 517
    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    .line 520
    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;

    .line 523
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 524
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    .line 525
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExpandedLocationPairs:Ljava/util/Hashtable;

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnparsedLocations:Ljava/util/ArrayList;

    .line 1154
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0, v7, v5, v1}, Lmf/org/apache/xerces/xni/XMLString;-><init>([CII)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEmptyXMLStr:Lmf/org/apache/xerces/xni/XMLString;

    .line 1157
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    .line 1158
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    .line 1160
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTrailing:Z

    .line 1161
    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    .line 1162
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    .line 1165
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    .line 1166
    new-instance v0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;-><init>(Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    .line 1172
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string/jumbo v1, "QName"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 1174
    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    .line 1177
    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;-><init>(Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    .line 1181
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    .line 1182
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 1183
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    .line 1184
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    .line 1185
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    .line 1181
    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    .line 1209
    new-array v0, v6, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    .line 1215
    new-array v0, v6, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1221
    new-array v0, v6, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    .line 1227
    new-array v0, v6, [Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .line 1233
    new-array v0, v6, [Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 1239
    new-array v0, v6, [Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 1245
    new-array v0, v6, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    .line 1248
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    .line 1251
    new-array v0, v6, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    .line 1254
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    .line 1257
    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    .line 1260
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    .line 1263
    new-array v0, v6, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    .line 1266
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    .line 1269
    new-array v0, v6, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    .line 1272
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    .line 1275
    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    .line 1276
    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 1279
    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    .line 1280
    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1287
    new-instance v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 1291
    new-instance v0, Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    .line 1295
    new-instance v0, Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

    .line 1313
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    .line 1316
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;-><init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    .line 1324
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setExtraChecking(Z)V

    .line 1325
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setFacetChecking(Z)V

    .line 1327
    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)I
    .locals 1

    .prologue
    .line 1203
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    return v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 0

    .prologue
    .line 1641
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->activateSelectorFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    return-void
.end method

.method private activateSelectorFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 2

    .prologue
    .line 1642
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getSelector()Lmf/org/apache/xerces/impl/xs/identity/Selector;

    move-result-object v0

    .line 1644
    if-eqz v0, :cond_0

    .line 1646
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/identity/Selector;->createMatcher(Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v0

    .line 1647
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->addMatcher(Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;)V

    .line 1648
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->startDocumentFragment()V

    .line 1649
    return-void

    .line 1645
    :cond_0
    return-void
.end method

.method private expectedStr(Ljava/util/Vector;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3580
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3581
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 3582
    :goto_0
    if-ge v0, v2, :cond_1

    .line 3583
    if-gtz v0, :cond_0

    .line 3585
    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3582
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v3, ", "

    .line 3584
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 3587
    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3588
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasSchemaComponent(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;SLmf/org/apache/xerces/xni/QName;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2736
    if-nez p1, :cond_1

    .line 2749
    :cond_0
    :goto_0
    return v2

    .line 2736
    :cond_1
    if-eqz p3, :cond_0

    .line 2737
    iget-object v0, p3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 2738
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2739
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2741
    :pswitch_0
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getElementDeclaration(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSElementDeclaration;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    return v3

    .line 2743
    :pswitch_1
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getAttributeDeclaration(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    return v3

    .line 2745
    :pswitch_2
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTypeDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    return v3

    .line 2739
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private normalizeWhitespace(Ljava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1854
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1857
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    if-nez v0, :cond_2

    .line 1858
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    new-array v2, v3, [C

    iput-object v2, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    .line 1860
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v1, v0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .line 1861
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v1, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    move v2, v1

    move v0, p2

    .line 1863
    :goto_1
    if-ge v2, v3, :cond_4

    .line 1864
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1865
    invoke-static {v4}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1872
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v6, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    int-to-char v4, v4

    aput-char v4, v0, v6

    move v0, v1

    .line 1863
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1857
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v0, v0

    if-lt v0, v3, :cond_0

    goto :goto_0

    .line 1866
    :cond_3
    if-nez v0, :cond_1

    .line 1868
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v5, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    const/16 v4, 0x20

    aput-char v4, v0, v5

    move v0, p2

    .line 1871
    goto :goto_2

    .line 1876
    :cond_4
    if-nez v0, :cond_6

    .line 1881
    :cond_5
    :goto_3
    return-void

    .line 1877
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v0, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-eqz v0, :cond_5

    .line 1879
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v1, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    goto :goto_3
.end method

.method private normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;Z)V
    .locals 11

    .prologue
    const/16 v10, 0x20

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1786
    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int v6, v0, v2

    .line 1789
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    if-nez v0, :cond_2

    .line 1790
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [C

    iput-object v2, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    .line 1793
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v1, v0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .line 1794
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v1, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    .line 1796
    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    move v5, v0

    move v2, v4

    move v3, p2

    move v0, v4

    :goto_1
    if-ge v5, v6, :cond_5

    .line 1797
    iget-object v7, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v7, v7, v5

    .line 1798
    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1809
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v8, v3, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v3, Lmf/org/apache/xerces/xni/XMLString;->length:I

    int-to-char v3, v7

    aput-char v3, v2, v8

    move v2, v1

    move v3, v4

    .line 1796
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1789
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v0, v0

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v2, v2, 0x1

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 1799
    :cond_3
    if-eqz v3, :cond_4

    .line 1804
    :goto_3
    if-nez v2, :cond_1

    move v0, v1

    .line 1808
    goto :goto_2

    .line 1801
    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v8, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    aput-char v10, v3, v8

    move v3, p2

    .line 1802
    goto :goto_3

    .line 1814
    :cond_5
    if-nez v3, :cond_8

    move v3, v4

    .line 1826
    :goto_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v5, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-gt v5, v1, :cond_c

    .line 1843
    :cond_6
    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v1, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v5, v5, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    sub-int/2addr v1, v5

    iput v1, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    .line 1845
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTrailing:Z

    .line 1847
    if-eqz v3, :cond_e

    .line 1848
    :cond_7
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    .line 1849
    :goto_6
    return-void

    .line 1815
    :cond_8
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v3, v3, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-gt v3, v1, :cond_a

    .line 1819
    if-nez v0, :cond_b

    :cond_9
    move v3, v4

    goto :goto_4

    .line 1817
    :cond_a
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v5, v3, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lmf/org/apache/xerces/xni/XMLString;->length:I

    move v3, v1

    .line 1819
    goto :goto_4

    :cond_b
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    if-nez v3, :cond_9

    move v3, v1

    .line 1822
    goto :goto_4

    .line 1827
    :cond_c
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    if-nez v1, :cond_6

    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    const/4 v5, 0x2

    if-ne v1, v5, :cond_6

    .line 1828
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTrailing:Z

    if-nez v1, :cond_d

    .line 1833
    if-eqz v0, :cond_6

    .line 1836
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v4, v0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .line 1837
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aput-char v10, v0, v4

    goto :goto_5

    .line 1831
    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v4, v0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .line 1832
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aput-char v10, v0, v4

    goto :goto_5

    .line 1847
    :cond_e
    if-nez v2, :cond_7

    goto :goto_6
.end method

.method private setLocationHints(Lmf/org/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2753
    array-length v0, p2

    .line 2754
    if-eqz p3, :cond_0

    .line 2759
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setLocationHints(Lmf/org/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lmf/org/apache/xerces/xs/StringList;)V

    .line 2761
    :goto_0
    return-void

    .line 2755
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    .line 2756
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    invoke-static {p2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private setLocationHints(Lmf/org/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lmf/org/apache/xerces/xs/StringList;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2764
    array-length v4, p2

    .line 2765
    new-array v5, v4, [Ljava/lang/String;

    move v2, v3

    move v0, v3

    .line 2768
    :goto_0
    if-ge v2, v4, :cond_1

    .line 2769
    aget-object v1, p2, v2

    invoke-interface {p3, v1}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2768
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 2770
    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-object v6, p2, v2

    aput-object v6, v5, v0

    move v0, v1

    goto :goto_1

    .line 2774
    :cond_1
    if-gtz v0, :cond_2

    .line 2783
    :goto_2
    return-void

    .line 2775
    :cond_2
    if-eq v0, v4, :cond_3

    .line 2779
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    .line 2780
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    invoke-static {v5, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 2776
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-object v5, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public activateField(Lmf/org/apache/xerces/impl/xs/identity/Field;I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
    .locals 2

    .prologue
    .line 1620
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/Field;->getIdentityConstraint()Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object v0

    .line 1621
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/identity/Field;->createMatcher(Lmf/org/apache/xerces/impl/xs/identity/ValueStore;)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v0

    .line 1622
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->addMatcher(Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;)V

    .line 1623
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->startDocumentFragment()V

    .line 1624
    return-object v0
.end method

.method addDefaultAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 11

    .prologue
    .line 3194
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v5

    .line 3195
    invoke-interface {v5}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v6

    const/4 v0, 0x0

    move v4, v0

    .line 3203
    :goto_0
    if-ge v4, v6, :cond_8

    .line 3205
    invoke-interface {v5, v4}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .line 3206
    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 3208
    iget-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    .line 3209
    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 3210
    if-eqz v2, :cond_2

    .line 3215
    :goto_1
    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    invoke-interface {p2, v3, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    .line 3221
    :goto_2
    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v8, 0x1

    if-eq v0, v8, :cond_4

    .line 3228
    :cond_0
    :goto_3
    if-eqz v3, :cond_5

    .line 3203
    :cond_1
    :goto_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 3211
    :cond_2
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v2

    .line 3212
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    .line 3215
    goto :goto_2

    .line 3222
    :cond_4
    if-nez v3, :cond_0

    const-string/jumbo v0, "cvc-complex-type.4"

    const/4 v8, 0x2

    .line 3225
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v10, v8, v9

    .line 3223
    invoke-virtual {p0, v0, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 3228
    :cond_5
    if-eqz v2, :cond_1

    .line 3230
    new-instance v8, Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v0, v2, v3}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    if-nez v1, :cond_6

    const-string/jumbo v0, ""

    move-object v2, v0

    .line 3233
    :goto_5
    instance-of v0, p2, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    if-nez v0, :cond_7

    const-string/jumbo v0, "CDATA"

    .line 3239
    invoke-interface {p2, v8, v0, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3242
    :goto_6
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v2, :cond_1

    .line 3245
    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    .line 3246
    new-instance v2, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;-><init>()V

    const-string/jumbo v3, "ATTRIBUTE_PSVI"

    .line 3247
    invoke-interface {v0, v3, v2}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3249
    iput-object v7, v2, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    .line 3250
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, v2, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 3251
    iget-object v0, v2, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    .line 3252
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v0, v2, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationContext:Ljava/lang/String;

    .line 3253
    const/4 v0, 0x2

    iput-short v0, v2, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidity:S

    .line 3254
    const/4 v0, 0x2

    iput-short v0, v2, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationAttempted:S

    .line 3255
    const/4 v0, 0x1

    iput-boolean v0, v2, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fSpecified:Z

    goto :goto_4

    .line 3231
    :cond_6
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_5

    :cond_7
    move-object v0, p2

    .line 3234
    check-cast v0, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    .line 3235
    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v3

    const-string/jumbo v9, "CDATA"

    .line 3236
    invoke-virtual {v0, v8, v9, v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 3237
    goto :goto_6

    .line 3260
    :cond_8
    return-void
.end method

.method public characterData(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 971
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    .line 978
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-nez v0, :cond_4

    .line 983
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    if-nez v0, :cond_6

    .line 990
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_7

    .line 1005
    :cond_2
    :goto_2
    return v2

    .line 971
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 978
    :cond_4
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    if-eqz v0, :cond_1

    .line 980
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    if-eq v0, v6, :cond_5

    move v0, v1

    :goto_3
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->normalizeWhitespace(Ljava/lang/String;Z)V

    .line 981
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v4, v4, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v5, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v0, v3, v4, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    move v0, v2

    .line 980
    goto :goto_3

    .line 984
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 991
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v3, 0xf

    if-ne v0, v3, :cond_2

    .line 992
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 993
    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v0, v6, :cond_2

    move v0, v1

    .line 995
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 996
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 995
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 998
    :cond_8
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    move v2, v1

    .line 999
    goto :goto_2
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 842
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleCharacters(Lmf/org/apache/xerces/xni/XMLString;)Lmf/org/apache/xerces/xni/XMLString;

    move-result-object v0

    .line 844
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v1, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-nez v1, :cond_3

    .line 853
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, v0, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    .line 845
    :cond_3
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    if-eqz v1, :cond_2

    .line 850
    if-eqz p2, :cond_0

    .line 851
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEmptyXMLStr:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method checkElementMatchesRootElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/xni/QName;)V
    .locals 4

    .prologue
    .line 3564
    iget-object v0, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "cvc-elt.1.b"

    const/4 v1, 0x2

    .line 3566
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3568
    :goto_0
    return-void

    .line 3565
    :cond_1
    iget-object v0, p2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1086
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    .line 1090
    :goto_0
    return-void

    .line 1087
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 771
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    .line 775
    :goto_0
    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public elementDefault(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1010
    return-void
.end method

.method elementLocallyValidComplexType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3443
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 3449
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-eqz v1, :cond_1

    move-object v1, v2

    .line 3514
    :cond_0
    :goto_0
    return-object v1

    .line 3451
    :cond_1
    iget-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-eqz v1, :cond_3

    .line 3456
    :goto_1
    iget-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-eq v1, v8, :cond_6

    .line 3473
    iget-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-eq v1, v9, :cond_a

    move-object v1, v2

    .line 3479
    :goto_2
    iget-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v2, v9, :cond_c

    .line 3486
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    aget v0, v0, v7

    if-ltz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->endContentModel([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3487
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->whatCanGoHere([I)Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->expectedStr(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    .line 3488
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->occurenceInfo([I)[I

    move-result-object v2

    .line 3489
    if-nez v2, :cond_d

    const-string/jumbo v2, "cvc-complex-type.2.4.b"

    .line 3509
    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3452
    :cond_3
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-eqz v1, :cond_5

    :cond_4
    const-string/jumbo v1, "cvc-complex-type.2.1"

    .line 3453
    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 3454
    goto :goto_2

    .line 3452
    :cond_5
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-nez v1, :cond_4

    goto :goto_1

    .line 3457
    :cond_6
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v1, :cond_8

    .line 3459
    :goto_3
    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 3461
    :try_start_0
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-nez v3, :cond_9

    .line 3462
    :cond_7
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setNormalizationRequired(Z)V

    .line 3464
    :goto_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v1, p2, v3, v4}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_2

    :cond_8
    const-string/jumbo v1, "cvc-complex-type.2.2"

    .line 3458
    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 3461
    :cond_9
    :try_start_1
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_7

    goto :goto_4

    .line 3465
    :catch_0
    move-exception v1

    .line 3466
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "cvc-complex-type.2.2"

    .line 3467
    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 3471
    goto/16 :goto_2

    .line 3474
    :cond_a
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    if-nez v1, :cond_b

    move-object v1, v2

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v1, "cvc-complex-type.2.3"

    .line 3475
    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    goto/16 :goto_2

    .line 3480
    :cond_c
    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-eq v0, v10, :cond_2

    goto/16 :goto_0

    .line 3490
    :cond_d
    aget v3, v2, v7

    .line 3491
    aget v4, v2, v9

    .line 3493
    if-lt v4, v3, :cond_e

    const-string/jumbo v2, "cvc-complex-type.2.4.b"

    .line 3505
    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3494
    :cond_e
    sub-int v0, v3, v4

    .line 3495
    if-gt v0, v8, :cond_f

    const-string/jumbo v0, "cvc-complex-type.2.4.i"

    .line 3500
    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v7

    .line 3501
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    aget v2, v2, v10

    invoke-interface {v5, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v9

    .line 3500
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v4, "cvc-complex-type.2.4.j"

    const/4 v5, 0x4

    .line 3496
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v5, v7

    .line 3497
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    aget v2, v2, v10

    invoke-interface {v6, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v9

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    .line 3496
    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method elementLocallyValidType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3407
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_0

    .line 3414
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    .line 3435
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->elementLocallyValidComplexType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3438
    :goto_0
    return-object v0

    .line 3408
    :cond_0
    return-object v1

    .line 3416
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v0, :cond_2

    .line 3419
    :goto_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-eqz v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "cvc-type.3.1.2"

    .line 3417
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3420
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 3422
    :try_start_0
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-nez v2, :cond_5

    .line 3423
    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setNormalizationRequired(Z)V

    .line 3425
    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v0, p2, v2, v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 3422
    :cond_5
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_4

    goto :goto_2

    .line 3426
    :catch_0
    move-exception v0

    .line 3427
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "cvc-type.3.1.3"

    const/4 v2, 0x2

    .line 3430
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    .line 3428
    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 3433
    goto :goto_0
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 809
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    .line 814
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    .line 817
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 821
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v1, :cond_1

    .line 830
    :goto_1
    return-void

    .line 818
    :cond_0
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    goto :goto_0

    .line 822
    :cond_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    if-nez v1, :cond_3

    .line 823
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    .line 822
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-eqz v1, :cond_2

    .line 825
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 826
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 827
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    .line 936
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    .line 940
    :goto_0
    return-void

    .line 937
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 951
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleEndDocument()V

    .line 954
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    .line 957
    :goto_0
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    .line 959
    return-void

    .line 955
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 894
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    .line 895
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    .line 897
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v1, :cond_0

    .line 905
    :goto_0
    return-void

    .line 898
    :cond_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    if-nez v1, :cond_2

    .line 899
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    .line 898
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-eqz v1, :cond_1

    .line 901
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 902
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method final endElementPSVI(Z[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 2524
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v2, :cond_1

    .line 2591
    :cond_0
    :goto_0
    return-object p3

    .line 2525
    :cond_1
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    .line 2528
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v3, v2, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    .line 2529
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v3, v2, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2530
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iput-object v3, v2, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    .line 2531
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v3, v2, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    .line 2532
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    iput-boolean v3, v2, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNil:Z

    .line 2537
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    if-gt v2, v3, :cond_2

    .line 2543
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    if-gt v2, v3, :cond_3

    .line 2548
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-short v0, v2, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    .line 2552
    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-eq v2, v3, :cond_4

    .line 2555
    :goto_2
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-eq v2, v3, :cond_5

    .line 2559
    :goto_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-nez v2, :cond_6

    .line 2561
    :goto_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    .line 2563
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    if-nez v2, :cond_7

    .line 2577
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidity:S

    .line 2581
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->popContext()[Ljava/lang/String;

    .line 2584
    :goto_5
    if-eqz p1, :cond_0

    .line 2586
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object p2, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 2587
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object v5, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    goto :goto_0

    .line 2538
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-short v1, v2, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    goto :goto_1

    .line 2544
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-short v4, v2, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    goto :goto_1

    .line 2553
    :cond_4
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    goto :goto_2

    .line 2556
    :cond_5
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    goto :goto_3

    .line 2560
    :cond_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-boolean v0, v2, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSpecified:Z

    goto :goto_4

    .line 2568
    :cond_7
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->mergeContext()[Ljava/lang/String;

    move-result-object v2

    .line 2571
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object v2, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    .line 2573
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    .line 2574
    if-eqz v2, :cond_8

    .line 2573
    :goto_6
    int-to-short v0, v0

    iput-short v0, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidity:S

    goto :goto_5

    :cond_8
    move v0, v1

    .line 2574
    goto :goto_6
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    .line 1135
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    .line 1139
    :goto_0
    return-void

    .line 1136
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endValueScopeFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V
    .locals 1

    .prologue
    .line 1635
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object v0

    .line 1636
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->endValueScope()V

    .line 1638
    return-void
.end method

.method ensureStackCapacity()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1673
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 1716
    :goto_0
    return-void

    .line 1674
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v0, v0, 0x8

    .line 1675
    new-array v1, v0, [Z

    .line 1676
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1677
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    .line 1679
    new-array v1, v0, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1680
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1681
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1683
    new-array v1, v0, [Z

    .line 1684
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1685
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    .line 1687
    new-array v1, v0, [Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .line 1688
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1689
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .line 1691
    new-array v1, v0, [Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 1692
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1693
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 1695
    new-array v1, v0, [Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 1696
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1697
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 1699
    new-array v1, v0, [Z

    .line 1700
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1701
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    .line 1703
    new-array v1, v0, [Z

    .line 1704
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1705
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    .line 1707
    new-array v1, v0, [Z

    .line 1708
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1709
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    .line 1711
    new-array v0, v0, [[I

    .line 1712
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1713
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    goto :goto_0
.end method

.method findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2646
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 2648
    if-eqz v0, :cond_1

    move-object v6, v0

    .line 2669
    :goto_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-eqz v0, :cond_5

    .line 2731
    :cond_0
    :goto_1
    return-object v6

    .line 2649
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v2, p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    .line 2650
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-nez v2, :cond_2

    move-object v6, v0

    goto :goto_0

    .line 2651
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 2652
    if-nez v0, :cond_3

    move-object v6, v0

    goto :goto_0

    .line 2655
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    invoke-virtual {v2, v0, v3, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZZ)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v6, v0

    goto :goto_0

    .line 2658
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/xml-schema-1"

    const-string/jumbo v5, "GrammarConflict"

    invoke-virtual {v0, v2, v5, v1, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move-object v6, v1

    .line 2663
    goto :goto_0

    .line 2669
    :cond_5
    if-nez v6, :cond_a

    .line 2671
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    .line 2672
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    int-to-short v1, p1

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    .line 2673
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    .line 2674
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-object p3, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fEnclosedElementName:Lmf/org/apache/xerces/xni/QName;

    .line 2675
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-object p4, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fTriggeringComponent:Lmf/org/apache/xerces/xni/QName;

    .line 2676
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-object p5, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    .line 2677
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v0, :cond_b

    .line 2681
    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    .line 2683
    if-eqz p2, :cond_c

    :goto_3
    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2684
    if-nez v0, :cond_d

    .line 2691
    :cond_7
    :goto_4
    if-nez v6, :cond_e

    .line 2693
    :cond_8
    if-nez v6, :cond_f

    move-object v0, v1

    .line 2702
    :goto_5
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 2704
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 2701
    invoke-static {v1, v0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->resolveDocument(Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v1

    .line 2705
    if-nez v6, :cond_10

    :cond_9
    move v0, v3

    .line 2716
    :goto_6
    if-eqz v0, :cond_0

    .line 2717
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {v0, v2, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    goto :goto_1

    .line 2670
    :cond_a
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v6, p1, p4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->hasSchemaComponent(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;SLmf/org/apache/xerces/xni/QName;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_1

    .line 2678
    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    goto :goto_2

    .line 2683
    :cond_c
    sget-object p2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_3

    .line 2685
    :cond_d
    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->getLocationArray()[Ljava/lang/String;

    move-result-object v0

    .line 2686
    array-length v2, v0

    if-eqz v2, :cond_7

    .line 2687
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {p0, v2, v0, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setLocationHints(Lmf/org/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto :goto_4

    .line 2691
    :cond_e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    if-nez v0, :cond_8

    goto/16 :goto_1

    .line 2695
    :cond_f
    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->EMPTY_TABLE:Ljava/util/Hashtable;

    goto :goto_5

    .line 2705
    :cond_10
    :try_start_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_9

    .line 2709
    :try_start_2
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v0

    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v2, v5, v7}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z
    :try_end_2
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-nez v0, :cond_11

    move v0, v3

    goto :goto_6

    :cond_11
    move v0, v4

    .line 2712
    goto :goto_6

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_6

    .line 2719
    :catch_1
    move-exception v5

    .line 2721
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v7

    .line 2722
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/xml-schema-1"

    const-string/jumbo v2, "schema_reference.4"

    .line 2725
    new-array v3, v3, [Ljava/lang/Object;

    if-nez v7, :cond_12

    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_7
    aput-object v7, v3, v4

    .line 2722
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 2725
    :cond_12
    aget-object v7, v7, v4

    goto :goto_7
.end method

.method getAndCheckXsiType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 2794
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const/4 v2, 0x0

    invoke-interface {v0, p2, v1, v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/xni/QName;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2809
    iget-object v0, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    move-object v7, v8

    .line 2813
    :goto_0
    if-eqz v7, :cond_2

    move-object v2, v7

    .line 2827
    :goto_1
    if-eqz v2, :cond_4

    .line 2834
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_5

    .line 2853
    :cond_0
    :goto_2
    return-object v2

    .line 2795
    :catch_0
    move-exception v0

    .line 2796
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "cvc-elt.4.1"

    .line 2799
    new-array v1, v11, [Ljava/lang/Object;

    .line 2800
    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v6

    .line 2801
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 2802
    aput-object p2, v1, v10

    .line 2797
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2803
    return-object v8

    .line 2810
    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    iget-object v1, v4, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v7

    goto :goto_0

    .line 2818
    :cond_2
    iget-object v2, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 2816
    const/4 v1, 0x7

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 2823
    if-nez v0, :cond_3

    move-object v2, v7

    goto :goto_1

    .line 2824
    :cond_3
    iget-object v1, v4, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "cvc-elt.4.2"

    .line 2828
    new-array v1, v10, [Ljava/lang/Object;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v6

    aput-object p2, v1, v9

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2829
    return-object v8

    .line 2840
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_6

    move v1, v6

    .line 2843
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v3, 0xf

    if-eq v0, v3, :cond_7

    .line 2846
    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-static {v2, v0, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkTypeDerivationOk(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "cvc-elt.4.3"

    .line 2849
    new-array v1, v11, [Ljava/lang/Object;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v6

    aput-object p2, v1, v9

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v10

    .line 2847
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2841
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    move v1, v0

    goto :goto_3

    .line 2844
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    or-int/2addr v0, v1

    int-to-short v1, v0

    goto :goto_4
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-object v0
.end method

.method getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 2

    .prologue
    .line 2596
    if-eqz p1, :cond_0

    :goto_0
    const-string/jumbo v0, "ELEMENT_PSVI"

    .line 2600
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    invoke-interface {p1, v0, v1}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2601
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->reset()V

    .line 2603
    return-object p1

    .line 2597
    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugmentations:Lmf/org/apache/xerces/util/AugmentationsImpl;

    .line 2598
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    goto :goto_0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 632
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 633
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 637
    return-object v0
.end method

.method public getGlobalElementDecl(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1656
    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 1654
    const/4 v1, 0x5

    move-object v0, p0

    move-object v4, p1

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 1660
    if-nez v0, :cond_0

    .line 1663
    return-object v3

    .line 1661
    :cond_0
    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 650
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 651
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 652
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 655
    return-object v0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getXsiNil(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2860
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_3

    .line 2870
    :cond_0
    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 2871
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2873
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_5

    .line 2881
    :cond_2
    :goto_0
    return v5

    .line 2860
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNillable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "cvc-elt.3.1"

    .line 2863
    new-array v1, v2, [Ljava/lang/Object;

    .line 2864
    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 2865
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 2861
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2884
    :goto_1
    return v4

    :cond_4
    const-string/jumbo v1, "1"

    .line 2872
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 2874
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-ne v0, v2, :cond_2

    const-string/jumbo v0, "cvc-elt.3.2.2"

    .line 2877
    new-array v1, v2, [Ljava/lang/Object;

    .line 2878
    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 2879
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 2875
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method handleCharacters(Lmf/org/apache/xerces/xni/XMLString;)Lmf/org/apache/xerces/xni/XMLString;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1739
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-gez v0, :cond_3

    .line 1742
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    .line 1747
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-nez v0, :cond_5

    .line 1752
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    if-nez v0, :cond_7

    .line 1757
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_8

    .line 1771
    :cond_2
    :goto_3
    return-object p1

    .line 1740
    :cond_3
    return-object p1

    .line 1742
    :cond_4
    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1747
    :cond_5
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    if-eqz v0, :cond_1

    .line 1749
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    if-eq v0, v5, :cond_6

    :goto_4
    invoke-direct {p0, p1, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;Z)V

    .line 1750
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    goto :goto_1

    :cond_6
    move v1, v2

    .line 1749
    goto :goto_4

    .line 1753
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1758
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 1759
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1760
    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v0, v5, :cond_2

    .line 1762
    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    :goto_5
    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v1, v3

    if-ge v0, v1, :cond_2

    .line 1763
    iget-object v1, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v1, v1, v0

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1762
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1764
    :cond_9
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    goto :goto_3
.end method

.method handleEndDocument()V
    .locals 1

    .prologue
    .line 1730
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    if-nez v0, :cond_0

    .line 1733
    :goto_0
    return-void

    .line 1731
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->endDocument()V

    goto :goto_0
.end method

.method handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 9

    .prologue
    .line 2342
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-gez v0, :cond_0

    .line 2384
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processElementContent(Lmf/org/apache/xerces/xni/QName;)V

    .line 2386
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    if-nez v0, :cond_6

    .line 2453
    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    if-lt v0, v1, :cond_13

    :goto_1
    const/4 v0, 0x0

    .line 2459
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-eqz v1, :cond_14

    .line 2486
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endElementPSVI(Z[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    .line 2489
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    .line 2492
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v1, v1, v2

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    .line 2493
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 2494
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v1, v1, v2

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    .line 2495
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .line 2496
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2497
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 2498
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v1, v1, v2

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    .line 2499
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    .line 2500
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v1, v1, v2

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    .line 2501
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v1, v1, v2

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    .line 2508
    const/4 v1, -0x1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    .line 2511
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    .line 2513
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    .line 2516
    :goto_2
    return-object v0

    .line 2345
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-eq v0, v1, :cond_3

    .line 2362
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    .line 2370
    :goto_3
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 2378
    :cond_2
    :goto_4
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v0, :cond_5

    .line 2380
    :goto_5
    return-object p2

    .line 2345
    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-lez v0, :cond_1

    .line 2347
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    const/4 v0, -0x1

    .line 2348
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    .line 2349
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    .line 2350
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    .line 2351
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 2352
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    .line 2353
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .line 2354
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2355
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 2356
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    .line 2357
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    .line 2358
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    .line 2359
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    goto :goto_3

    .line 2370
    :cond_4
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez v0, :cond_2

    .line 2372
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    .line 2373
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    .line 2374
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    .line 2375
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 2371
    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    goto :goto_4

    .line 2379
    :cond_5
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p2

    goto :goto_5

    .line 2391
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result v8

    .line 2392
    add-int/lit8 v0, v8, -0x1

    move v7, v0

    :goto_6
    if-ltz v7, :cond_b

    .line 2393
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v0

    .line 2394
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v1, :cond_7

    .line 2400
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2401
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNillable()Z

    move-result v3

    .line 2402
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-eqz v1, :cond_8

    .line 2404
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 2405
    :goto_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-eqz v1, :cond_9

    .line 2407
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-short v5, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    .line 2408
    :goto_8
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-eqz v1, :cond_a

    .line 2410
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v6, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    :goto_9
    move-object v1, p1

    .line 2398
    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V

    .line 2392
    :goto_a
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_6

    .line 2395
    :cond_7
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-short v5, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v6, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V

    goto :goto_a

    .line 2403
    :cond_8
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    goto :goto_7

    .line 2406
    :cond_9
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-short v5, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    goto :goto_8

    .line 2409
    :cond_a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v6, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_9

    .line 2414
    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->size()I

    move-result v0

    if-gtz v0, :cond_d

    .line 2418
    :goto_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result v2

    .line 2420
    add-int/lit8 v0, v8, -0x1

    move v1, v0

    :goto_c
    if-lt v1, v2, :cond_f

    .line 2421
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v0

    .line 2422
    instance-of v3, v0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    if-nez v3, :cond_e

    .line 2420
    :cond_c
    :goto_d
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_c

    .line 2415
    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->popContext()V

    goto :goto_b

    .line 2423
    :cond_e
    check-cast v0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    .line 2425
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->getIdentityConstraint()Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 2426
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_c

    .line 2427
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->getInitialDepth()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->transplant(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V

    goto :goto_d

    .line 2433
    :cond_f
    add-int/lit8 v0, v8, -0x1

    move v1, v0

    :goto_e
    if-lt v1, v2, :cond_12

    .line 2434
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v0

    .line 2435
    instance-of v3, v0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    if-nez v3, :cond_11

    .line 2433
    :cond_10
    :goto_f
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_e

    .line 2436
    :cond_11
    check-cast v0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    .line 2438
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->getIdentityConstraint()Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 2439
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    .line 2441
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->getInitialDepth()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object v0

    .line 2442
    if-eqz v0, :cond_10

    .line 2443
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->endDocumentFragment()V

    goto :goto_f

    .line 2447
    :cond_12
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->endElement()V

    goto/16 :goto_0

    .line 2454
    :cond_13
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    goto/16 :goto_1

    .line 2461
    :cond_14
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->checkIDRefID()Ljava/lang/String;

    move-result-object v0

    .line 2462
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->resetIDTables()V

    .line 2463
    if-nez v0, :cond_16

    .line 2467
    :goto_10
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    if-nez v0, :cond_17

    .line 2475
    :cond_15
    :goto_11
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    .line 2477
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-nez v0, :cond_18

    .line 2484
    :goto_12
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endElementPSVI(Z[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    goto/16 :goto_2

    :cond_16
    const-string/jumbo v1, "cvc-id.1"

    const/4 v2, 0x1

    .line 2464
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    .line 2467
    :cond_17
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez v0, :cond_15

    .line 2469
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    .line 2470
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    .line 2471
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    .line 2472
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 2468
    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    goto :goto_11

    :cond_18
    const/4 v0, 0x0

    .line 2479
    :goto_13
    array-length v2, v1

    if-ge v0, v2, :cond_19

    .line 2480
    aget-object v2, v1, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->setImmutable(Z)V

    .line 2479
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 2482
    :cond_19
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string/jumbo v2, "http://www.w3.org/2001/XMLSchema"

    invoke-interface {v0, v2, v1}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    goto :goto_12
.end method

.method handleIgnorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 1

    .prologue
    .line 1886
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-gez v0, :cond_0

    .line 1892
    return-void

    .line 1887
    :cond_0
    return-void
.end method

.method handleStartDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1720
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    if-nez v0, :cond_0

    .line 1723
    :goto_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v0, :cond_1

    .line 1727
    :goto_1
    return-void

    .line 1721
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->startDocument()V

    goto :goto_0

    .line 1724
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 1725
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    goto :goto_1
.end method

.method handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1902
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 1920
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-eqz v0, :cond_d

    .line 1933
    :goto_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-gez v0, :cond_e

    .line 1946
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    if-nez v0, :cond_10

    move-object v0, v3

    .line 2007
    :goto_2
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c

    .line 2024
    :goto_3
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    .line 2025
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 2027
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2028
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    .line 2029
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    .line 2030
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    .line 2033
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2034
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    .line 2035
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    .line 2039
    if-nez v0, :cond_1d

    move-object v8, v3

    .line 2048
    :goto_4
    if-nez v8, :cond_1f

    .line 2055
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-eqz v0, :cond_21

    .line 2074
    :cond_2
    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_25

    .line 2099
    :cond_3
    :goto_6
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    if-eq v0, v1, :cond_28

    .line 2105
    :cond_4
    :goto_7
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    if-ge v0, v1, :cond_29

    move-object v0, v3

    .line 2110
    :goto_8
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v1, :cond_2a

    .line 2174
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    .line 2177
    if-nez v0, :cond_33

    .line 2189
    :cond_6
    :goto_9
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    .line 2191
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_35

    .line 2196
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_36

    .line 2200
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 2201
    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-eq v0, v7, :cond_37

    move v0, v6

    :goto_a
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    .line 2207
    :goto_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_38

    .line 2211
    :cond_8
    :goto_c
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-eqz v0, :cond_39

    .line 2216
    :goto_d
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-nez v0, :cond_3a

    .line 2226
    :goto_e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_3b

    .line 2248
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-nez v0, :cond_3e

    .line 2263
    :cond_9
    :goto_f
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 2264
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_40

    .line 2269
    :goto_10
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    .line 2270
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    if-nez v0, :cond_41

    .line 2274
    :goto_11
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2276
    if-nez v0, :cond_42

    .line 2282
    :cond_a
    :goto_12
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_43

    .line 2287
    :goto_13
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    if-nez v0, :cond_44

    .line 2298
    :cond_b
    :goto_14
    invoke-virtual {p0, p1, p2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    .line 2301
    if-nez v3, :cond_45

    .line 2306
    :goto_15
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result v0

    .line 2307
    :goto_16
    if-ge v6, v0, :cond_46

    .line 2308
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v1

    .line 2309
    invoke-virtual {v1, p1, p2}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    .line 2307
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 1902
    :cond_c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->isGrammarFound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1903
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1908
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    goto/16 :goto_0

    .line 1922
    :cond_d
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1924
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1928
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->storeLocations(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1934
    :cond_e
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    .line 1935
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v0, :cond_f

    .line 1937
    :goto_17
    return-object p3

    .line 1936
    :cond_f
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    goto :goto_17

    .line 1947
    :cond_10
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    invoke-interface {v0, p1, v1, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->oneTransition(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 1949
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    aget v0, v0, v6

    const/4 v2, -0x1

    if-eq v0, v2, :cond_11

    move-object v0, v1

    goto/16 :goto_2

    .line 1950
    :cond_11
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 1953
    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-nez v0, :cond_13

    .line 1987
    :cond_12
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->occurenceInfo([I)[I

    move-result-object v0

    .line 1988
    if-nez v0, :cond_19

    const-string/jumbo v0, "cvc-complex-type.2.4.d"

    .line 2000
    new-array v2, v7, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_2

    .line 1954
    :cond_13
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->whatCanGoHere([I)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 1955
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->expectedStr(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    .line 1956
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->occurenceInfo([I)[I

    move-result-object v2

    .line 1957
    if-nez v2, :cond_14

    const-string/jumbo v2, "cvc-complex-type.2.4.a"

    .line 1983
    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-virtual {p0, v2, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 1985
    goto/16 :goto_2

    .line 1958
    :cond_14
    aget v4, v2, v6

    .line 1959
    aget v5, v2, v7

    .line 1960
    aget v8, v2, v10

    .line 1962
    if-lt v8, v4, :cond_16

    .line 1974
    if-ge v8, v5, :cond_18

    :cond_15
    const-string/jumbo v2, "cvc-complex-type.2.4.a"

    .line 1979
    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-virtual {p0, v2, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 1981
    goto/16 :goto_2

    .line 1963
    :cond_16
    sub-int v0, v4, v8

    .line 1964
    if-gt v0, v7, :cond_17

    const-string/jumbo v0, "cvc-complex-type.2.4.g"

    .line 1969
    new-array v5, v11, [Ljava/lang/Object;

    iget-object v8, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v5, v6

    .line 1970
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    aget v2, v2, v11

    invoke-interface {v8, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v10

    .line 1969
    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 1972
    goto/16 :goto_2

    :cond_17
    const-string/jumbo v5, "cvc-complex-type.2.4.h"

    const/4 v8, 0x4

    .line 1965
    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v9, v8, v6

    .line 1966
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    aget v2, v2, v11

    invoke-interface {v9, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v10

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v11

    .line 1965
    invoke-virtual {p0, v5, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 1967
    goto/16 :goto_2

    :cond_18
    const/4 v2, -0x1

    .line 1974
    if-eq v5, v2, :cond_15

    const-string/jumbo v2, "cvc-complex-type.2.4.e"

    .line 1975
    new-array v4, v11, [Ljava/lang/Object;

    iget-object v8, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v4, v6

    .line 1976
    aput-object v0, v4, v7

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 1975
    invoke-virtual {p0, v2, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 1977
    goto/16 :goto_2

    .line 1989
    :cond_19
    aget v2, v0, v7

    .line 1990
    aget v0, v0, v10

    .line 1992
    if-ge v0, v2, :cond_1b

    :cond_1a
    const-string/jumbo v0, "cvc-complex-type.2.4.d"

    .line 1996
    new-array v2, v7, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 1998
    goto/16 :goto_2

    :cond_1b
    const/4 v0, -0x1

    .line 1992
    if-eq v2, v0, :cond_1a

    const-string/jumbo v0, "cvc-complex-type.2.4.f"

    .line 1993
    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 1994
    goto/16 :goto_2

    .line 2008
    :cond_1c
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->ensureStackCapacity()V

    .line 2009
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aput-boolean v7, v1, v2

    .line 2010
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    .line 2011
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aput-object v4, v1, v2

    .line 2012
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    aput-boolean v4, v1, v2

    .line 2013
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    aput-object v4, v1, v2

    .line 2014
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    aput-object v4, v1, v2

    .line 2015
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    aput-boolean v4, v1, v2

    .line 2016
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    aput-object v4, v1, v2

    .line 2017
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    aput-object v4, v1, v2

    .line 2018
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    aput-boolean v4, v1, v2

    .line 2019
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    aput-boolean v4, v1, v2

    goto/16 :goto_3

    .line 2040
    :cond_1d
    instance-of v1, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v1, :cond_1e

    .line 2043
    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object v8, v0

    goto/16 :goto_4

    .line 2041
    :cond_1e
    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object v8, v3

    .line 2042
    goto/16 :goto_4

    .line 2048
    :cond_1f
    iget-short v0, v8, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-ne v0, v10, :cond_1

    .line 2049
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    .line 2050
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v0, :cond_20

    .line 2052
    :goto_18
    return-object p3

    .line 2051
    :cond_20
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    goto :goto_18

    .line 2057
    :cond_21
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_22

    .line 2061
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    if-nez v0, :cond_23

    .line 2065
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_24

    .line 2068
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_2

    .line 2069
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processRootTypeQName(Ljavax/xml/namespace/QName;)V

    goto/16 :goto_5

    .line 2058
    :cond_22
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 2059
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->checkElementMatchesRootElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/xni/QName;)V

    goto/16 :goto_5

    .line 2062
    :cond_23
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processRootElementDeclQName(Ljavax/xml/namespace/QName;Lmf/org/apache/xerces/xni/QName;)V

    goto/16 :goto_5

    .line 2066
    :cond_24
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto/16 :goto_5

    .line 2078
    :cond_25
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_27

    .line 2092
    :cond_26
    :goto_19
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_3

    .line 2094
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto/16 :goto_6

    .line 2083
    :cond_27
    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 2081
    const/4 v1, 0x5

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 2087
    if-eqz v0, :cond_26

    .line 2088
    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_19

    .line 2099
    :cond_28
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_4

    .line 2100
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    goto/16 :goto_7

    .line 2106
    :cond_29
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 2110
    :cond_2a
    if-nez v0, :cond_5

    .line 2114
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-eqz v0, :cond_2c

    .line 2153
    if-nez v8, :cond_32

    .line 2160
    :cond_2b
    :goto_1a
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2161
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    .line 2162
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    .line 2164
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    .line 2169
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    goto/16 :goto_b

    .line 2117
    :cond_2c
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    if-eqz v0, :cond_2e

    .line 2124
    :cond_2d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    if-nez v0, :cond_2f

    .line 2133
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    .line 2134
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v0, :cond_31

    .line 2136
    :goto_1b
    return-object p3

    .line 2117
    :cond_2e
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    if-nez v0, :cond_2d

    .line 2144
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/xml-schema-1"

    const-string/jumbo v2, "cvc-elt.1.a"

    .line 2147
    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 2144
    invoke-virtual {v0, v1, v2, v4, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_1a

    .line 2125
    :cond_2f
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 2126
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_30

    :goto_1c
    const/4 v0, -0x2

    .line 2129
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    .line 2130
    return-object p3

    .line 2127
    :cond_30
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    goto :goto_1c

    .line 2135
    :cond_31
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    goto :goto_1b

    .line 2153
    :cond_32
    iget-short v0, v8, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-ne v0, v7, :cond_2b

    const-string/jumbo v0, "cvc-complex-type.2.4.c"

    .line 2155
    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a

    .line 2178
    :cond_33
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2179
    invoke-virtual {p0, p1, v0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getAndCheckXsiType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2181
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_6

    .line 2182
    if-eqz v1, :cond_34

    .line 2185
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto/16 :goto_9

    .line 2183
    :cond_34
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto/16 :goto_9

    .line 2192
    :cond_35
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-ne v0, v10, :cond_7

    .line 2193
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    goto/16 :goto_b

    .line 2197
    :cond_36
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    goto/16 :goto_b

    :cond_37
    move v0, v7

    .line 2201
    goto/16 :goto_a

    .line 2207
    :cond_38
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getAbstract()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "cvc-elt.2"

    .line 2208
    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2212
    :cond_39
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    goto/16 :goto_d

    .line 2218
    :cond_3a
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    .line 2219
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTrailing:Z

    .line 2220
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    .line 2221
    const/4 v0, -0x1

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    goto/16 :goto_e

    .line 2227
    :cond_3b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 2228
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAbstract()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 2231
    :goto_1d
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v1, :cond_9

    .line 2234
    iget-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v1, v7, :cond_9

    .line 2235
    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v1

    if-eq v1, v11, :cond_3d

    .line 2239
    :try_start_0
    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getWhitespace()S

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/DatatypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_f

    .line 2240
    :catch_0
    move-exception v0

    goto/16 :goto_f

    :cond_3c
    const-string/jumbo v1, "cvc-type.2"

    .line 2229
    new-array v2, v7, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d

    .line 2236
    :cond_3d
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    goto/16 :goto_f

    .line 2250
    :cond_3e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 2251
    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v1

    if-eq v1, v11, :cond_3f

    .line 2255
    :try_start_1
    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getWhitespace()S

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/DatatypeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_f

    .line 2256
    :catch_1
    move-exception v0

    goto/16 :goto_f

    .line 2252
    :cond_3f
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    goto/16 :goto_f

    .line 2265
    :cond_40
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentModel(Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    goto/16 :goto_10

    .line 2271
    :cond_41
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->startContentModel()[I

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    goto/16 :goto_11

    .line 2276
    :cond_42
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v1, :cond_a

    .line 2277
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getXsiNil(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    goto/16 :goto_12

    .line 2283
    :cond_43
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 2284
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v3

    goto/16 :goto_13

    .line 2289
    :cond_44
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->startElement()V

    .line 2290
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->pushContext()V

    .line 2292
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDCPos:I

    if-lez v0, :cond_b

    .line 2293
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    .line 2295
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v0, v1, p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->initValueStoresFor(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;)V

    goto/16 :goto_14

    .line 2302
    :cond_45
    invoke-virtual {p0, p1, p2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->addDefaultAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    goto/16 :goto_15

    .line 2312
    :cond_46
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v0, :cond_47

    .line 2327
    :goto_1e
    return-object p3

    .line 2313
    :cond_47
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    .line 2316
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    .line 2318
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    .line 2320
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 2322
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    .line 2324
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    iput-boolean v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNil:Z

    goto :goto_1e
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 874
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleIgnorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 876
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    .line 880
    :goto_0
    return-void

    .line 877
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method processAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 20

    .prologue
    const/16 v18, 0x0

    .line 2897
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v19

    const/4 v7, 0x0

    .line 2903
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v1, :cond_4

    :cond_0
    const/4 v1, 0x1

    move v14, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2908
    if-eqz v14, :cond_5

    move-object v15, v1

    move/from16 v16, v2

    move-object/from16 v17, v3

    :goto_1
    const/4 v4, 0x0

    .line 2917
    :goto_2
    move/from16 v0, v19

    if-ge v4, v0, :cond_1b

    .line 2919
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    .line 2925
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v1, :cond_6

    .line 2926
    :cond_1
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v2

    const-string/jumbo v1, "ATTRIBUTE_PSVI"

    .line 2927
    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;

    .line 2928
    if-nez v1, :cond_7

    .line 2931
    new-instance v1, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;-><init>()V

    const-string/jumbo v3, "ATTRIBUTE_PSVI"

    .line 2932
    invoke-interface {v2, v3, v1}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2935
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationContext:Ljava/lang/String;

    move-object v7, v1

    .line 2944
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    if-eq v1, v2, :cond_8

    .line 2965
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v1, v2, :cond_d

    .line 2917
    :cond_3
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2903
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    move v14, v1

    .line 2902
    goto :goto_0

    .line 2909
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v3

    .line 2910
    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v2

    .line 2911
    move-object/from16 v0, p3

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object v15, v1

    move/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_1

    .line 2925
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    if-nez v1, :cond_1

    goto :goto_4

    .line 2929
    :cond_7
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->reset()V

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    .line 2946
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    if-eq v1, v2, :cond_9

    .line 2949
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    if-eq v1, v2, :cond_a

    .line 2952
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    if-eq v1, v2, :cond_b

    .line 2955
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    if-eq v1, v2, :cond_c

    .line 2958
    :goto_6
    if-eqz v5, :cond_2

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 2959
    invoke-virtual/range {v1 .. v7}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processOneAttribute(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;ILmf/org/apache/xerces/impl/xs/XSAttributeDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;)V

    goto :goto_5

    .line 2947
    :cond_9
    sget-object v5, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_TYPE:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    goto :goto_6

    .line 2950
    :cond_a
    sget-object v5, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_NIL:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    goto :goto_6

    .line 2953
    :cond_b
    sget-object v5, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_SCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    goto :goto_6

    .line 2956
    :cond_c
    sget-object v5, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_NONAMESPACESCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    goto :goto_6

    .line 2966
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const-string/jumbo v2, "xmlns:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2971
    if-nez v14, :cond_f

    const/4 v6, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 2980
    :goto_7
    move/from16 v0, v16

    if-ge v2, v0, :cond_11

    .line 2981
    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .line 2982
    iget-object v3, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eq v3, v5, :cond_10

    .line 2980
    :cond_e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7

    :cond_f
    const-string/jumbo v1, "cvc-type.3.1.1"

    const/4 v2, 0x2

    .line 2974
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v2, v3

    .line 2972
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2983
    :cond_10
    iget-object v3, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v3, v5, :cond_e

    move-object v6, v1

    .line 2994
    :cond_11
    if-eqz v6, :cond_12

    :goto_8
    const/4 v5, 0x0

    .line 3011
    if-nez v6, :cond_15

    .line 3016
    iget-short v1, v15, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 3023
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 3025
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    .line 3021
    const/4 v9, 0x6

    move-object/from16 v8, p0

    move-object/from16 v11, p1

    move-object/from16 v13, p2

    invoke-virtual/range {v8 .. v13}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    .line 3028
    if-nez v1, :cond_16

    .line 3033
    :goto_9
    if-eqz v5, :cond_17

    .line 3046
    iget-object v1, v5, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getTypeCategory()S

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_18

    move-object/from16 v8, v18

    :goto_a
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 3058
    invoke-virtual/range {v1 .. v7}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processOneAttribute(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;ILmf/org/apache/xerces/impl/xs/XSAttributeDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;)V

    move-object/from16 v18, v8

    goto/16 :goto_5

    .line 2997
    :cond_12
    if-nez v15, :cond_14

    :cond_13
    const-string/jumbo v1, "cvc-complex-type.3.2.2"

    const/4 v2, 0x2

    .line 3001
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v2, v3

    .line 2999
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3004
    move-object/from16 v0, p0

    iget v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    goto/16 :goto_5

    .line 2997
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v15, v1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_8

    .line 3012
    :cond_15
    iget-object v5, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v8, v18

    .line 3013
    goto :goto_a

    .line 3029
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v5

    goto :goto_9

    .line 3035
    :cond_17
    iget-short v1, v15, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const-string/jumbo v1, "cvc-complex-type.3.2.2"

    const/4 v2, 0x2

    .line 3038
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v2, v3

    .line 3036
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 3047
    :cond_18
    iget-object v1, v5, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v1

    if-nez v1, :cond_19

    move-object/from16 v8, v18

    goto :goto_a

    .line 3048
    :cond_19
    if-nez v18, :cond_1a

    .line 3053
    iget-object v1, v5, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    move-object v8, v1

    goto/16 :goto_a

    :cond_1a
    const-string/jumbo v1, "cvc-complex-type.5.1"

    const/4 v2, 0x3

    .line 3051
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v8, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v2, v3

    const/4 v3, 0x1

    iget-object v8, v5, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v8, v2, v3

    const/4 v3, 0x2

    aput-object v18, v2, v3

    .line 3049
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v8, v18

    .line 3052
    goto/16 :goto_a

    .line 3062
    :cond_1b
    if-eqz v14, :cond_1d

    .line 3068
    :cond_1c
    :goto_b
    return-void

    .line 3062
    :cond_1d
    move-object/from16 v0, p3

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    if-eqz v1, :cond_1c

    if-eqz v18, :cond_1c

    const-string/jumbo v1, "cvc-complex-type.5.2"

    const/4 v2, 0x3

    .line 3065
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v18, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, p3

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 3063
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method processElementContent(Lmf/org/apache/xerces/xni/QName;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3269
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_4

    .line 3287
    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v6, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    .line 3291
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v0, :cond_7

    .line 3301
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->reset()V

    .line 3305
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_a

    .line 3337
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->elementLocallyValidType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3339
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_d

    .line 3388
    :cond_2
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-eqz v0, :cond_15

    .line 3404
    :cond_3
    :goto_3
    return-void

    .line 3270
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v0, :cond_0

    .line 3271
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-nez v0, :cond_0

    .line 3272
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v0, :cond_0

    .line 3273
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v0, :cond_0

    .line 3275
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    .line 3276
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 3277
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    if-nez v2, :cond_6

    .line 3278
    :cond_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    new-array v3, v1, [C

    iput-object v3, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    .line 3280
    :goto_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    invoke-virtual {v0, v5, v1, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 3281
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v5, v0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .line 3282
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v1, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    .line 3283
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    goto :goto_0

    .line 3277
    :cond_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v2, v2

    if-lt v2, v1, :cond_5

    goto :goto_4

    .line 3292
    :cond_7
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-eqz v0, :cond_9

    :cond_8
    const-string/jumbo v0, "cvc-elt.3.2.1"

    .line 3295
    new-array v1, v8, [Ljava/lang/Object;

    .line 3296
    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 3297
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 3293
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3292
    :cond_9
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-nez v0, :cond_8

    goto/16 :goto_1

    .line 3306
    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-eqz v0, :cond_1

    .line 3307
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v0, :cond_1

    .line 3308
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-nez v0, :cond_1

    .line 3309
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v0, :cond_1

    .line 3311
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-ne v0, v1, :cond_c

    .line 3330
    :cond_b
    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->elementLocallyValidType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3315
    :cond_c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 3316
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v1

    .line 3317
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    .line 3314
    invoke-static {v0, v1, v2, v6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->ElementDefaultValidImmediate(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 3313
    if-nez v0, :cond_b

    const-string/jumbo v0, "cvc-elt.5.1.1"

    .line 3322
    new-array v1, v9, [Ljava/lang/Object;

    .line 3323
    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 3324
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 3325
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 3320
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 3340
    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-ne v0, v8, :cond_2

    .line 3341
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v0, :cond_2

    .line 3342
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3344
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v0, :cond_f

    .line 3347
    :goto_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v3, 0xf

    if-eq v0, v3, :cond_10

    .line 3372
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_2

    .line 3373
    if-eqz v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v0, v3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_e
    const-string/jumbo v0, "cvc-elt.5.2.2.2.2"

    .line 3379
    new-array v1, v9, [Ljava/lang/Object;

    .line 3380
    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v5

    .line 3381
    aput-object v2, v1, v7

    .line 3382
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 3377
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v0, "cvc-elt.5.2.2.1"

    .line 3345
    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 3348
    :cond_10
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 3350
    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-eq v3, v9, :cond_12

    .line 3361
    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v0, v7, :cond_2

    .line 3362
    if-eqz v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v0, v3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_11
    const-string/jumbo v0, "cvc-elt.5.2.2.2.2"

    .line 3366
    new-array v1, v9, [Ljava/lang/Object;

    .line 3367
    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v5

    .line 3368
    aput-object v2, v1, v7

    .line 3369
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 3364
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 3352
    :cond_12
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "cvc-elt.5.2.2.2.1"

    .line 3355
    new-array v1, v9, [Ljava/lang/Object;

    .line 3356
    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v5

    .line 3357
    aput-object v2, v1, v7

    .line 3358
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    aput-object v2, v1, v8

    .line 3353
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 3363
    :cond_13
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_2

    .line 3374
    :cond_14
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_2

    .line 3388
    :cond_15
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    if-eqz v0, :cond_3

    .line 3391
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    .line 3392
    if-eqz v0, :cond_17

    .line 3395
    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 3396
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    if-nez v2, :cond_18

    .line 3397
    :cond_16
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    new-array v3, v1, [C

    iput-object v3, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    .line 3399
    :goto_8
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    invoke-virtual {v0, v5, v1, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 3400
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v5, v0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .line 3401
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v1, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    .line 3402
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v0, v1, v6}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_3

    .line 3393
    :cond_17
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 3396
    :cond_18
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v2, v2

    if-lt v2, v1, :cond_16

    goto :goto_8
.end method

.method processOneAttribute(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;ILmf/org/apache/xerces/impl/xs/XSAttributeDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;)V
    .locals 8

    .prologue
    .line 3078
    invoke-interface {p2, p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 3079
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    .line 3087
    iget-object v3, p4, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v2, 0x0

    .line 3091
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v3, v4, v1, v5}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v2

    .line 3093
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-nez v1, :cond_3

    .line 3097
    :goto_0
    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_4

    .line 3124
    :cond_0
    :goto_1
    if-nez v2, :cond_6

    .line 3137
    :cond_1
    :goto_2
    if-nez v2, :cond_9

    .line 3150
    :cond_2
    :goto_3
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    if-nez v1, :cond_c

    .line 3154
    :goto_4
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v1, :cond_d

    .line 3179
    :goto_5
    return-void

    .line 3094
    :cond_3
    :try_start_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    invoke-interface {p2, p3, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3112
    :catch_0
    move-exception v1

    .line 3114
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v5, "cvc-attribute.3"

    const/4 v1, 0x4

    .line 3117
    new-array v6, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v1

    const/4 v1, 0x1

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v1

    const/4 v1, 0x2

    aput-object v4, v6, v1

    const/4 v7, 0x3

    .line 3118
    instance-of v1, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-nez v1, :cond_5

    .line 3119
    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_6
    aput-object v1, v6, v7

    .line 3115
    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3098
    :cond_4
    :try_start_2
    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result v1

    const/16 v5, 0x14

    if-ne v1, v5, :cond_0

    .line 3099
    move-object v0, v2

    check-cast v0, Lmf/org/apache/xerces/xni/QName;

    move-object v1, v0

    .line 3100
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v6, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v5

    .line 3108
    if-eqz v5, :cond_0

    .line 3109
    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_5
    move-object v1, v3

    .line 3119
    check-cast v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 3124
    :cond_6
    invoke-virtual {p4}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    .line 3125
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v5, p4, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v1, v5}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    const-string/jumbo v1, "cvc-attribute.4"

    const/4 v5, 0x4

    .line 3128
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 3129
    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 3130
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 3131
    aput-object v4, v5, v6

    const/4 v6, 0x3

    .line 3132
    iget-object v7, p4, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3126
    invoke-virtual {p0, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 3125
    :cond_8
    iget-object v1, p4, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_2

    .line 3138
    :cond_9
    if-eqz p5, :cond_2

    .line 3139
    iget-short v1, p5, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 3140
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v5, p5, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v1, v5}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    const-string/jumbo v1, "cvc-complex-type.3.1"

    const/4 v2, 0x4

    .line 3143
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 3144
    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    .line 3145
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    .line 3146
    aput-object v4, v2, v5

    const/4 v4, 0x3

    .line 3147
    iget-object v5, p5, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 3141
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 3140
    :cond_b
    iget-object v1, p5, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_3

    .line 3151
    :cond_c
    iget-object v1, p6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    goto/16 :goto_4

    .line 3156
    :cond_d
    iput-object p4, p6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    .line 3158
    iput-object v3, p6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 3164
    iget-object v1, p6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    .line 3167
    const/4 v1, 0x2

    iput-short v1, p6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationAttempted:S

    .line 3170
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    .line 3172
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->mergeContext()[Ljava/lang/String;

    move-result-object v1

    .line 3174
    iput-object v1, p6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fErrors:[Ljava/lang/String;

    .line 3177
    if-eqz v1, :cond_e

    const/4 v1, 0x1

    .line 3176
    :goto_7
    int-to-short v1, v1

    iput-short v1, p6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidity:S

    goto/16 :goto_5

    :cond_e
    const/4 v1, 0x2

    .line 3177
    goto :goto_7
.end method

.method processRootElementDeclQName(Ljavax/xml/namespace/QName;Lmf/org/apache/xerces/xni/QName;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 3541
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 3542
    if-nez v2, :cond_1

    .line 3545
    :cond_0
    :goto_0
    const/4 v1, 0x5

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 3547
    if-nez v0, :cond_2

    .line 3550
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_3

    .line 3557
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->checkElementMatchesRootElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/xni/QName;)V

    .line 3559
    :goto_2
    return-void

    :cond_1
    const-string/jumbo v0, ""

    .line 3542
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v2, v3

    .line 3543
    goto :goto_0

    .line 3548
    :cond_2
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_1

    .line 3551
    :cond_3
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string/jumbo v1, "cvc-elt.1.a"

    const/4 v2, 0x1

    .line 3554
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 3552
    :cond_4
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method processRootTypeQName(Ljavax/xml/namespace/QName;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 3518
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 3519
    if-nez v2, :cond_1

    .line 3522
    :cond_0
    :goto_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3526
    const/4 v1, 0x5

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 3528
    if-nez v0, :cond_3

    .line 3532
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_4

    .line 3538
    :goto_2
    return-void

    :cond_1
    const-string/jumbo v0, ""

    .line 3519
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v2, v3

    .line 3520
    goto :goto_0

    .line 3523
    :cond_2
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_1

    .line 3529
    :cond_3
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_1

    .line 3533
    :cond_4
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string/jumbo v1, "cvc-type.1"

    const/4 v2, 0x1

    .line 3536
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 3534
    :cond_5
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1113
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    .line 1117
    :goto_0
    return-void

    .line 1114
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 3571
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    if-nez v0, :cond_0

    .line 3577
    :goto_0
    return-void

    .line 3572
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/xml-schema-1"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_0
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1346
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    .line 1348
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1349
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExpandedLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1352
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->resetIDTables()V

    .line 1355
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 1358
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1359
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 1360
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    .line 1361
    iput v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    .line 1362
    iput v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    .line 1363
    iput v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    .line 1364
    iput v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    .line 1365
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    .line 1366
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    .line 1369
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    .line 1370
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    .line 1372
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->clear()V

    .line 1375
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reset(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :try_start_0
    const-string/jumbo v0, "http://apache.org/xml/features/internal/parser-settings"

    .line 1379
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1385
    :goto_0
    if-eqz v0, :cond_1

    .line 1400
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/symbol-table"

    .line 1403
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SymbolTable;

    .line 1404
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    if-ne v0, v1, :cond_2

    :goto_1
    :try_start_1
    const-string/jumbo v1, "http://apache.org/xml/features/namespace-growth"

    .line 1409
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    const-string/jumbo v1, "http://apache.org/xml/features/validation/dynamic"

    .line 1415
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1420
    :goto_3
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    if-nez v1, :cond_3

    :try_start_3
    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    .line 1424
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1430
    :goto_4
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    if-nez v1, :cond_4

    :goto_5
    :try_start_4
    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema-full-checking"

    .line 1438
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_5

    :goto_6
    :try_start_5
    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/normalized-value"

    .line 1444
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_6

    :goto_7
    :try_start_6
    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/element-default"

    .line 1450
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_7

    :goto_8
    :try_start_7
    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/augment-psvi"

    .line 1456
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_8

    :goto_9
    :try_start_8
    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 1462
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1461
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_9

    :goto_a
    :try_start_9
    const-string/jumbo v1, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    .line 1469
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z
    :try_end_9
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_a

    :goto_b
    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-manager"

    .line 1475
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/validation-manager"

    .line 1477
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 1478
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lmf/org/apache/xerces/impl/validation/ValidationState;)V

    .line 1479
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    :try_start_a
    const-string/jumbo v1, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    .line 1482
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1483
    if-eqz v1, :cond_5

    .line 1487
    instance-of v5, v1, Ljavax/xml/namespace/QName;

    if-nez v5, :cond_6

    .line 1492
    check-cast v1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v1, 0x0

    .line 1493
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;
    :try_end_a
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_a .. :try_end_a} :catch_b

    :goto_c
    :try_start_b
    const-string/jumbo v1, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    .line 1502
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1503
    if-eqz v1, :cond_7

    .line 1507
    instance-of v5, v1, Ljavax/xml/namespace/QName;

    if-nez v5, :cond_8

    .line 1512
    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    const/4 v1, 0x0

    .line 1513
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;
    :try_end_b
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_b .. :try_end_b} :catch_c

    :goto_d
    :try_start_c
    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    .line 1523
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_c
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_c .. :try_end_c} :catch_d

    move-result v1

    .line 1531
    :goto_e
    if-nez v1, :cond_0

    move v3, v4

    :cond_0
    iput v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    :try_start_d
    const-string/jumbo v1, "http://apache.org/xml/features/validation/identity-constraint-checking"

    .line 1534
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z
    :try_end_d
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_d .. :try_end_d} :catch_e

    .line 1541
    :goto_f
    :try_start_e
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const-string/jumbo v3, "http://apache.org/xml/features/validation/id-idref-checking"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setIdIdrefChecking(Z)V
    :try_end_e
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_e .. :try_end_e} :catch_f

    .line 1548
    :goto_10
    :try_start_f
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const-string/jumbo v3, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setUnparsedEntityChecking(Z)V
    :try_end_f
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_f .. :try_end_f} :catch_10

    :goto_11
    :try_start_10
    const-string/jumbo v1, "http://apache.org/xml/properties/schema/external-schemaLocation"

    .line 1556
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    const-string/jumbo v1, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    .line 1558
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1557
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;
    :try_end_10
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_10 .. :try_end_10} :catch_11

    .line 1569
    :goto_12
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    .line 1570
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    .line 1571
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    .line 1572
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 1568
    invoke-static {v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :try_start_11
    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 1575
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;
    :try_end_11
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_11 .. :try_end_11} :catch_12

    :goto_13
    :try_start_12
    const-string/jumbo v1, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 1583
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_12
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_12 .. :try_end_12} :catch_13

    .line 1588
    :goto_14
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 1589
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    .line 1591
    return-void

    .line 1380
    :catch_0
    move-exception v0

    move v0, v2

    .line 1382
    goto/16 :goto_0

    .line 1387
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lmf/org/apache/xerces/impl/validation/ValidationState;)V

    .line 1389
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->reset()V

    .line 1392
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    .line 1393
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    .line 1394
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    .line 1395
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 1391
    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 1396
    return-void

    .line 1405
    :cond_2
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    goto/16 :goto_1

    .line 1410
    :catch_1
    move-exception v1

    .line 1411
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    goto/16 :goto_2

    .line 1416
    :catch_2
    move-exception v1

    .line 1417
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    goto/16 :goto_3

    .line 1421
    :cond_3
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    goto/16 :goto_4

    .line 1425
    :catch_3
    move-exception v1

    .line 1426
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    goto/16 :goto_4

    :cond_4
    :try_start_13
    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema"

    .line 1432
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z
    :try_end_13
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_13 .. :try_end_13} :catch_4

    goto/16 :goto_5

    .line 1433
    :catch_4
    move-exception v1

    goto/16 :goto_5

    .line 1439
    :catch_5
    move-exception v1

    .line 1440
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    goto/16 :goto_6

    .line 1445
    :catch_6
    move-exception v1

    .line 1446
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    goto/16 :goto_7

    .line 1451
    :catch_7
    move-exception v1

    .line 1452
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    goto/16 :goto_8

    .line 1457
    :catch_8
    move-exception v1

    .line 1458
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    goto/16 :goto_9

    .line 1464
    :catch_9
    move-exception v1

    .line 1465
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;

    goto/16 :goto_a

    .line 1470
    :catch_a
    move-exception v1

    .line 1472
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    goto/16 :goto_b

    :cond_5
    const/4 v1, 0x0

    .line 1484
    :try_start_14
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    .line 1485
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :try_end_14
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_14 .. :try_end_14} :catch_b

    goto/16 :goto_c

    .line 1495
    :catch_b
    move-exception v1

    .line 1497
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    .line 1498
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto/16 :goto_c

    .line 1488
    :cond_6
    :try_start_15
    check-cast v1, Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    .line 1489
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :try_end_15
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_15 .. :try_end_15} :catch_b

    goto/16 :goto_c

    :cond_7
    const/4 v1, 0x0

    .line 1504
    :try_start_16
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    .line 1505
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    :try_end_16
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_16 .. :try_end_16} :catch_c

    goto/16 :goto_d

    .line 1515
    :catch_c
    move-exception v1

    .line 1517
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    .line 1518
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto/16 :goto_d

    .line 1508
    :cond_8
    :try_start_17
    check-cast v1, Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    .line 1509
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    :try_end_17
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_17 .. :try_end_17} :catch_c

    goto/16 :goto_d

    .line 1524
    :catch_d
    move-exception v1

    move v1, v3

    .line 1526
    goto/16 :goto_e

    .line 1535
    :catch_e
    move-exception v1

    .line 1537
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    goto/16 :goto_f

    .line 1542
    :catch_f
    move-exception v1

    .line 1544
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setIdIdrefChecking(Z)V

    goto/16 :goto_10

    .line 1549
    :catch_10
    move-exception v1

    .line 1551
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setUnparsedEntityChecking(Z)V

    goto/16 :goto_11

    .line 1559
    :catch_11
    move-exception v1

    .line 1560
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    .line 1561
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    goto/16 :goto_12

    .line 1576
    :catch_12
    move-exception v1

    .line 1577
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;

    goto/16 :goto_13

    .line 1584
    :catch_13
    move-exception v1

    .line 1585
    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    goto/16 :goto_14
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .line 665
    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .line 679
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 565
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    .line 592
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    .line 606
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 620
    :goto_0
    return-void

    .line 593
    :cond_0
    if-eqz p2, :cond_1

    .line 597
    instance-of v0, p2, Ljavax/xml/namespace/QName;

    if-nez v0, :cond_2

    .line 602
    check-cast p2, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 603
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    goto :goto_0

    .line 594
    :cond_1
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    .line 595
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_0

    .line 598
    :cond_2
    check-cast p2, Ljavax/xml/namespace/QName;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    .line 599
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_0

    .line 607
    :cond_3
    if-eqz p2, :cond_4

    .line 611
    instance-of v0, p2, Ljavax/xml/namespace/QName;

    if-nez v0, :cond_5

    .line 616
    check-cast p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 617
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    goto :goto_0

    .line 608
    :cond_4
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    .line 609
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_0

    .line 612
    :cond_5
    check-cast p2, Ljavax/xml/namespace/QName;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    .line 613
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_0
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    .line 919
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    .line 923
    :goto_0
    return-void

    .line 920
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 715
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 716
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 717
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    .line 718
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    .line 720
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleStartDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    .line 726
    :goto_0
    return-void

    .line 723
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 789
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    .line 791
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v1, :cond_0

    .line 795
    :goto_0
    return-void

    .line 792
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1041
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    .line 1043
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    .line 1047
    :goto_0
    return-void

    .line 1044
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startValueScopeFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V
    .locals 1

    .prologue
    .line 1607
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object v0

    .line 1608
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->startValueScope()V

    .line 1610
    return-void
.end method

.method storeLocations(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 2607
    if-nez p1, :cond_1

    .line 2617
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    .line 2633
    :goto_1
    return-void

    .line 2608
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {p1, v1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->tokenizeSchemaLocationStr(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2610
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/xml-schema-1"

    const-string/jumbo v2, "SchemaLocation"

    const/4 v3, 0x1

    .line 2613
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 2610
    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_0

    .line 2619
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    .line 2620
    if-eqz v0, :cond_4

    .line 2624
    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v1, :cond_5

    .line 2630
    :goto_3
    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->addLocation(Ljava/lang/String;)V

    goto :goto_1

    .line 2621
    :cond_4
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;-><init>()V

    .line 2622
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2626
    :cond_5
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_3

    .line 2627
    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1069
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    .line 1073
    :goto_0
    return-void

    .line 1070
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 745
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    .line 749
    :goto_0
    return-void

    .line 746
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method
