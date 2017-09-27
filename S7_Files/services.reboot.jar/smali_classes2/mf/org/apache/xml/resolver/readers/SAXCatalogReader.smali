.class public Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;
.super Ljava/lang/Object;
.source "SAXCatalogReader.java"

# interfaces
.implements Lmf/org/apache/xml/resolver/readers/CatalogReader;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/DocumentHandler;


# instance fields
.field private abandonHope:Z

.field private catalog:Lmf/org/apache/xml/resolver/Catalog;

.field protected debug:Lmf/org/apache/xml/resolver/helpers/Debug;

.field private loader:Ljava/lang/ClassLoader;

.field protected namespaceMap:Ljava/util/Hashtable;

.field protected parserClass:Ljava/lang/String;

.field protected parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

.field private saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    .line 85
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    .line 97
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 105
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    .line 149
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    .line 153
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    .line 154
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    .line 85
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    .line 97
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 105
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    .line 149
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    .line 164
    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/parsers/SAXParserFactory;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    .line 85
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    .line 97
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 105
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    .line 149
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    .line 159
    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    .line 160
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-nez v0, :cond_0

    .line 470
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->characters([CII)V

    goto :goto_0
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-nez v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->endDocument()V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-nez v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->endElement(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-nez v0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-nez v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 184
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 185
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 184
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParserClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    return-object v0
.end method

.method public getParserFactory()Lmf/javax/xml/parsers/SAXParserFactory;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-nez v0, :cond_0

    .line 478
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->ignorableWhitespace([CII)V

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-nez v0, :cond_0

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x7

    const/4 v2, 0x1

    const/4 v4, 0x6

    .line 234
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    if-eqz v0, :cond_1

    .line 239
    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    .line 240
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogManager;->getBootstrapResolver()Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    move-result-object v1

    .line 242
    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 245
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    if-nez v0, :cond_2

    .line 254
    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/Parser;

    .line 255
    invoke-interface {v0, p0}, Lorg/xml/sax/Parser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    .line 256
    if-nez v1, :cond_5

    .line 259
    :goto_1
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/Parser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmf/javax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_4

    .line 285
    :goto_2
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v1, "Cannot read SAX catalog without a parser"

    invoke-virtual {v0, v2, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 236
    new-instance v0, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {v0, v4}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v0

    .line 246
    :cond_2
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0}, Lmf/javax/xml/parsers/SAXParserFactory;->newSAXParser()Lmf/javax/xml/parsers/SAXParser;

    move-result-object v0

    .line 247
    new-instance v2, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;

    invoke-direct {v2}, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;-><init>()V

    .line 248
    invoke-virtual {v2, p0}, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 249
    if-nez v1, :cond_3

    .line 252
    :goto_3
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1, v2}, Lmf/javax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lmf/javax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_2

    .line 261
    :catch_0
    move-exception v0

    .line 262
    new-instance v0, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {v0, v4}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v0

    .line 250
    :cond_3
    :try_start_2
    invoke-virtual {v2, v1}, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lmf/javax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    .line 262
    :catch_1
    move-exception v0

    .line 264
    new-instance v0, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {v0, v4}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v0

    .line 254
    :cond_4
    :try_start_3
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    goto :goto_0

    .line 257
    :cond_5
    invoke-interface {v0, v1}, Lorg/xml/sax/Parser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lmf/javax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 264
    :catch_2
    move-exception v0

    .line 266
    new-instance v0, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {v0, v4}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v0

    :catch_3
    move-exception v0

    .line 268
    new-instance v0, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v0

    :catch_4
    move-exception v0

    .line 270
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 272
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    .line 273
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3}, Ljava/io/FileNotFoundException;-><init>()V

    .line 274
    if-nez v1, :cond_7

    .line 283
    :cond_6
    new-instance v1, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {v1, v0}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 275
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v4, v2, :cond_8

    .line 278
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_6

    .line 279
    new-instance v0, Lmf/org/apache/xml/resolver/CatalogException;

    .line 280
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-direct {v0, v5, v1}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 276
    :cond_8
    new-instance v0, Lmf/org/apache/xml/resolver/CatalogException;

    .line 277
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-direct {v0, v5, v1}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    .prologue
    .line 204
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v1

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    .line 212
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    :goto_1
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "file:///"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :catch_1
    move-exception v1

    .line 215
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v1

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v2, 0x1

    const-string/jumbo v3, "Failed to load catalog, file not found"

    .line 216
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {v1, v2, v3, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 174
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 175
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void

    .line 174
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    .line 138
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-nez v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    goto :goto_0
.end method

.method public setParserClass(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setParserFactory(Lmf/javax/xml/parsers/SAXParserFactory;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    .line 114
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-nez v0, :cond_0

    .line 510
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->skippedEntity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 299
    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 301
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 399
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 446
    :goto_0
    return-void

    .line 400
    :cond_0
    return-void

    .line 404
    :cond_1
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    if-eqz v1, :cond_2

    .line 421
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_1
    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 420
    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 423
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-interface {v0, v1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V

    .line 424
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startDocument()V

    .line 425
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    iput-object v3, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 428
    iput-boolean v4, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 429
    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_2
    iput-boolean v4, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 409
    if-eqz p1, :cond_3

    .line 412
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No Catalog parser for {"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 414
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-virtual {v0, v5, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 416
    :goto_2
    return-void

    .line 410
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No Catalog parser for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_2

    .line 421
    :cond_4
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 429
    :catch_1
    move-exception v0

    .line 431
    iput-object v3, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 432
    iput-boolean v4, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 433
    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 435
    iput-object v3, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 436
    iput-boolean v4, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 437
    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    .line 439
    iput-object v3, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 440
    iput-boolean v4, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 441
    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3a

    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 321
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    .line 385
    :goto_0
    return-void

    .line 322
    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, ""

    .line 327
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gtz v1, :cond_2

    .line 332
    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gtz v1, :cond_3

    move-object v1, p1

    :goto_2
    const-string/jumbo v2, ""

    .line 337
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "xmlns:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/xml/sax/AttributeList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    :goto_3
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 346
    if-eqz v1, :cond_5

    .line 360
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_4
    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 359
    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 362
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-interface {v0, v1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V

    .line 363
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startDocument()V

    .line 364
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    iput-object v4, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 367
    iput-boolean v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 368
    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 333
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "xmlns"

    .line 338
    invoke-interface {p2, v0}, Lorg/xml/sax/AttributeList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 347
    :cond_5
    iput-boolean v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 348
    if-eqz v0, :cond_6

    .line 351
    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "No Catalog parser for {"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 353
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-virtual {v1, v6, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 355
    :goto_5
    return-void

    .line 349
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No Catalog parser for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_5

    .line 360
    :cond_7
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_4

    .line 368
    :catch_1
    move-exception v0

    .line 370
    iput-object v4, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 371
    iput-boolean v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 372
    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 374
    iput-object v4, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 375
    iput-boolean v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 376
    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    .line 378
    iput-object v4, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    .line 379
    iput-boolean v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    .line 380
    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-nez v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
