.class public Lmf/org/apache/xerces/parsers/DOMParserImpl;
.super Lmf/org/apache/xerces/parsers/AbstractDOMParser;
.source "DOMParserImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/ls/LSParser;
.implements Lmf/org/w3c/dom/DOMConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;,
        Lmf/org/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field protected static final DISALLOW_DOCTYPE_DECL_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final PSVI_AUGMENT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final XMLSCHEMA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final XMLSCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"


# instance fields
.field private abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

.field private abortNow:Z

.field private currentThread:Ljava/lang/Thread;

.field protected fBusy:Z

.field protected fNamespaceDeclarations:Z

.field private fNullFilterInUse:Z

.field private fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

.field private fSchemaLocation:Ljava/lang/String;

.field protected fSchemaType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string/jumbo v0, "mf.org.apache.xerces.xni.parser.XMLParserConfiguration"

    .line 168
    invoke-static {v0, p1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 171
    if-nez p2, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 183
    sget-object v0, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 187
    sget-object v2, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    .line 185
    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 180
    sget-object v2, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    .line 178
    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    sget-object v0, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "mf.org.apache.xerces.xni.parser.XMLParserConfiguration"

    const-string/jumbo v1, "mf.org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    .line 264
    invoke-static {v0, v1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 267
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v0, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "mf.org.apache.xerces.xni.parser.XMLParserConfiguration"

    const-string/jumbo v1, "mf.org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    .line 280
    invoke-static {v0, v1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 283
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v0, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 197
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 138
    iput-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNamespaceDeclarations:Z

    .line 142
    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    .line 144
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    .line 146
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    .line 152
    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    .line 155
    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    .line 156
    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    const/16 v0, 0xa

    .line 200
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "canonical-form"

    .line 201
    aput-object v1, v0, v3

    const-string/jumbo v1, "cdata-sections"

    .line 202
    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "charset-overrides-xml-encoding"

    .line 203
    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "infoset"

    .line 204
    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "namespace-declarations"

    .line 205
    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "split-cdata-sections"

    .line 206
    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "supported-media-types-only"

    .line 207
    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "certified"

    .line 208
    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "well-formed"

    .line 209
    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "ignore-unknown-character-denormalizations"

    .line 210
    aput-object v2, v0, v1

    .line 213
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/dom/defer-node-expansion"

    invoke-interface {v0, v1, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 227
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "namespace-declarations"

    invoke-interface {v0, v1, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 228
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "well-formed"

    invoke-interface {v0, v1, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 229
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/include-comments"

    invoke-interface {v0, v1, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 230
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v0, v1, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 231
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    invoke-interface {v0, v1, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 233
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {v0, v1, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 234
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v0, v1, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 235
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v0, v1, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 238
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "canonical-form"

    invoke-interface {v0, v1, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 239
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "charset-overrides-xml-encoding"

    invoke-interface {v0, v1, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 240
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "split-cdata-sections"

    invoke-interface {v0, v1, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 241
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "supported-media-types-only"

    invoke-interface {v0, v1, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 242
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "ignore-unknown-character-denormalizations"

    invoke-interface {v0, v1, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 246
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "certified"

    invoke-interface {v0, v1, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 252
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/normalized-value"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;
    .locals 4

    .prologue
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "FEATURE_NOT_FOUND"

    const/4 v2, 0x1

    .line 1412
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 1409
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1413
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

    .line 1403
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 1400
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1404
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v1
.end method

.method private static newInvalidStateError()Lmf/org/w3c/dom/DOMException;
    .locals 3

    .prologue
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "INVALID_STATE_ERR"

    const/4 v2, 0x0

    .line 1392
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1395
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0xb

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method private static newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;
    .locals 4

    .prologue
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "TYPE_MISMATCH_ERR"

    const/4 v2, 0x1

    .line 1421
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 1418
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1422
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x11

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v1
.end method

.method private restoreHandlers()V
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1030
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 1031
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 1032
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1128
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    if-nez v0, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return-void

    .line 1129
    :cond_1
    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    .line 1130
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    .line 1132
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    if-eqz v0, :cond_2

    .line 1135
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 1136
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 1137
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    .line 1138
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 1141
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1133
    :cond_2
    new-instance v0, Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;-><init>(Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;)V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    goto :goto_1

    .line 1139
    :cond_3
    sget-object v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v0
.end method

.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 770
    if-eqz p2, :cond_0

    .line 774
    instance-of v2, p2, Ljava/lang/Boolean;

    if-nez v2, :cond_1

    const-string/jumbo v2, "error-handler"

    .line 829
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "resource-resolver"

    .line 835
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "schema-type"

    .line 841
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "schema-location"

    .line 849
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string/jumbo v2, "http://apache.org/xml/properties/dom/document-class-name"

    .line 854
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 860
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 861
    return v0

    .line 771
    :cond_0
    return v0

    .line 775
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v3, "supported-media-types-only"

    .line 776
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 781
    :cond_2
    if-nez v2, :cond_5

    :goto_0
    return v0

    :cond_3
    const-string/jumbo v3, "normalize-characters"

    .line 777
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "check-character-normalization"

    .line 778
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "canonical-form"

    .line 779
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "well-formed"

    .line 783
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 786
    :cond_4
    if-nez v2, :cond_8

    :goto_1
    return v1

    :cond_5
    move v0, v1

    .line 781
    goto :goto_0

    :cond_6
    const-string/jumbo v3, "ignore-unknown-character-denormalizations"

    .line 784
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v2, "cdata-sections"

    .line 788
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 801
    :cond_7
    return v0

    :cond_8
    move v1, v0

    .line 786
    goto :goto_1

    :cond_9
    const-string/jumbo v2, "charset-overrides-xml-encoding"

    .line 789
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "comments"

    .line 790
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "datatype-normalization"

    .line 791
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "disallow-doctype"

    .line 792
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "entities"

    .line 793
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "infoset"

    .line 794
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "namespaces"

    .line 795
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "namespace-declarations"

    .line 796
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "validate"

    .line 797
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "validate-if-schema"

    .line 798
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "element-content-whitespace"

    .line 799
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "xml-declaration"

    .line 800
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    :try_start_1
    const-string/jumbo v2, "http://apache.org/xml/features/honour-all-schemaLocations"

    .line 809
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "http://apache.org/xml/features/namespace-growth"

    .line 812
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "http://apache.org/xml/features/internal/tolerate-duplicates"

    .line 815
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 819
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 821
    :goto_2
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    .line 822
    return v0

    :cond_a
    const-string/jumbo v2, "http://apache.org/xml/features/honour-all-schemaLocations"

    goto :goto_2

    :cond_b
    const-string/jumbo v2, "http://apache.org/xml/features/namespace-growth"

    goto :goto_2

    :cond_c
    const-string/jumbo v2, "http://apache.org/xml/features/internal/tolerate-duplicates"
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 825
    return v1

    .line 830
    :cond_d
    instance-of v2, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v2, :cond_f

    .line 831
    :cond_e
    return v0

    .line 830
    :cond_f
    if-eqz p2, :cond_e

    .line 833
    return v1

    .line 836
    :cond_10
    instance-of v2, p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-eqz v2, :cond_12

    .line 837
    :cond_11
    return v0

    .line 836
    :cond_12
    if-eqz p2, :cond_11

    .line 839
    return v1

    .line 842
    :cond_13
    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_15

    .line 844
    :cond_14
    if-eqz p2, :cond_16

    .line 847
    return v1

    .line 843
    :cond_15
    sget-object v2, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 845
    :cond_16
    :goto_3
    return v0

    .line 844
    :cond_17
    sget-object v2, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_3

    .line 850
    :cond_18
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_1a

    .line 851
    :cond_19
    return v0

    .line 850
    :cond_1a
    if-eqz p2, :cond_19

    .line 852
    return v1

    .line 855
    :cond_1b
    return v0

    .line 861
    :catch_1
    move-exception v0

    .line 864
    return v1
.end method

.method dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 6

    .prologue
    .line 1071
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1077
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1084
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1090
    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1091
    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1097
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-nez v0, :cond_8

    .line 1104
    :goto_1
    new-instance v0, Lmf/org/w3c/dom/ls/LSException;

    const-string/jumbo v1, "no-input-specified"

    const/16 v2, 0x51

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 1072
    :cond_2
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1073
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v4

    const-string/jumbo v5, "UTF-16"

    .line 1072
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    .line 1106
    :goto_2
    return-object v0

    .line 1078
    :cond_3
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1079
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1080
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getEncoding()Ljava/lang/String;

    move-result-object v5

    .line 1078
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_2

    .line 1084
    :cond_4
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1085
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1086
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/StringReader;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "UTF-16"

    .line 1085
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    goto :goto_2

    .line 1090
    :cond_5
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1092
    :cond_6
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1093
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    .line 1092
    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1091
    :cond_7
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_6

    goto/16 :goto_0

    .line 1098
    :cond_8
    new-instance v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    const-string/jumbo v1, "no-input-specified"

    .line 1099
    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    const-string/jumbo v1, "no-input-specified"

    .line 1100
    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 1101
    const/4 v1, 0x3

    iput-short v1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 1102
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    goto/16 :goto_1
.end method

.method public getAsync()Z
    .locals 1

    .prologue
    .line 1113
    const/4 v0, 0x0

    return v0
.end method

.method public getBusy()Z
    .locals 1

    .prologue
    .line 1120
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    return v0
.end method

.method public getDomConfig()Lmf/org/w3c/dom/DOMConfiguration;
    .locals 0

    .prologue
    .line 323
    return-object p0
.end method

.method public getFilter()Lmf/org/w3c/dom/ls/LSParserFilter;
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    goto :goto_0
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

    const/4 v0, 0x0

    const-string/jumbo v1, "comments"

    .line 630
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "datatype-normalization"

    .line 635
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "entities"

    .line 640
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "namespaces"

    .line 645
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "validate"

    .line 650
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "validate-if-schema"

    .line 655
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, "element-content-whitespace"

    .line 660
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string/jumbo v1, "disallow-doctype"

    .line 665
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string/jumbo v1, "infoset"

    .line 670
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string/jumbo v0, "cdata-sections"

    .line 685
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "check-character-normalization"

    .line 689
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 691
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 631
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/include-comments"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 633
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 631
    :goto_0
    return-object v0

    .line 632
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 636
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 638
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 636
    :goto_1
    return-object v0

    .line 637
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 641
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 643
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 641
    :goto_2
    return-object v0

    .line 642
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 646
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 648
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 646
    :goto_3
    return-object v0

    .line 647
    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    .line 651
    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 653
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 651
    :goto_4
    return-object v0

    .line 652
    :cond_a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    .line 656
    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 658
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 656
    :goto_5
    return-object v0

    .line 657
    :cond_c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    .line 661
    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 663
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 661
    :goto_6
    return-object v0

    .line 662
    :cond_e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    .line 666
    :cond_f
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 668
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 666
    :goto_7
    return-object v0

    .line 667
    :cond_10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    .line 675
    :cond_11
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://xml.org/sax/features/namespaces"

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 683
    :cond_12
    :goto_8
    if-nez v0, :cond_14

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_9
    return-object v0

    .line 676
    :cond_13
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "namespace-declarations"

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 677
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/include-comments"

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 678
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 679
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 680
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 681
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 682
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v0, 0x1

    .line 675
    goto :goto_8

    .line 683
    :cond_14
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_9

    .line 686
    :cond_15
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 687
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 686
    :goto_a
    return-object v0

    .line 687
    :cond_16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_17
    const-string/jumbo v0, "normalize-characters"

    .line 690
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "namespace-declarations"

    .line 693
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 700
    :cond_18
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 702
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 700
    :goto_b
    return-object v0

    :cond_19
    const-string/jumbo v0, "well-formed"

    .line 694
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "ignore-unknown-character-denormalizations"

    .line 695
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "canonical-form"

    .line 696
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "supported-media-types-only"

    .line 697
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "split-cdata-sections"

    .line 698
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "charset-overrides-xml-encoding"

    .line 699
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "error-handler"

    .line 704
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "resource-resolver"

    .line 710
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "schema-type"

    .line 722
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "schema-location"

    .line 726
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/symbol-table"

    .line 729
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string/jumbo v0, "http://apache.org/xml/properties/dom/document-class-name"

    .line 732
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string/jumbo v0, "http://apache.org/xml/features/honour-all-schemaLocations"

    .line 741
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "http://apache.org/xml/features/namespace-growth"

    .line 744
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string/jumbo v0, "http://apache.org/xml/features/internal/tolerate-duplicates"

    .line 747
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 751
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 754
    :goto_c
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 755
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :goto_d
    return-object v0

    .line 701
    :cond_1a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_b

    .line 705
    :cond_1b
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-nez v0, :cond_1c

    .line 708
    return-object v2

    .line 706
    :cond_1c
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v0

    return-object v0

    .line 713
    :cond_1d
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 714
    if-nez v0, :cond_1f

    .line 720
    :cond_1e
    :goto_e
    return-object v2

    .line 715
    :cond_1f
    instance-of v1, v0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    if-eqz v1, :cond_1e

    .line 716
    check-cast v0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->getEntityResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    return-object v0

    .line 723
    :cond_20
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 727
    :cond_21
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    return-object v0

    .line 730
    :cond_22
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 733
    :cond_23
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_24
    const-string/jumbo v0, "http://apache.org/xml/features/honour-all-schemaLocations"

    goto :goto_c

    :cond_25
    const-string/jumbo v0, "http://apache.org/xml/features/namespace-growth"

    goto :goto_c

    :cond_26
    const-string/jumbo v0, "http://apache.org/xml/features/internal/tolerate-duplicates"

    goto :goto_c

    .line 755
    :cond_27
    :try_start_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_d

    .line 754
    :catch_0
    move-exception v1

    .line 761
    :try_start_3
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    .line 765
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v0

    throw v0

    .line 716
    :catch_2
    move-exception v0

    goto :goto_e
.end method

.method public getParameterNames()Lmf/org/w3c/dom/DOMStringList;
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    if-eqz v0, :cond_0

    .line 914
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    return-object v0

    .line 879
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "namespaces"

    .line 882
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "cdata-sections"

    .line 883
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "canonical-form"

    .line 884
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "namespace-declarations"

    .line 885
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "split-cdata-sections"

    .line 886
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "entities"

    .line 888
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "validate-if-schema"

    .line 889
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "validate"

    .line 890
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "datatype-normalization"

    .line 891
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "charset-overrides-xml-encoding"

    .line 893
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "check-character-normalization"

    .line 894
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "supported-media-types-only"

    .line 895
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "ignore-unknown-character-denormalizations"

    .line 896
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "normalize-characters"

    .line 898
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "well-formed"

    .line 899
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "infoset"

    .line 900
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "disallow-doctype"

    .line 901
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "element-content-whitespace"

    .line 902
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "comments"

    .line 903
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "error-handler"

    .line 905
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "resource-resolver"

    .line 906
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "schema-location"

    .line 907
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "schema-type"

    .line 908
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    new-instance v1, Lmf/org/apache/xerces/dom/DOMStringListImpl;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/dom/DOMStringListImpl;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    goto/16 :goto_0
.end method

.method public parse(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 981
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v0

    .line 982
    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    if-nez v1, :cond_1

    .line 987
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    .line 988
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    .line 989
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    .line 990
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    .line 991
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    .line 1022
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    .line 1023
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->dropDocumentReferences()V

    .line 1024
    return-object v0

    .line 983
    :cond_1
    invoke-static {}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newInvalidStateError()Lmf/org/w3c/dom/DOMException;

    move-result-object v0

    throw v0

    .line 991
    :cond_2
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    .line 994
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 996
    :catch_0
    move-exception v0

    .line 997
    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    .line 998
    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-nez v1, :cond_5

    .line 1001
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-nez v1, :cond_6

    .line 1008
    sget-object v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    if-eq v0, v1, :cond_0

    .line 1009
    instance-of v1, v0, Lmf/org/apache/xerces/xni/parser/XMLParseException;

    if-eqz v1, :cond_7

    .line 1019
    :cond_4
    :goto_2
    const/16 v1, 0x51

    invoke-static {v1, v0}, Lmf/org/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/ls/LSException;

    throw v0

    .line 998
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 999
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_1

    .line 1002
    :cond_6
    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    .line 1003
    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->restoreHandlers()V

    .line 1004
    return-object v3

    .line 1009
    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v1, :cond_4

    .line 1010
    new-instance v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    .line 1011
    iput-object v0, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 1012
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 1013
    const/4 v2, 0x3

    iput-short v2, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 1014
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v2

    invoke-interface {v2, v1}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    goto :goto_2
.end method

.method public parseURI(Ljava/lang/String;)Lmf/org/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 927
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    if-nez v0, :cond_1

    .line 931
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v0, v3, p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    .line 934
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    .line 935
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    .line 936
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    .line 937
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    .line 968
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    .line 969
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->dropDocumentReferences()V

    .line 970
    return-object v0

    .line 928
    :cond_1
    invoke-static {}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newInvalidStateError()Lmf/org/w3c/dom/DOMException;

    move-result-object v0

    throw v0

    .line 937
    :cond_2
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    .line 940
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 942
    :catch_0
    move-exception v0

    .line 943
    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    .line 944
    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-nez v1, :cond_5

    .line 947
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-nez v1, :cond_6

    .line 954
    sget-object v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    if-eq v0, v1, :cond_0

    .line 955
    instance-of v1, v0, Lmf/org/apache/xerces/xni/parser/XMLParseException;

    if-eqz v1, :cond_7

    .line 965
    :cond_4
    :goto_2
    const/16 v1, 0x51

    invoke-static {v1, v0}, Lmf/org/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/ls/LSException;

    throw v0

    .line 944
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 945
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_1

    .line 948
    :cond_6
    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    .line 949
    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->restoreHandlers()V

    .line 950
    return-object v3

    .line 955
    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v1, :cond_4

    .line 956
    new-instance v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    .line 957
    iput-object v0, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 958
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 959
    const/4 v2, 0x3

    iput-short v2, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 960
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v2

    invoke-interface {v2, v1}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    goto :goto_2
.end method

.method public parseWithContext(Lmf/org/w3c/dom/ls/LSInput;Lmf/org/w3c/dom/Node;S)Lmf/org/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;,
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation

    .prologue
    .line 1056
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "Not supported"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 298
    invoke-super {p0}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->reset()V

    .line 302
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "namespace-declarations"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    .line 301
    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNamespaceDeclarations:Z

    .line 305
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    if-nez v0, :cond_0

    .line 309
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSkippedElemStack:Ljava/util/Stack;

    if-nez v0, :cond_1

    .line 312
    :goto_1
    iput v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fRejectedElementDepth:I

    .line 313
    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fFilterReject:Z

    .line 314
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    .line 316
    return-void

    .line 306
    :cond_0
    iput-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    .line 307
    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSkippedElemStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    goto :goto_1
.end method

.method public setFilter(Lmf/org/w3c/dom/ls/LSParserFilter;)V
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    if-nez v0, :cond_1

    .line 358
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    .line 360
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSkippedElemStack:Ljava/util/Stack;

    if-eqz v0, :cond_2

    .line 363
    :goto_1
    return-void

    .line 353
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz v0, :cond_0

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    .line 355
    sget-object v0, Lmf/org/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;->INSTANCE:Lmf/org/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    goto :goto_0

    .line 361
    :cond_2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSkippedElemStack:Ljava/util/Stack;

    goto :goto_1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 371
    instance-of v1, p2, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const-string/jumbo v1, "error-handler"

    .line 485
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo v1, "resource-resolver"

    .line 498
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string/jumbo v1, "schema-location"

    .line 510
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string/jumbo v1, "schema-type"

    .line 548
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string/jumbo v1, "http://apache.org/xml/properties/dom/document-class-name"

    .line 589
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 594
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 596
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_5

    .line 597
    return-void

    .line 372
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :try_start_1
    const-string/jumbo v1, "comments"

    .line 374
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "datatype-normalization"

    .line 377
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "entities"

    .line 380
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "disallow-doctype"

    .line 383
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "supported-media-types-only"

    .line 386
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 390
    :cond_1
    if-nez v2, :cond_9

    .line 624
    :cond_2
    :goto_0
    return-void

    .line 375
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/include-comments"

    invoke-interface {v1, v3, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 479
    :catch_0
    move-exception v1

    .line 481
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    .line 378
    :cond_4
    :try_start_2
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {v1, v3, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    .line 381
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v1, v3, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    .line 384
    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-interface {v1, v3, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "normalize-characters"

    .line 387
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "check-character-normalization"

    .line 388
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "canonical-form"

    .line 389
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "namespaces"

    .line 395
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "infoset"

    .line 398
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, "cdata-sections"

    .line 416
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string/jumbo v1, "namespace-declarations"

    .line 419
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string/jumbo v1, "well-formed"

    .line 422
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 424
    :cond_8
    if-nez v2, :cond_2

    .line 425
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    .line 391
    :cond_9
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    .line 396
    :cond_a
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://xml.org/sax/features/namespaces"

    invoke-interface {v1, v3, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 400
    :cond_b
    if-eqz v2, :cond_2

    .line 403
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://xml.org/sax/features/namespaces"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 404
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "namespace-declarations"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 405
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/include-comments"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 406
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 410
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/validation/dynamic"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 411
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 412
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema/normalized-value"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 413
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/create-cdata-nodes"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 417
    :cond_c
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v1, v3, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 420
    :cond_d
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "namespace-declarations"

    invoke-interface {v1, v3, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v1, "ignore-unknown-character-denormalizations"

    .line 423
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "validate"

    .line 430
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string/jumbo v1, "validate-if-schema"

    .line 440
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string/jumbo v1, "element-content-whitespace"

    .line 447
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string/jumbo v1, "psvi"

    .line 450
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string/jumbo v1, "http://apache.org/xml/features/honour-all-schemaLocations"

    .line 464
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string/jumbo v1, "http://apache.org/xml/features/namespace-growth"

    .line 467
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string/jumbo v1, "http://apache.org/xml/features/internal/tolerate-duplicates"

    .line 470
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 474
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 476
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 431
    :cond_f
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://xml.org/sax/features/validation"

    invoke-interface {v1, v3, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 432
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    sget-object v3, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    if-ne v1, v3, :cond_10

    .line 436
    :goto_2
    if-eqz v2, :cond_2

    .line 437
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/validation/dynamic"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 433
    :cond_10
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/validation/schema"

    invoke-interface {v1, v3, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 434
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-interface {v1, v3, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto :goto_2

    .line 441
    :cond_11
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {v1, v3, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 443
    if-eqz v2, :cond_2

    .line 444
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://xml.org/sax/features/validation"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 448
    :cond_12
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v1, v3, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 453
    :cond_13
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema/augment-psvi"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 454
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/properties/dom/document-class-name"

    const-string/jumbo v3, "mf.org.apache.xerces.dom.PSVIDocumentImpl"

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v1, "http://apache.org/xml/features/honour-all-schemaLocations"

    goto :goto_1

    :cond_15
    const-string/jumbo v1, "http://apache.org/xml/features/namespace-growth"

    goto :goto_1

    :cond_16
    const-string/jumbo v1, "http://apache.org/xml/features/internal/tolerate-duplicates"
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 486
    :cond_17
    instance-of v1, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_19

    .line 488
    :cond_18
    :try_start_3
    new-instance v1, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    check-cast p2, Lmf/org/w3c/dom/DOMErrorHandler;

    invoke-direct {v1, p2}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;-><init>(Lmf/org/w3c/dom/DOMErrorHandler;)V

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    .line 489
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/error-handler"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 490
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 486
    :cond_19
    if-eqz p2, :cond_18

    .line 494
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    .line 499
    :cond_1a
    instance-of v1, p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-eqz v1, :cond_1c

    .line 501
    :cond_1b
    :try_start_4
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/entity-resolver"

    new-instance v3, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    check-cast p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    invoke-direct {v3, p2}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;-><init>(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 502
    :catch_2
    move-exception v1

    goto/16 :goto_0

    .line 499
    :cond_1c
    if-eqz p2, :cond_1b

    .line 506
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    .line 511
    :cond_1d
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 513
    :cond_1e
    if-eqz p2, :cond_20

    .line 520
    :try_start_5
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    .line 523
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    const-string/jumbo v3, " \n\t\r"

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_21

    .line 535
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-interface {v1, v2, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 540
    :catch_3
    move-exception v1

    goto/16 :goto_0

    .line 511
    :cond_1f
    if-eqz p2, :cond_1e

    .line 544
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    :cond_20
    const/4 v1, 0x0

    .line 514
    :try_start_6
    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    .line 515
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 525
    :cond_21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 526
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    :goto_3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 528
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 530
    :cond_22
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 532
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 530
    invoke-interface {v1, v3, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 549
    :cond_23
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 551
    :cond_24
    if-eqz p2, :cond_26

    .line 561
    :try_start_7
    sget-object v1, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 571
    sget-object v1, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 573
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 574
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema-full-checking"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 576
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 578
    sget-object v3, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    .line 576
    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 579
    sget-object v1, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 581
    :catch_4
    move-exception v1

    goto/16 :goto_0

    .line 549
    :cond_25
    if-eqz p2, :cond_24

    .line 585
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    .line 553
    :cond_26
    :try_start_8
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 554
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema-full-checking"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 556
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 559
    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    goto/16 :goto_0

    .line 563
    :cond_27
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 564
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema-full-checking"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 566
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 568
    sget-object v3, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    .line 566
    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    sget-object v1, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 590
    :cond_28
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-interface {v1, v2, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 597
    :catch_5
    move-exception v2

    :try_start_9
    const-string/jumbo v2, "http://apache.org/xml/features/honour-all-schemaLocations"

    .line 605
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string/jumbo v2, "http://apache.org/xml/features/namespace-growth"

    .line 608
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string/jumbo v2, "http://apache.org/xml/features/internal/tolerate-duplicates"

    .line 611
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 614
    :goto_4
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    .line 615
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1
    :try_end_9
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_6

    :catch_6
    move-exception v1

    .line 621
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1

    :cond_29
    :try_start_a
    const-string/jumbo v1, "http://apache.org/xml/features/honour-all-schemaLocations"

    goto :goto_4

    :cond_2a
    const-string/jumbo v1, "http://apache.org/xml/features/namespace-growth"

    goto :goto_4

    :cond_2b
    const-string/jumbo v1, "http://apache.org/xml/features/internal/tolerate-duplicates"
    :try_end_a
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_4
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3

    .prologue
    .line 1161
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNamespaceDeclarations:Z

    if-eqz v0, :cond_1

    .line 1170
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1171
    return-void

    .line 1161
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNamespaceAware:Z

    if-eqz v0, :cond_0

    .line 1162
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    .line 1163
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 1164
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getPrefix(I)Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 1166
    :cond_2
    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->removeAttributeAt(I)V

    goto :goto_0

    .line 1165
    :cond_3
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_2

    goto :goto_0
.end method
