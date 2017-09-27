.class public Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;
.super Ljava/lang/Object;
.source "XMLSchemaLoader.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;
.implements Lmf/org/apache/xerces/xs/XSLoader;
.implements Lmf/org/w3c/dom/DOMConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DISALLOW_DOCTYPE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field public static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final STANDARD_URI_CONFORMANT_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field public static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field public static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field private fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

.field private fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

.field private fDefaultSchemaDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

.field private fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field private fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

.field private fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private fExternalNoNSSchema:Ljava/lang/String;

.field private fExternalSchemas:Ljava/lang/String;

.field private fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

.field private fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field private fIsCheckedFully:Z

.field private fJAXPCache:Ljava/util/WeakHashMap;

.field private fJAXPProcessed:Z

.field private fJAXPSource:Ljava/lang/Object;

.field private final fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

.field private fLocale:Ljava/util/Locale;

.field private fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

.field private fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

.field private fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

.field private fSettingsChanged:Z

.field private fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

.field private fUserEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field private fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xb

    .line 155
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema-full-checking"

    .line 156
    aput-object v1, v0, v3

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/augment-psvi"

    .line 157
    aput-object v1, v0, v4

    const-string/jumbo v1, "http://apache.org/xml/features/continue-after-fatal-error"

    .line 158
    aput-object v1, v0, v5

    const-string/jumbo v1, "http://apache.org/xml/features/allow-java-encodings"

    .line 159
    aput-object v1, v0, v6

    const-string/jumbo v1, "http://apache.org/xml/features/standard-uri-conformant"

    .line 160
    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "http://apache.org/xml/features/disallow-doctype-decl"

    .line 161
    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "http://apache.org/xml/features/generate-synthetic-annotations"

    .line 162
    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "http://apache.org/xml/features/validate-annotations"

    .line 163
    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "http://apache.org/xml/features/honour-all-schemaLocations"

    .line 164
    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "http://apache.org/xml/features/namespace-growth"

    .line 165
    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "http://apache.org/xml/features/internal/tolerate-duplicates"

    .line 166
    aput-object v2, v0, v1

    .line 155
    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/16 v0, 0xc

    .line 214
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-manager"

    .line 215
    aput-object v1, v0, v3

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    .line 216
    aput-object v1, v0, v4

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-reporter"

    .line 217
    aput-object v1, v0, v5

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-handler"

    .line 218
    aput-object v1, v0, v6

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 219
    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 220
    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "http://apache.org/xml/properties/schema/external-schemaLocation"

    .line 221
    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    .line 222
    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 223
    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "http://apache.org/xml/properties/security-manager"

    .line 224
    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "http://apache.org/xml/properties/locale"

    .line 225
    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    .line 226
    aput-object v2, v0, v1

    .line 214
    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 227
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 271
    new-instance v1, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    new-instance v3, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V

    .line 272
    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 289
    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V

    .line 290
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 275
    new-instance v3, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V

    .line 276
    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    .line 233
    new-instance v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 234
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    .line 235
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fUserEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 236
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    .line 237
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    .line 238
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;

    .line 240
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    .line 242
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    .line 244
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    .line 246
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    .line 251
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    .line 254
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    .line 258
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLocale:Ljava/util/Locale;

    .line 261
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    .line 264
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    .line 267
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    .line 300
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->addRecognizedProperties([Ljava/lang/String;)V

    .line 302
    if-nez p1, :cond_0

    .line 306
    :goto_0
    if-eqz p2, :cond_1

    .line 312
    :goto_1
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 314
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 317
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    .line 320
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    if-nez v0, :cond_3

    .line 325
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    .line 327
    if-eqz p4, :cond_4

    .line 330
    :goto_4
    iput-object p4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    .line 331
    if-eqz p5, :cond_5

    .line 334
    :goto_5
    iput-object p5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    .line 337
    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;-><init>()V

    .line 339
    if-eqz p6, :cond_6

    .line 342
    :goto_6
    iput-object p6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    .line 343
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "flag1"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;-><init>(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    .line 345
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    .line 347
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    .line 348
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 307
    :cond_1
    new-instance p2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    .line 308
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLocale:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/error-handler"

    .line 309
    new-instance v1, Lmf/org/apache/xerces/util/DefaultErrorHandler;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/DefaultErrorHandler;-><init>()V

    invoke-virtual {p2, v0, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 315
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/xml-schema-1"

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    goto :goto_2

    .line 321
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-manager"

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 328
    :cond_4
    new-instance p4, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {p4}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;-><init>()V

    goto :goto_4

    .line 332
    :cond_5
    new-instance p5, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    invoke-direct {p5, p0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;-><init>(Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;)V

    goto :goto_5

    .line 340
    :cond_6
    new-instance p6, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    invoke-direct {p6, v0}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;-><init>(Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;)V

    goto :goto_6
.end method

.method private initGrammarBucket()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 1103
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-nez v0, :cond_1

    .line 1118
    :cond_0
    return-void

    .line 1104
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v4

    .line 1105
    if-nez v4, :cond_2

    move v1, v2

    :goto_0
    move v3, v2

    .line 1106
    :goto_1
    if-ge v3, v1, :cond_0

    .line 1109
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    aget-object v0, v4, v3

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1106
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1105
    :cond_2
    array-length v0, v4

    move v1, v0

    goto :goto_0

    .line 1112
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/xml-schema-1"

    const-string/jumbo v6, "GrammarConflict"

    invoke-virtual {v0, v5, v6, v7, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_2
.end method

.method private parserSettingsUpdated(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)Z
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    if-ne p1, v0, :cond_0

    .line 1099
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v0, "http://apache.org/xml/features/internal/parser-settings"

    .line 1095
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 633
    if-nez p0, :cond_1

    .line 657
    :cond_0
    :goto_0
    if-nez p1, :cond_2

    .line 676
    :goto_1
    return-void

    .line 638
    :cond_1
    :try_start_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    .line 640
    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 641
    invoke-static {p0, p2, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->tokenizeSchemaLocationStr(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/TR/xml-schema-1"

    const-string/jumbo v1, "SchemaLocation"

    const/4 v2, 0x1

    .line 645
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 643
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    const-string/jumbo v1, "http://www.w3.org/TR/xml-schema-1"

    .line 652
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 651
    invoke-virtual {p3, v1, v2, v0, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    .line 660
    :cond_2
    :try_start_1
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    .line 661
    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    .line 662
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    .line 663
    if-eqz v0, :cond_3

    .line 667
    :goto_2
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->addLocation(Ljava/lang/String;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 668
    :catch_1
    move-exception v0

    const-string/jumbo v1, "http://www.w3.org/TR/xml-schema-1"

    .line 672
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 671
    invoke-virtual {p3, v1, v2, v0, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_1

    .line 664
    :cond_3
    :try_start_2
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;-><init>()V

    .line 665
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method private processJAXPSchemaSource(Ljava/util/Hashtable;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 722
    iput-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    .line 723
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 727
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 730
    if-eqz v0, :cond_3

    const-class v1, Ljava/lang/Object;

    .line 764
    if-ne v0, v1, :cond_c

    .line 784
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 786
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 787
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_15

    .line 788
    aget-object v1, v0, v2

    instance-of v1, v1, Ljava/io/InputStream;

    if-eqz v1, :cond_d

    .line 790
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    aget-object v5, v0, v2

    invoke-virtual {v1, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 791
    if-nez v1, :cond_e

    .line 796
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    .line 797
    aget-object v1, v0, v2

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->xsdToXMLInputSource(Ljava/lang/Object;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v1

    .line 798
    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    .line 799
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-short v11, v6, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    .line 800
    if-nez v5, :cond_f

    .line 808
    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v5, v1, v6, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->parseSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    .line 810
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    if-nez v5, :cond_10

    .line 813
    :goto_3
    if-nez v1, :cond_11

    .line 787
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 724
    :cond_2
    return-void

    .line 732
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/InputStream;

    if-eqz v0, :cond_5

    .line 734
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 735
    if-nez v0, :cond_6

    .line 740
    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    .line 741
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->xsdToXMLInputSource(Ljava/lang/Object;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v0

    .line 742
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 743
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-short v11, v2, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    .line 744
    if-nez v1, :cond_7

    .line 750
    :goto_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {p0, v1, v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 752
    if-nez v0, :cond_8

    .line 762
    :goto_7
    return-void

    .line 733
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    instance-of v0, v0, Lorg/xml/sax/InputSource;

    if-nez v0, :cond_4

    goto :goto_5

    .line 736
    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    .line 737
    return-void

    .line 745
    :cond_7
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    .line 746
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLiteralSystemId(Ljava/lang/String;)V

    .line 747
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setExpandedSystemId(Ljava/lang/String;)V

    .line 748
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    new-array v4, v10, [Ljava/lang/String;

    aput-object v1, v4, v3

    iput-object v4, v2, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    goto :goto_6

    .line 753
    :cond_8
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    instance-of v1, v1, Ljava/io/InputStream;

    if-eqz v1, :cond_a

    .line 755
    :cond_9
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    if-nez v1, :cond_b

    .line 760
    :goto_8
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto :goto_7

    .line 754
    :cond_a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    instance-of v1, v1, Lorg/xml/sax/InputSource;

    if-nez v1, :cond_9

    goto :goto_8

    .line 757
    :cond_b
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    goto :goto_8

    :cond_c
    const-class v1, Ljava/lang/String;

    .line 765
    if-eq v0, v1, :cond_0

    const-class v1, Ljava/io/File;

    .line 766
    if-eq v0, v1, :cond_0

    const-class v1, Ljava/io/InputStream;

    .line 767
    if-eq v0, v1, :cond_0

    const-class v1, Lorg/xml/sax/InputSource;

    .line 768
    if-eq v0, v1, :cond_0

    const-class v1, Ljava/io/File;

    .line 769
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/io/InputStream;

    .line 770
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lorg/xml/sax/InputSource;

    .line 771
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 772
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_0

    .line 775
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v1

    .line 776
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    .line 778
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string/jumbo v5, "jaxp12-schema-source-type.2"

    .line 779
    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    .line 778
    invoke-interface {v1, v4, v5, v6}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 776
    invoke-direct {v2, v10, v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 789
    :cond_d
    aget-object v1, v0, v2

    instance-of v1, v1, Lorg/xml/sax/InputSource;

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 792
    :cond_e
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto/16 :goto_4

    .line 801
    :cond_f
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    .line 802
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLiteralSystemId(Ljava/lang/String;)V

    .line 803
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setExpandedSystemId(Ljava/lang/String;)V

    .line 804
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    new-array v7, v10, [Ljava/lang/String;

    aput-object v5, v7, v3

    iput-object v7, v6, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    goto/16 :goto_2

    .line 811
    :cond_10
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v5, v6, v7, v8}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    goto/16 :goto_3

    .line 814
    :cond_11
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v5

    .line 815
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 822
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    aget-object v5, v0, v2

    instance-of v5, v5, Ljava/io/InputStream;

    if-eqz v5, :cond_14

    .line 826
    :cond_12
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    :goto_9
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto/16 :goto_4

    .line 817
    :cond_13
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v0

    .line 818
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "jaxp12-schema-source-ns"

    invoke-interface {v0, v2, v3, v9}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 825
    :cond_14
    aget-object v5, v0, v2

    instance-of v5, v5, Lorg/xml/sax/InputSource;

    if-nez v5, :cond_12

    goto :goto_9

    .line 834
    :cond_15
    return-void
.end method

.method public static resolveDocument(Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 604
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getContextType()S

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 607
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    .line 608
    if-eqz v0, :cond_3

    .line 610
    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    .line 611
    if-nez v0, :cond_4

    move-object v0, v1

    .line 617
    :goto_1
    if-eqz v0, :cond_5

    .line 623
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 624
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLiteralSystemId(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setExpandedSystemId(Ljava/lang/String;)V

    .line 626
    invoke-interface {p2, p0}, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v0

    return-object v0

    .line 605
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fromInstance()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_1

    .line 608
    :cond_3
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_0

    .line 612
    :cond_4
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->getFirstLocation()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 618
    :cond_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v1

    .line 619
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 620
    aget-object v0, v1, v3

    goto :goto_2
.end method

.method private static saxToXMLInputSource(Lorg/xml/sax/InputSource;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 891
    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v1

    .line 892
    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 894
    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v4

    .line 895
    if-nez v4, :cond_0

    .line 900
    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    .line 901
    if-nez v4, :cond_1

    .line 906
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 896
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    return-object v0

    .line 902
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .line 903
    invoke-virtual {p0}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v5

    .line 902
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public static tokenizeSchemaLocationStr(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 685
    if-nez p0, :cond_1

    .line 708
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 686
    :cond_1
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v0, " \n\t\r"

    invoke-direct {v3, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 690
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 693
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 694
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    .line 695
    if-eqz v0, :cond_3

    move-object v2, v0

    .line 699
    :goto_1
    if-nez p2, :cond_4

    move-object v0, v1

    .line 705
    :goto_2
    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->addLocation(Ljava/lang/String;)V

    goto :goto_0

    .line 691
    :cond_2
    return v4

    .line 696
    :cond_3
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;-><init>()V

    .line 697
    invoke-virtual {p1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    goto :goto_1

    .line 701
    :cond_4
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v1, p2, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    .line 702
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method private xsdToXMLInputSource(Ljava/lang/Object;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 837
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 859
    instance-of v0, p1, Lorg/xml/sax/InputSource;

    if-nez v0, :cond_2

    .line 862
    instance-of v0, p1, Ljava/io/InputStream;

    if-nez v0, :cond_3

    .line 866
    instance-of v0, p1, Ljava/io/File;

    if-nez v0, :cond_4

    .line 880
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v1

    .line 881
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    .line 883
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "jaxp12-schema-source-type.1"

    .line 884
    new-array v5, v8, [Ljava/lang/Object;

    if-nez p1, :cond_5

    const-string/jumbo v0, "null"

    :goto_0
    aput-object v0, v5, v7

    .line 883
    invoke-interface {v1, v3, v4, v5}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 881
    invoke-direct {v2, v8, v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 840
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 841
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    .line 842
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0, v1, p1, v1, v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 852
    :goto_1
    if-eqz v0, :cond_1

    .line 857
    return-object v0

    .line 846
    :catch_0
    move-exception v0

    .line 848
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/xml-schema-1"

    const-string/jumbo v3, "schema_reference.4"

    .line 850
    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v7

    .line 848
    invoke-virtual {v0, v2, v3, v4, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move-object v0, v1

    goto :goto_1

    .line 855
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v0, v1, p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 860
    :cond_2
    check-cast p1, Lorg/xml/sax/InputSource;

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->saxToXMLInputSource(Lorg/xml/sax/InputSource;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v0

    return-object v0

    .line 863
    :cond_3
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-object v4, p1

    .line 864
    check-cast v4, Ljava/io/InputStream;

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    .line 863
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    .line 867
    :cond_4
    check-cast p1, Ljava/io/File;

    .line 868
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->filepath2URI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 871
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 878
    :goto_2
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-object v3, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    .line 872
    :catch_1
    move-exception v0

    .line 874
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/xml-schema-1"

    const-string/jumbo v4, "schema_reference.4"

    .line 875
    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 874
    invoke-virtual {v0, v3, v4, v5, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move-object v4, v1

    goto :goto_2

    .line 884
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1204
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string/jumbo v0, "error-handler"

    .line 1220
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1231
    :cond_0
    return v2

    :cond_1
    const-string/jumbo v0, "validate"

    .line 1205
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1215
    :cond_2
    return v2

    :cond_3
    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema-full-checking"

    .line 1206
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://apache.org/xml/features/validate-annotations"

    .line 1207
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://apache.org/xml/features/continue-after-fatal-error"

    .line 1208
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://apache.org/xml/features/allow-java-encodings"

    .line 1209
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://apache.org/xml/features/standard-uri-conformant"

    .line 1210
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://apache.org/xml/features/generate-synthetic-annotations"

    .line 1211
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://apache.org/xml/features/honour-all-schemaLocations"

    .line 1212
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://apache.org/xml/features/namespace-growth"

    .line 1213
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://apache.org/xml/features/internal/tolerate-duplicates"

    .line 1214
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1218
    return v1

    :cond_4
    const-string/jumbo v0, "resource-resolver"

    .line 1221
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/symbol-table"

    .line 1222
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/error-reporter"

    .line 1223
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/error-handler"

    .line 1224
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 1225
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 1226
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://apache.org/xml/properties/schema/external-schemaLocation"

    .line 1227
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    .line 1228
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 1229
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    .line 1230
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1233
    return v1
.end method

.method dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 6

    .prologue
    .line 1385
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1391
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1398
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1405
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1406
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    .line 1405
    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    :goto_0
    return-object v0

    .line 1386
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1387
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v4

    const-string/jumbo v5, "UTF-16"

    .line 1386
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    goto :goto_0

    .line 1392
    :cond_2
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1393
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1394
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getEncoding()Ljava/lang/String;

    move-result-object v5

    .line 1392
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 1398
    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1399
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1400
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/StringReader;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "UTF-16"

    .line 1399
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getConfig()Lmf/org/w3c/dom/DOMConfiguration;
    .locals 0

    .prologue
    .line 1125
    return-object p0
.end method

.method public getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fUserEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v0

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
    .line 368
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema/augment-psvi"

    .line 949
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 952
    return-object v0

    .line 950
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getGlobalElementDecl(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1414
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 1415
    if-nez v0, :cond_0

    .line 1418
    return-object v2

    .line 1416
    :cond_0
    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const-string/jumbo v1, "error-handler"

    .line 1241
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "resource-resolver"

    .line 1244
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1249
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1250
    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    .line 1242
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-nez v1, :cond_1

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v0

    goto :goto_1

    .line 1245
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    if-nez v1, :cond_3

    :goto_2
    return-object v0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->getEntityResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;

    move-result-object v0

    goto :goto_2

    .line 1250
    :cond_4
    :try_start_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1254
    :try_start_2
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 1255
    return-object v0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "FEATURE_NOT_SUPPORTED"

    const/4 v2, 0x1

    .line 1261
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 1258
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1262
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public getParameterNames()Lmf/org/w3c/dom/DOMStringList;
    .locals 2

    .prologue
    .line 1271
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    if-eqz v0, :cond_0

    .line 1295
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    return-object v0

    .line 1272
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "validate"

    .line 1273
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "error-handler"

    .line 1274
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "resource-resolver"

    .line 1275
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    .line 1276
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-reporter"

    .line 1277
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-handler"

    .line 1278
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 1279
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 1280
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/properties/schema/external-schemaLocation"

    .line 1281
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    .line 1282
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 1283
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema-full-checking"

    .line 1284
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/features/continue-after-fatal-error"

    .line 1285
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/features/allow-java-encodings"

    .line 1286
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/features/standard-uri-conformant"

    .line 1287
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/features/validate-annotations"

    .line 1288
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/features/generate-synthetic-annotations"

    .line 1289
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/features/honour-all-schemaLocations"

    .line 1290
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/features/namespace-growth"

    .line 1291
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "http://apache.org/xml/features/internal/tolerate-duplicates"

    .line 1292
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    new-instance v1, Lmf/org/apache/xerces/dom/DOMStringListImpl;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/dom/DOMStringListImpl;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    goto/16 :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 960
    return-object v0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public load(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 1

    .prologue
    .line 1133
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    .line 1134
    check-cast v0, Lmf/org/apache/xerces/xni/grammars/XSGrammar;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/grammars/XSGrammar;->toXSModel()Lmf/org/apache/xerces/xs/XSModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 1136
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    .line 1137
    return-object v0
.end method

.method public loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 536
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 537
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    .line 538
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    .line 539
    const/4 v1, 0x3

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    .line 540
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setLiteralSystemId(Ljava/lang/String;)V

    .line 543
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 547
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;

    .line 548
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 547
    invoke-static {v2, v3, v1, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    .line 549
    invoke-virtual {p0, v0, p1, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 551
    if-nez v0, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-object v0

    .line 551
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string/jumbo v2, "http://www.w3.org/2001/XMLSchema"

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    .line 555
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 556
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    goto :goto_0
.end method

.method public loadGrammar([Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 513
    array-length v1, p1

    const/4 v0, 0x0

    .line 514
    :goto_0
    if-ge v0, v1, :cond_0

    .line 515
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_0
    return-void
.end method

.method public loadInputList(Lmf/org/apache/xerces/xs/LSInputList;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 4

    .prologue
    .line 1145
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/LSInputList;->getLength()I

    move-result v2

    .line 1146
    new-array v3, v2, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    const/4 v0, 0x0

    move v1, v0

    .line 1147
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1149
    :try_start_0
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xs/LSInputList;->item(I)Lmf/org/w3c/dom/ls/LSInput;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aput-object v0, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1150
    :catch_0
    move-exception v0

    .line 1151
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    .line 1152
    return-object v0

    .line 1155
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;-><init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object v0
.end method

.method loadSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 579
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    if-eqz v0, :cond_0

    .line 582
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p2, p1, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->parseSchema(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    .line 584
    return-object v0

    .line 580
    :cond_0
    invoke-direct {p0, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->processJAXPSchemaSource(Ljava/util/Hashtable;)V

    goto :goto_0
.end method

.method public loadURI(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1163
    :try_start_0
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    .line 1164
    check-cast v0, Lmf/org/apache/xerces/xni/grammars/XSGrammar;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/grammars/XSGrammar;->toXSModel()Lmf/org/apache/xerces/xs/XSModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 1167
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    .line 1168
    return-object v3
.end method

.method public loadURIList(Lmf/org/apache/xerces/xs/StringList;)Lmf/org/apache/xerces/xs/XSModel;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1176
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/StringList;->getLength()I

    move-result v2

    .line 1177
    new-array v3, v2, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    const/4 v0, 0x0

    move v1, v0

    .line 1178
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1181
    :try_start_0
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xs/StringList;->item(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, v5, v4, v6}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    .line 1180
    aput-object v0, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reportDOMFatalError(Ljava/lang/Exception;)V

    .line 1184
    return-object v7

    .line 1187
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;-><init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    return-object v0
.end method

.method reportDOMFatalError(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 1191
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-nez v0, :cond_0

    .line 1198
    :goto_0
    return-void

    .line 1192
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    .line 1193
    iput-object p1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 1194
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 1195
    const/4 v1, 0x3

    iput-short v1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 1196
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    goto :goto_0
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 968
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->reset()V

    .line 970
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->reset()V

    .line 972
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    if-nez v0, :cond_1

    .line 974
    :cond_0
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    .line 976
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->initGrammarBucket()V

    .line 977
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-nez v0, :cond_3

    .line 980
    :goto_0
    return-void

    .line 972
    :cond_1
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->parserSettingsUpdated(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/entity-manager"

    .line 986
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/error-reporter"

    .line 989
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    :try_start_0
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    .line 994
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 997
    :goto_1
    if-eqz v1, :cond_4

    .line 1003
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setDVFactory(Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;)V

    :try_start_1
    const-string/jumbo v0, "http://apache.org/xml/properties/schema/external-schemaLocation"

    .line 1007
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    const-string/jumbo v0, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    .line 1009
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1008
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    :try_start_2
    const-string/jumbo v0, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 1016
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    .line 1017
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    :try_start_3
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 1026
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1030
    :goto_5
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->initGrammarBucket()V

    :try_start_4
    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema/augment-psvi"

    .line 1034
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v0

    .line 1045
    :goto_6
    if-eqz v0, :cond_2

    .line 1059
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V

    .line 1060
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V

    .line 1061
    instance-of v0, v1, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;

    if-nez v0, :cond_6

    :goto_7
    :try_start_5
    const-string/jumbo v0, "http://apache.org/xml/features/continue-after-fatal-error"

    .line 1068
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1069
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v1, v3, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setFeature(Ljava/lang/String;Z)V
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_7

    :goto_8
    :try_start_6
    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema-full-checking"

    .line 1074
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1081
    :goto_9
    :try_start_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const-string/jumbo v1, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setGenerateSyntheticAnnotations(Z)V
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1086
    :goto_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 1087
    return-void

    .line 978
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->reset()V

    goto/16 :goto_0

    .line 995
    :catch_0
    move-exception v0

    move-object v1, v3

    goto/16 :goto_1

    .line 998
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDefaultSchemaDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    if-eqz v0, :cond_5

    .line 1001
    :goto_b
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDefaultSchemaDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    goto/16 :goto_2

    .line 999
    :cond_5
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getInstance()Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fDefaultSchemaDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    goto :goto_b

    .line 1010
    :catch_1
    move-exception v0

    .line 1011
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    .line 1012
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;

    goto :goto_3

    .line 1019
    :catch_2
    move-exception v0

    .line 1020
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    .line 1021
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    goto :goto_4

    .line 1027
    :catch_3
    move-exception v0

    .line 1028
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    goto :goto_5

    .line 1035
    :catch_4
    move-exception v0

    move v0, v2

    .line 1036
    goto :goto_6

    :cond_6
    move-object v0, v1

    .line 1062
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;->setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V

    goto :goto_7

    .line 1075
    :catch_5
    move-exception v0

    .line 1077
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fIsCheckedFully:Z

    goto :goto_9

    .line 1082
    :catch_6
    move-exception v0

    .line 1084
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setGenerateSyntheticAnnotations(Z)V

    goto :goto_a

    .line 1070
    :catch_7
    move-exception v0

    goto :goto_8
.end method

.method public setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 2

    .prologue
    .line 491
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fUserEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 492
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 493
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    return-void
.end method

.method public setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 478
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    const-string/jumbo v0, "http://apache.org/xml/features/continue-after-fatal-error"

    .line 383
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://apache.org/xml/features/generate-synthetic-annotations"

    .line 386
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 389
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    .line 390
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v0, v1, p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->setGenerateSyntheticAnnotations(Z)V

    goto :goto_0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 462
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLocale:Ljava/util/Locale;

    .line 463
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    .line 464
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
    const/16 v4, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1302
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string/jumbo v0, "error-handler"

    .line 1319
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "resource-resolver"

    .line 1338
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1358
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1370
    return-void

    .line 1303
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v1, "validate"

    .line 1304
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1308
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1317
    return-void

    .line 1304
    :cond_2
    if-eqz v0, :cond_1

    .line 1305
    return-void

    .line 1309
    :catch_0
    move-exception v0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "FEATURE_NOT_SUPPORTED"

    .line 1314
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 1311
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1315
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v4, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 1320
    :cond_3
    instance-of v0, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v0, :cond_4

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "FEATURE_NOT_SUPPORTED"

    .line 1332
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 1329
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1333
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v4, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 1322
    :cond_4
    :try_start_2
    new-instance v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    check-cast p2, Lmf/org/w3c/dom/DOMErrorHandler;

    invoke-direct {v0, p2}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;-><init>(Lmf/org/w3c/dom/DOMErrorHandler;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    .line 1323
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1335
    :goto_0
    return-void

    .line 1339
    :cond_5
    instance-of v0, p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-nez v0, :cond_6

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "FEATURE_NOT_SUPPORTED"

    .line 1351
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 1348
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1352
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v4, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 1341
    :cond_6
    :try_start_3
    new-instance v0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    check-cast p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    invoke-direct {v0, p2}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;-><init>(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    .line 1342
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fResourceResolver:Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1354
    :goto_1
    return-void

    .line 1359
    :catch_1
    move-exception v0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "FEATURE_NOT_SUPPORTED"

    .line 1365
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 1362
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1366
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v4, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 1343
    :catch_2
    move-exception v0

    goto :goto_1

    .line 1324
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fSettingsChanged:Z

    .line 425
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fLoaderConfig:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 426
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 430
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://apache.org/xml/properties/schema/external-schemaLocation"

    .line 433
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    .line 436
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "http://apache.org/xml/properties/locale"

    .line 439
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 442
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/error-reporter"

    .line 445
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPSource:Ljava/lang/Object;

    .line 428
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fJAXPProcessed:Z

    goto :goto_0

    .line 431
    :cond_2
    check-cast p2, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    goto :goto_0

    .line 434
    :cond_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalSchemas:Ljava/lang/String;

    goto :goto_0

    .line 437
    :cond_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fExternalNoNSSchema:Ljava/lang/String;

    goto :goto_0

    .line 440
    :cond_5
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->setLocale(Ljava/util/Locale;)V

    goto :goto_0

    .line 443
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 446
    :cond_7
    check-cast p2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 447
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/xml-schema-1"

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    goto :goto_0
.end method
