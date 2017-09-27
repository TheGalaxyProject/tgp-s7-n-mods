.class public Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "ResolvingXMLFilter.java"


# static fields
.field public static suppressExplanation:Z


# instance fields
.field private allowXMLCatalogPI:Z

.field private baseURL:Ljava/net/URL;

.field private catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

.field private catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

.field private oasisXMLCatalogPI:Z

.field private piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->suppressExplanation:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 64
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 67
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 70
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 73
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 76
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->oasisXMLCatalogPI:Z

    .line 79
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    .line 84
    new-instance v0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>(Lmf/org/apache/xml/resolver/CatalogManager;)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 85
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xml/resolver/CatalogManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 64
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 67
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 70
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 73
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 76
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->oasisXMLCatalogPI:Z

    .line 79
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    .line 96
    iput-object p1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 97
    new-instance v0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>(Lmf/org/apache/xml/resolver/CatalogManager;)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 64
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 67
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 70
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 73
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 76
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->oasisXMLCatalogPI:Z

    .line 79
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    .line 90
    new-instance v0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>(Lmf/org/apache/xml/resolver/CatalogManager;)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Lmf/org/apache/xml/resolver/CatalogManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 64
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 67
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 70
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 73
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 76
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->oasisXMLCatalogPI:Z

    .line 79
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    .line 103
    iput-object p2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 104
    new-instance v0, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {v0, v1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>(Lmf/org/apache/xml/resolver/CatalogManager;)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    .line 105
    return-void
.end method

.method private explain(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 347
    sget-boolean v0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->suppressExplanation:Z

    if-eqz v0, :cond_0

    .line 351
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->suppressExplanation:Z

    .line 352
    return-void

    .line 348
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "XMLReader probably encountered bad URI in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "For example, replace \'/some/uri\' with \'file:/some/uri\'."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupBaseURI(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "basename"

    .line 323
    invoke-static {v0}, Lmf/org/apache/xml/resolver/helpers/FileURL;->makeURL(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 329
    :goto_0
    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 343
    :goto_1
    return-void

    .line 324
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 325
    goto :goto_0

    .line 330
    :catch_1
    move-exception v2

    .line 331
    if-nez v0, :cond_0

    .line 340
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    goto :goto_1

    .line 333
    :cond_0
    :try_start_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 334
    :catch_2
    move-exception v0

    .line 336
    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    goto :goto_1
.end method


# virtual methods
.method public getCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v0

    return-object v0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 222
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 157
    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->setupBaseURI(Ljava/lang/String;)V

    .line 160
    :try_start_0
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->explain(Ljava/lang/String;)V

    .line 163
    throw v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 139
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->setupBaseURI(Ljava/lang/String;)V

    .line 142
    :try_start_0
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->explain(Ljava/lang/String;)V

    .line 145
    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "oasis-xml-catalog"

    .line 259
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "catalog="

    .line 263
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 264
    if-gez v1, :cond_2

    .line 285
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    if-nez v1, :cond_4

    .line 310
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PI oasis-xml-catalog occurred in an invalid place: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-virtual {v0, v5, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_2
    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 267
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 270
    if-ltz v2, :cond_1

    .line 271
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 273
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    if-nez v1, :cond_3

    .line 276
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 278
    goto :goto_1

    .line 274
    :cond_3
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    invoke-direct {v1, v3, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 275
    goto :goto_1

    .line 286
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogManager;->getAllowOasisXMLCatalogPI()Z

    move-result v1

    if-nez v1, :cond_5

    .line 307
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PI oasis-xml-catalog ignored: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v2, "oasis-xml-catalog PI"

    invoke-virtual {v1, v6, v2, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    if-nez v0, :cond_6

    .line 304
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PI oasis-xml-catalog unparseable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 291
    :cond_6
    :try_start_1
    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v2, 0x4

    const-string/jumbo v3, "oasis-xml-catalog"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->oasisXMLCatalogPI:Z

    .line 294
    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    if-eqz v1, :cond_7

    .line 298
    :goto_2
    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 299
    :catch_0
    move-exception v1

    .line 300
    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception parsing oasis-xml-catalog: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-virtual {v1, v5, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :cond_7
    :try_start_2
    new-instance v1, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>(Z)V

    iput-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 278
    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 174
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getResolvedEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_1

    :cond_0
    move-object v1, v0

    .line 180
    :goto_0
    if-nez v1, :cond_2

    .line 209
    return-object v6

    .line 176
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    if-eqz v1, :cond_0

    .line 177
    iget-object v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getResolvedEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 182
    :cond_2
    :try_start_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    .line 196
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 198
    invoke-virtual {v0, v2}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    return-object v0

    :catch_0
    move-exception v0

    .line 202
    iget-object v2, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v2, v2, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v3, 0x1

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Failed to create InputSource ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ")"

    .line 205
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {v2, v3, v0, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    return-object v6
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 251
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method
