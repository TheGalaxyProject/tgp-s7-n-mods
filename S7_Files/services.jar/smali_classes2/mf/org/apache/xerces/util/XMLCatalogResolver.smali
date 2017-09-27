.class public Lmf/org/apache/xerces/util/XMLCatalogResolver;
.super Ljava/lang/Object;
.source "XMLCatalogResolver.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
.implements Lorg/xml/sax/ext/EntityResolver2;
.implements Lmf/org/w3c/dom/ls/LSResourceResolver;


# instance fields
.field private fCatalog:Lmf/org/apache/xml/resolver/Catalog;

.field private fCatalogsChanged:Z

.field private fCatalogsList:[Ljava/lang/String;

.field private fPreferPublic:Z

.field private fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

.field private fUseLiteralSystemId:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 94
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/util/XMLCatalogResolver;-><init>([Ljava/lang/String;Z)V

    .line 95
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/util/XMLCatalogResolver;-><init>([Ljava/lang/String;Z)V

    .line 105
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 68
    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 71
    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    .line 77
    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    .line 80
    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fPreferPublic:Z

    .line 88
    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fUseLiteralSystemId:Z

    .line 116
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->init([Ljava/lang/String;Z)V

    .line 117
    return-void
.end method

.method private attachReaderToCatalog(Lmf/org/apache/xml/resolver/Catalog;)V
    .locals 4

    .prologue
    .line 571
    new-instance v0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;-><init>()V

    .line 572
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/javax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 573
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/javax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 575
    new-instance v1, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;

    invoke-direct {v1, v0}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;-><init>(Lmf/javax/xml/parsers/SAXParserFactory;)V

    const-string/jumbo v0, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    const-string/jumbo v2, "catalog"

    const-string/jumbo v3, "org.apache.xml.resolver.readers.OASISXMLCatalogReader"

    .line 576
    invoke-virtual {v1, v0, v2, v3}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "application/xml"

    .line 578
    invoke-virtual {p1, v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->addReader(Ljava/lang/String;Lmf/org/apache/xml/resolver/readers/CatalogReader;)V

    .line 579
    return-void
.end method

.method private init([Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 531
    if-nez p1, :cond_0

    :goto_0
    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    .line 532
    iput-boolean p2, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fPreferPublic:Z

    .line 533
    new-instance v0, Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/CatalogManager;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 534
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/resolver/CatalogManager;->setAllowOasisXMLCatalogPI(Z)V

    .line 535
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    const-string/jumbo v1, "org.apache.xml.resolver.Catalog"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogManager;->setCatalogClassName(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogManager;->setCatalogFiles(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogManager;->setIgnoreMissingProperties(Z)V

    .line 538
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-boolean v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fPreferPublic:Z

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogManager;->setPreferPublic(Z)V

    .line 539
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/resolver/CatalogManager;->setRelativeCatalogs(Z)V

    .line 540
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/resolver/CatalogManager;->setUseStaticCatalog(Z)V

    .line 541
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/resolver/CatalogManager;->setVerbosity(I)V

    .line 542
    return-void

    .line 531
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method private parseCatalogs()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 551
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 562
    iput-object v2, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 564
    :cond_0
    return-void

    .line 552
    :cond_1
    new-instance v1, Lmf/org/apache/xml/resolver/Catalog;

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {v1, v2}, Lmf/org/apache/xml/resolver/Catalog;-><init>(Lmf/org/apache/xml/resolver/CatalogManager;)V

    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 553
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->attachReaderToCatalog(Lmf/org/apache/xml/resolver/Catalog;)V

    .line 554
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 555
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 556
    if-nez v1, :cond_3

    .line 554
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 557
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v2, v1}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    .line 148
    :try_start_0
    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 149
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCatalogList()[Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 126
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExternalSubset(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 308
    return-object v0
.end method

.method public final getPreferPublic()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fPreferPublic:Z

    return v0
.end method

.method public final getUseLiteralSystemId()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fUseLiteralSystemId:Z

    return v0
.end method

.method public resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 389
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolveIdentifier(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 390
    if-nez v0, :cond_0

    .line 395
    return-object v1

    .line 391
    :cond_0
    new-instance v1, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    .line 391
    invoke-direct {v1, v2, v0, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 235
    if-nez p1, :cond_1

    .line 238
    :cond_0
    if-nez p2, :cond_2

    move-object v0, v1

    .line 242
    :goto_0
    if-nez v0, :cond_3

    .line 247
    return-object v1

    .line 235
    :cond_1
    if-eqz p2, :cond_0

    .line 236
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 243
    :cond_3
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1, p1}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    .line 245
    return-object v1
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 270
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->getUseLiteralSystemId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    .line 283
    :cond_1
    if-nez p4, :cond_4

    move-object v0, v1

    .line 287
    :goto_1
    if-nez v0, :cond_5

    .line 292
    return-object v1

    .line 270
    :cond_2
    if-eqz p3, :cond_0

    .line 273
    :try_start_0
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    new-instance v2, Lmf/org/apache/xerces/util/URI;

    invoke-direct {v2, p3}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, p4}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    goto :goto_0

    .line 280
    :cond_3
    if-eqz p4, :cond_1

    .line 281
    invoke-virtual {p0, p2, p4}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 284
    :cond_4
    invoke-virtual {p0, p4}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 288
    :cond_5
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v1, p2}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    .line 290
    return-object v1

    .line 275
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resolveIdentifier(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 417
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 418
    if-nez v0, :cond_0

    .line 427
    :goto_0
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 439
    :goto_1
    return-object v0

    .line 419
    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolveURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 428
    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->getUseLiteralSystemId()Z

    move-result v0

    if-nez v0, :cond_3

    .line 431
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    .line 432
    :goto_2
    if-nez v2, :cond_4

    .line 435
    :cond_2
    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_1

    .line 430
    :cond_3
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 432
    :cond_4
    if-eqz v0, :cond_2

    .line 433
    invoke-virtual {p0, v2, v0}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 436
    :cond_5
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final declared-synchronized resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 487
    :try_start_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    if-nez v1, :cond_0

    .line 491
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :goto_1
    monitor-exit p0

    return-object v0

    .line 488
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->parseCatalogs()V

    .line 489
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 492
    :cond_1
    :try_start_2
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xml/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public resolveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ls/LSInput;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 336
    if-nez p2, :cond_2

    move-object v0, v1

    .line 340
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->getUseLiteralSystemId()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_3

    .line 355
    :cond_0
    :goto_1
    if-eqz v0, :cond_4

    .line 367
    :cond_1
    :goto_2
    if-nez v0, :cond_7

    .line 370
    return-object v1

    .line 337
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolveURI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 340
    :cond_3
    if-eqz p5, :cond_0

    .line 343
    :try_start_2
    new-instance v2, Lmf/org/apache/xerces/util/URI;

    new-instance v3, Lmf/org/apache/xerces/util/URI;

    invoke-direct {v3, p5}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, p4}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v2}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object p4

    goto :goto_1

    .line 356
    :cond_4
    if-nez p3, :cond_6

    .line 359
    :cond_5
    if-eqz p4, :cond_1

    .line 360
    :try_start_3
    invoke-virtual {p0, p4}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 356
    :cond_6
    if-eqz p4, :cond_5

    .line 357
    invoke-virtual {p0, p3, p4}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_2

    .line 368
    :cond_7
    new-instance v1, Lmf/org/apache/xerces/dom/DOMInputImpl;

    invoke-direct {v1, p3, v0, p5}, Lmf/org/apache/xerces/dom/DOMInputImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 363
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_2

    .line 345
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public final declared-synchronized resolveSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 461
    :try_start_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    if-nez v1, :cond_0

    .line 465
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :goto_1
    monitor-exit p0

    return-object v0

    .line 462
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->parseCatalogs()V

    .line 463
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 466
    :cond_1
    :try_start_2
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/resolver/Catalog;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public final declared-synchronized resolveURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 516
    :try_start_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    if-nez v1, :cond_0

    .line 520
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :goto_1
    monitor-exit p0

    return-object v0

    .line 517
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->parseCatalogs()V

    .line 518
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 521
    :cond_1
    :try_start_2
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/resolver/Catalog;->resolveURI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public final declared-synchronized setCatalogList([Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 139
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    .line 140
    if-nez p1, :cond_0

    :goto_0
    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 142
    return-void

    .line 141
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setPreferPublic(Z)V
    .locals 1

    .prologue
    .line 174
    iput-boolean p1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fPreferPublic:Z

    .line 175
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/resolver/CatalogManager;->setPreferPublic(Z)V

    .line 176
    return-void
.end method

.method public final setUseLiteralSystemId(Z)V
    .locals 0

    .prologue
    .line 215
    iput-boolean p1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fUseLiteralSystemId:Z

    .line 216
    return-void
.end method
