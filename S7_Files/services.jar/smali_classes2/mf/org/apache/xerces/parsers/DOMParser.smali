.class public Lmf/org/apache/xerces/parsers/DOMParser;
.super Lmf/org/apache/xerces/parsers/AbstractDOMParser;
.source "DOMParser.java"


# static fields
.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final USE_ENTITY_RESOLVER2:Ljava/lang/String; = "http://xml.org/sax/features/use-entity-resolver2"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field protected fUseEntityResolver2:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 84
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/symbol-table"

    .line 85
    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/grammar-pool"

    .line 86
    aput-object v2, v0, v1

    .line 84
    sput-object v0, Lmf/org/apache/xerces/parsers/DOMParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0, v0}, Lmf/org/apache/xerces/parsers/DOMParser;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/parsers/DOMParser;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "mf.org.apache.xerces.xni.parser.XMLParserConfiguration"

    const-string/jumbo v1, "mf.org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    .line 132
    invoke-static {v0, v1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    .line 136
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v1, Lmf/org/apache/xerces/parsers/DOMParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    .line 137
    if-nez p1, :cond_0

    .line 140
    :goto_0
    if-nez p2, :cond_1

    .line 144
    :goto_1
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v0, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    .line 107
    return-void
.end method


# virtual methods
.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 325
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 326
    if-nez v0, :cond_0

    move-object v0, v1

    .line 340
    :goto_0
    return-object v0

    .line 327
    :cond_0
    instance-of v2, v0, Lmf/org/apache/xerces/util/EntityResolverWrapper;

    if-nez v2, :cond_1

    .line 331
    instance-of v2, v0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 329
    :cond_1
    check-cast v0, Lmf/org/apache/xerces/util/EntityResolverWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/EntityResolverWrapper;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    goto :goto_0

    .line 333
    :cond_2
    check-cast v0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->getEntityResolver()Lorg/xml/sax/ext/EntityResolver2;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 393
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/error-handler"

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .line 394
    if-nez v0, :cond_0

    move-object v0, v1

    .line 402
    :goto_0
    return-object v0

    .line 395
    :cond_0
    instance-of v2, v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 396
    :cond_1
    check-cast v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->getErrorHandler()Lorg/xml/sax/ErrorHandler;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v0, "http://xml.org/sax/features/use-entity-resolver2"

    .line 483
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 484
    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 491
    :catch_0
    move-exception v0

    .line 494
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    .line 502
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "feature-not-supported"

    .line 503
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 502
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 501
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    .line 497
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "feature-not-recognized"

    .line 498
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 497
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "http://apache.org/xml/properties/dom/current-element-node"

    .line 563
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 582
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v2, "http://apache.org/xml/features/dom/defer-node-expansion"

    .line 566
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 571
    :goto_0
    if-nez v0, :cond_2

    .line 577
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v0, :cond_3

    :cond_1
    move-object v0, v1

    :goto_1
    return-object v0

    .line 572
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v3, "CannotQueryDeferredNode"

    .line 573
    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_1

    .line 582
    :catch_0
    move-exception v1

    .line 585
    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 586
    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v1

    if-eqz v1, :cond_4

    .line 592
    new-instance v1, Lorg/xml/sax/SAXNotSupportedException;

    .line 593
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "property-not-supported"

    .line 594
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    .line 593
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 587
    :cond_4
    new-instance v1, Lorg/xml/sax/SAXNotRecognizedException;

    .line 588
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "property-not-recognized"

    .line 589
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    .line 588
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 567
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public getXMLParserConfiguration()Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 166
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v0, v1, p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :try_start_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParser;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    return-void

    .line 169
    :catch_0
    move-exception v2

    .line 173
    invoke-virtual {v2}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 174
    if-nez v0, :cond_1

    .line 177
    :cond_0
    new-instance v3, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v3}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 178
    invoke-virtual {v2}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v2}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 181
    invoke-virtual {v2}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 182
    if-eqz v0, :cond_2

    .line 184
    new-instance v1, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    move-object v0, v1

    .line 182
    :goto_0
    throw v0

    .line 174
    :cond_1
    instance-of v1, v0, Ljava/io/CharConversionException;

    if-nez v1, :cond_0

    .line 186
    instance-of v1, v0, Lorg/xml/sax/SAXException;

    if-nez v1, :cond_3

    .line 190
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_4

    .line 193
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 183
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    goto :goto_0

    .line 188
    :cond_3
    check-cast v0, Lorg/xml/sax/SAXException;

    throw v0

    .line 191
    :cond_4
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 193
    :catch_1
    move-exception v1

    .line 196
    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/XNIException;->printStackTrace()V

    .line 197
    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_5

    .line 201
    instance-of v1, v0, Lorg/xml/sax/SAXException;

    if-nez v1, :cond_6

    .line 204
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_7

    .line 207
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 199
    :cond_5
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_6
    check-cast v0, Lorg/xml/sax/SAXException;

    throw v0

    .line 205
    :cond_7
    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    :try_start_0
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 226
    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 230
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 231
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParser;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 273
    return-void

    .line 233
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 237
    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 238
    if-nez v0, :cond_1

    .line 241
    :cond_0
    new-instance v3, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v3}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 242
    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 245
    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 246
    if-eqz v0, :cond_2

    .line 248
    new-instance v2, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v3, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    move-object v0, v2

    .line 246
    :goto_0
    throw v0

    .line 238
    :cond_1
    instance-of v2, v0, Ljava/io/CharConversionException;

    if-nez v2, :cond_0

    .line 250
    instance-of v1, v0, Lorg/xml/sax/SAXException;

    if-nez v1, :cond_3

    .line 254
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_4

    .line 257
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 247
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    goto :goto_0

    .line 252
    :cond_3
    check-cast v0, Lorg/xml/sax/SAXException;

    throw v0

    .line 255
    :cond_4
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 257
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 260
    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_5

    .line 264
    instance-of v1, v0, Lorg/xml/sax/SAXException;

    if-nez v1, :cond_6

    .line 267
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_7

    .line 270
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 262
    :cond_5
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_6
    check-cast v0, Lorg/xml/sax/SAXException;

    throw v0

    .line 268
    :cond_7
    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 3

    .prologue
    .line 285
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .line 286
    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    if-nez v1, :cond_1

    .line 297
    :cond_0
    instance-of v1, v0, Lmf/org/apache/xerces/util/EntityResolverWrapper;

    if-nez v1, :cond_3

    .line 302
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 303
    new-instance v2, Lmf/org/apache/xerces/util/EntityResolverWrapper;

    invoke-direct {v2, p1}, Lmf/org/apache/xerces/util/EntityResolverWrapper;-><init>(Lorg/xml/sax/EntityResolver;)V

    .line 302
    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    :goto_0
    return-void

    .line 286
    :cond_1
    instance-of v1, p1, Lorg/xml/sax/ext/EntityResolver2;

    if-eqz v1, :cond_0

    .line 287
    instance-of v1, v0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;

    if-nez v1, :cond_2

    .line 292
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    .line 293
    new-instance v2, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;

    check-cast p1, Lorg/xml/sax/ext/EntityResolver2;

    invoke-direct {v2, p1}, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;-><init>(Lorg/xml/sax/ext/EntityResolver2;)V

    .line 292
    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    goto :goto_0

    .line 288
    :cond_2
    check-cast v0, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;

    .line 289
    check-cast p1, Lorg/xml/sax/ext/EntityResolver2;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/EntityResolver2Wrapper;->setEntityResolver(Lorg/xml/sax/ext/EntityResolver2;)V

    goto :goto_0

    .line 298
    :cond_3
    check-cast v0, Lmf/org/apache/xerces/util/EntityResolverWrapper;

    .line 299
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/EntityResolverWrapper;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 3

    .prologue
    .line 365
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .line 366
    instance-of v1, v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    if-nez v1, :cond_0

    .line 371
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-handler"

    .line 372
    new-instance v2, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    invoke-direct {v2, p1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    .line 371
    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 379
    :goto_0
    return-void

    .line 367
    :cond_0
    check-cast v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    .line 368
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v0, "http://xml.org/sax/features/use-entity-resolver2"

    .line 429
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 458
    return-void

    .line 430
    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    if-ne p2, v0, :cond_1

    .line 435
    :goto_0
    return-void

    .line 431
    :cond_1
    iput-boolean p2, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    .line 433
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DOMParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 445
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    .line 453
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "feature-not-supported"

    .line 454
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 453
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    .line 448
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "feature-not-recognized"

    .line 449
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 448
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 447
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 528
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 531
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 532
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    .line 539
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "property-not-supported"

    .line 540
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 539
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 538
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    .line 534
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/DOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "property-not-recognized"

    .line 535
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 534
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 533
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
