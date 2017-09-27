.class public Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;
.super Lmf/org/apache/xerces/parsers/SAXParser;
.source "SAXParserImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/SAXParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JAXPSAXParser"
.end annotation


# instance fields
.field private final fInitFeatures:Ljava/util/HashMap;

.field private final fInitProperties:Ljava/util/HashMap;

.field private final fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 370
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;-><init>(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)V

    .line 371
    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)V
    .locals 1

    .prologue
    .line 374
    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/SAXParser;-><init>()V

    .line 365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    .line 375
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    .line 376
    return-void
.end method

.method private resetSchemaValidator()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 648
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$6(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    return-void

    .line 649
    :catch_0
    move-exception v0

    .line 652
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private setSchemaValidatorFeature(Ljava/lang/String;Z)V
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

    .line 607
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    return-void

    .line 608
    :catch_0
    move-exception v0

    .line 611
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 612
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    .line 619
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "feature-not-supported"

    .line 620
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 619
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 618
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    .line 614
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "feature-not-recognized"

    .line 615
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 614
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 613
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setSchemaValidatorProperty(Ljava/lang/String;Ljava/lang/Object;)V
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

    .line 628
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    return-void

    .line 629
    :catch_0
    move-exception v0

    .line 632
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 633
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    .line 640
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "property-not-supported"

    .line 641
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 640
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 639
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    .line 635
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "property-not-recognized"

    .line 636
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 635
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 634
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized getFeature(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 422
    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    .line 426
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 424
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string/jumbo v0, "http://apache.org/xml/properties/security-manager"

    .line 428
    invoke-super {p0, v0}, Lmf/org/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    if-nez v0, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    monitor-exit p0

    .line 432
    return v1
.end method

.method getFeature0(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 591
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 520
    if-eqz p1, :cond_1

    .line 524
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    if-nez v0, :cond_2

    .line 528
    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 522
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    const-string/jumbo v0, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 524
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->schemaLanguage:Ljava/lang/String;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$3(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method getProperty0(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getXMLParserConfiguration()Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    if-nez v0, :cond_1

    .line 577
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->parse(Ljava/lang/String;)V

    .line 578
    return-void

    .line 570
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$4(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/impl/validation/ValidationManager;

    move-result-object v0

    if-nez v0, :cond_2

    .line 575
    :goto_1
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->resetSchemaValidator()V

    goto :goto_0

    .line 572
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$4(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/impl/validation/ValidationManager;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    .line 573
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$5(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;->reset()V

    goto :goto_1
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    if-nez v0, :cond_1

    .line 565
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;)V

    .line 566
    return-void

    .line 558
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$4(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/impl/validation/ValidationManager;

    move-result-object v0

    if-nez v0, :cond_2

    .line 563
    :goto_1
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->resetSchemaValidator()V

    goto :goto_0

    .line 560
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$4(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/impl/validation/ValidationManager;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    .line 561
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$5(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;->reset()V

    goto :goto_1
.end method

.method declared-synchronized restoreInitState()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 534
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    monitor-exit p0

    .line 554
    return-void

    .line 535
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 536
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 538
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 539
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 540
    invoke-super {p0, v1, v0}, Lmf/org/apache/xerces/parsers/SAXParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 542
    :cond_1
    :try_start_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 545
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 546
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 547
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 548
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 549
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 550
    invoke-super {p0, v1, v0}, Lmf/org/apache/xerces/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 552
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 385
    if-eqz p1, :cond_1

    :try_start_0
    const-string/jumbo v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    .line 389
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 409
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 414
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    if-nez v0, :cond_7

    .line 417
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/SAXParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 418
    return-void

    .line 387
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    const-string/jumbo v1, "http://apache.org/xml/properties/security-manager"

    .line 391
    if-nez p2, :cond_4

    :goto_2
    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    .line 407
    return-void

    .line 391
    :cond_4
    :try_start_3
    new-instance v0, Lmf/org/apache/xerces/util/SecurityManager;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SecurityManager;-><init>()V
    :try_end_3
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 392
    :catch_0
    move-exception v0

    .line 396
    if-eqz p2, :cond_3

    .line 397
    :try_start_4
    throw v0

    :catch_1
    move-exception v0

    .line 403
    if-eqz p2, :cond_3

    .line 404
    throw v0

    .line 410
    :cond_5
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    .line 411
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    if-nez v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    .line 414
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setSchemaValidatorFeature(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method setFeature0(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 586
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/SAXParser;->setFeature(Ljava/lang/String;Z)V

    .line 587
    return-void
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 445
    if-eqz p1, :cond_2

    .line 449
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    if-nez v0, :cond_3

    .line 508
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 512
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    if-nez v0, :cond_f

    .line 515
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 516
    return-void

    .line 447
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    const-string/jumbo v0, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 451
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 485
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->grammar:Lmf/javax/xml/validation/Schema;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$1(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/javax/xml/validation/Schema;

    move-result-object v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 492
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 493
    if-nez v0, :cond_c

    .line 500
    :cond_4
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    .line 501
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "jaxp-order-not-supported"

    const/4 v3, 0x2

    .line 503
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v5, v3, v4

    .line 501
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->grammar:Lmf/javax/xml/validation/Schema;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$1(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/javax/xml/validation/Schema;

    move-result-object v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "http://www.w3.org/2001/XMLSchema"

    .line 458
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 472
    if-eqz p2, :cond_a

    .line 480
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    .line 481
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "schema-not-supported"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 480
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_6
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    .line 456
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "schema-already-specified"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->isValidating()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_8

    :goto_2
    monitor-exit p0

    .line 483
    return-void

    .line 461
    :cond_8
    :try_start_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$2(Lmf/org/apache/xerces/jaxp/SAXParserImpl;Ljava/lang/String;)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema"

    .line 462
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature(Ljava/lang/String;Z)V

    .line 465
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_3
    const-string/jumbo v0, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    .line 468
    invoke-super {p0, v0, v1}, Lmf/org/apache/xerces/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 466
    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-super {p0, v2}, Lmf/org/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 473
    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$2(Lmf/org/apache/xerces/jaxp/SAXParserImpl;Ljava/lang/String;)V

    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema"

    .line 474
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_2

    .line 489
    :cond_b
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    .line 490
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "schema-already-specified"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    .line 493
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 494
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 497
    :goto_4
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 505
    return-void

    .line 495
    :cond_d
    :try_start_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-super {p0, v2}, Lmf/org/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 509
    :cond_e
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 512
    :cond_f
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    # getter for: Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 513
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setSchemaValidatorProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method setProperty0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 596
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 597
    return-void
.end method
