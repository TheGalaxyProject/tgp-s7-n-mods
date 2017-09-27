.class public Lmf/org/apache/xml/resolver/CatalogManager;
.super Ljava/lang/Object;
.source "CatalogManager.java"


# static fields
.field private static pAllowPI:Ljava/lang/String;

.field private static pClassname:Ljava/lang/String;

.field private static pFiles:Ljava/lang/String;

.field private static pIgnoreMissing:Ljava/lang/String;

.field private static pPrefer:Ljava/lang/String;

.field private static pStatic:Ljava/lang/String;

.field private static pVerbosity:Ljava/lang/String;

.field private static staticCatalog:Lmf/org/apache/xml/resolver/Catalog;

.field private static staticManager:Lmf/org/apache/xml/resolver/CatalogManager;


# instance fields
.field private bResolver:Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

.field private catalogClassName:Ljava/lang/String;

.field private catalogFiles:Ljava/lang/String;

.field public debug:Lmf/org/apache/xml/resolver/helpers/Debug;

.field private defaultCatalogFiles:Ljava/lang/String;

.field private defaultOasisXMLCatalogPI:Z

.field private defaultPreferPublic:Z

.field private defaultRelativeCatalogs:Z

.field private defaultUseStaticCatalog:Z

.field private defaultVerbosity:I

.field private fromPropertiesFile:Z

.field private ignoreMissingProperties:Z

.field private oasisXMLCatalogPI:Ljava/lang/Boolean;

.field private preferPublic:Ljava/lang/Boolean;

.field private propertyFile:Ljava/lang/String;

.field private propertyFileURI:Ljava/net/URL;

.field private relativeCatalogs:Ljava/lang/Boolean;

.field private resources:Ljava/util/ResourceBundle;

.field private useStaticCatalog:Ljava/lang/Boolean;

.field private verbosity:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "xml.catalog.files"

    .line 125
    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pFiles:Ljava/lang/String;

    const-string/jumbo v0, "xml.catalog.verbosity"

    .line 126
    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pVerbosity:Ljava/lang/String;

    const-string/jumbo v0, "xml.catalog.prefer"

    .line 127
    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pPrefer:Ljava/lang/String;

    const-string/jumbo v0, "xml.catalog.staticCatalog"

    .line 128
    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pStatic:Ljava/lang/String;

    const-string/jumbo v0, "xml.catalog.allowPI"

    .line 129
    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pAllowPI:Ljava/lang/String;

    const-string/jumbo v0, "xml.catalog.className"

    .line 130
    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pClassname:Ljava/lang/String;

    const-string/jumbo v0, "xml.catalog.ignoreMissing"

    .line 131
    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pIgnoreMissing:Ljava/lang/String;

    .line 134
    new-instance v0, Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/CatalogManager;-><init>()V

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->staticManager:Lmf/org/apache/xml/resolver/CatalogManager;

    const/4 v0, 0x0

    .line 181
    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->staticCatalog:Lmf/org/apache/xml/resolver/Catalog;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->bResolver:Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    .line 141
    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pIgnoreMissing:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 142
    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z

    const-string/jumbo v0, "CatalogManager.properties"

    .line 148
    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    .line 151
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFileURI:Ljava/net/URL;

    const-string/jumbo v0, "./xcatalog"

    .line 154
    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultCatalogFiles:Ljava/lang/String;

    .line 157
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    .line 160
    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->fromPropertiesFile:Z

    .line 163
    iput v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultVerbosity:I

    .line 166
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    .line 169
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultPreferPublic:Z

    .line 172
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    .line 175
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultUseStaticCatalog:Z

    .line 178
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    .line 184
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultOasisXMLCatalogPI:Z

    .line 187
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    .line 190
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultRelativeCatalogs:Z

    .line 193
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    .line 196
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    .line 203
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    .line 207
    new-instance v0, Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/helpers/Debug;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    .line 213
    return-void

    .line 142
    :cond_1
    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pFiles:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->bResolver:Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    .line 141
    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pIgnoreMissing:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 142
    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z

    const-string/jumbo v0, "CatalogManager.properties"

    .line 148
    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    .line 151
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFileURI:Ljava/net/URL;

    const-string/jumbo v0, "./xcatalog"

    .line 154
    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultCatalogFiles:Ljava/lang/String;

    .line 157
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    .line 160
    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->fromPropertiesFile:Z

    .line 163
    iput v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultVerbosity:I

    .line 166
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    .line 169
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultPreferPublic:Z

    .line 172
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    .line 175
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultUseStaticCatalog:Z

    .line 178
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    .line 184
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultOasisXMLCatalogPI:Z

    .line 187
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    .line 190
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultRelativeCatalogs:Z

    .line 193
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    .line 196
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    .line 203
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    .line 217
    iput-object p1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    .line 219
    new-instance v0, Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/helpers/Debug;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    .line 225
    return-void

    .line 142
    :cond_1
    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pFiles:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->staticManager:Lmf/org/apache/xml/resolver/CatalogManager;

    return-object v0
.end method

.method private queryCatalogFiles()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 466
    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pFiles:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->fromPropertiesFile:Z

    .line 469
    if-eqz v0, :cond_1

    .line 482
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 486
    :goto_1
    return-object v0

    .line 470
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-eqz v2, :cond_2

    .line 471
    :goto_2
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-eqz v2, :cond_0

    .line 473
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string/jumbo v2, "catalogs"

    invoke-virtual {v0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->fromPropertiesFile:Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ": catalogs not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, v1

    .line 477
    goto :goto_0

    .line 470
    :cond_2
    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    goto :goto_2

    .line 483
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultCatalogFiles:Ljava/lang/String;

    goto :goto_1
.end method

.method private queryPreferPublic()Z
    .locals 2

    .prologue
    .line 551
    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pPrefer:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    if-eqz v0, :cond_0

    .line 563
    :goto_0
    if-eqz v0, :cond_3

    const-string/jumbo v1, "public"

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 554
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_1

    .line 555
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_2

    .line 557
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string/jumbo v1, "prefer"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 554
    :cond_1
    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    goto :goto_1

    .line 555
    :cond_2
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultPreferPublic:Z

    return v0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultPreferPublic:Z

    return v0

    .line 564
    :cond_3
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultPreferPublic:Z

    return v0
.end method

.method private queryRelativeCatalogs()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 400
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_1

    .line 402
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_2

    .line 405
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string/jumbo v1, "relative-catalogs"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 400
    :cond_1
    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    goto :goto_0

    .line 402
    :cond_2
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultRelativeCatalogs:Z

    return v0

    :cond_3
    :try_start_1
    const-string/jumbo v1, "yes"

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "1"

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 406
    return v2

    :catch_0
    move-exception v0

    .line 410
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultRelativeCatalogs:Z

    return v0
.end method

.method private queryUseStaticCatalog()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 610
    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pStatic:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    if-eqz v0, :cond_1

    .line 622
    :goto_0
    if-eqz v0, :cond_4

    const-string/jumbo v1, "true"

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 613
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_2

    .line 614
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_3

    .line 616
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string/jumbo v1, "static-catalog"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 613
    :cond_2
    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    goto :goto_1

    .line 614
    :cond_3
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultUseStaticCatalog:Z

    return v0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultUseStaticCatalog:Z

    return v0

    .line 623
    :cond_4
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultUseStaticCatalog:Z

    return v0

    :cond_5
    const-string/jumbo v1, "yes"

    .line 627
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "1"

    .line 628
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    return v2
.end method

.method private queryVerbosity()I
    .locals 5

    .prologue
    .line 329
    iget v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultVerbosity:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 331
    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pVerbosity:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_0

    .line 346
    :goto_0
    iget v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultVerbosity:I

    .line 349
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 357
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 362
    :goto_2
    return v0

    .line 334
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_1

    .line 335
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v0, :cond_2

    move-object v0, v1

    .line 342
    goto :goto_0

    .line 334
    :cond_1
    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    goto :goto_3

    .line 337
    :cond_2
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string/jumbo v2, "verbosity"

    invoke-virtual {v0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 341
    goto :goto_0

    .line 350
    :catch_1
    move-exception v2

    .line 351
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cannot parse verbosity: \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    .line 358
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v1, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->setDebug(I)V

    .line 359
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    goto :goto_2
.end method

.method private declared-synchronized readProperties()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    const-class v0, Lmf/org/apache/xml/resolver/CatalogManager;

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFileURI:Ljava/net/URL;

    const-class v0, Lmf/org/apache/xml/resolver/CatalogManager;

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_1

    .line 254
    new-instance v1, Ljava/util/PropertyResourceBundle;

    invoke-direct {v1, v0}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    :goto_1
    monitor-exit p0

    .line 278
    return-void

    .line 247
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    :goto_2
    monitor-exit p0

    .line 252
    return-void

    .line 248
    :cond_2
    :try_start_3
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cannot find "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 255
    :catch_0
    move-exception v0

    .line 256
    :try_start_4
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z

    if-nez v0, :cond_0

    .line 257
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cannot read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    .line 260
    :try_start_5
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z

    if-nez v0, :cond_0

    .line 261
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failure trying to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 270
    :cond_3
    :try_start_6
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string/jumbo v1, "verbosity"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 272
    iget-object v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v1, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->setDebug(I)V

    .line 273
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 274
    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public allowOasisXMLCatalogPI()Z
    .locals 1

    .prologue
    .line 786
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getAllowOasisXMLCatalogPI()Z

    move-result v0

    return v0
.end method

.method public catalogClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 833
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getCatalogClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public catalogFiles()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 538
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getCatalogFiles()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getAllowOasisXMLCatalogPI()Z
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 770
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 767
    :cond_0
    new-instance v0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryAllowOasisXMLCatalogPI()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getBootstrapResolver()Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->bResolver:Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    return-object v0
.end method

.method public getCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 3

    .prologue
    .line 715
    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->staticCatalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 717
    iget-object v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 721
    :goto_0
    if-nez v0, :cond_2

    .line 722
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getPrivateCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v0

    .line 723
    iget-object v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 728
    :goto_1
    return-object v0

    .line 718
    :cond_1
    new-instance v1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getUseStaticCatalog()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    goto :goto_0

    .line 721
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 724
    :cond_3
    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->staticCatalog:Lmf/org/apache/xml/resolver/Catalog;

    goto :goto_1
.end method

.method public getCatalogClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 817
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    return-object v0

    .line 814
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryCatalogClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCatalogFiles()Ljava/util/Vector;
    .locals 5

    .prologue
    .line 496
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 500
    :goto_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    const-string/jumbo v2, ";"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 502
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 503
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 506
    iget-boolean v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->fromPropertiesFile:Z

    if-nez v3, :cond_2

    .line 515
    :cond_0
    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 497
    :cond_1
    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryCatalogFiles()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    goto :goto_0

    .line 506
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 508
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFileURI:Ljava/net/URL;

    invoke-direct {v3, v4, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 509
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    .line 518
    :cond_3
    return-object v2

    .line 510
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public getIgnoreMissingProperties()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z

    return v0
.end method

.method public getPreferPublic()Z
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 579
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 577
    :cond_0
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryPreferPublic()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getPrivateCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 6

    .prologue
    .line 664
    sget-object v1, Lmf/org/apache/xml/resolver/CatalogManager;->staticCatalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 666
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 670
    :goto_0
    if-nez v1, :cond_2

    .line 673
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getCatalogClassName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 675
    if-eqz v2, :cond_3

    .line 679
    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/Catalog;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v0

    .line 693
    :goto_1
    :try_start_2
    invoke-virtual {v1, p0}, Lmf/org/apache/xml/resolver/Catalog;->setCatalogManager(Lmf/org/apache/xml/resolver/CatalogManager;)V

    .line 694
    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/Catalog;->setupReaders()V

    .line 695
    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/Catalog;->loadSystemCatalogs()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 700
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 705
    :goto_3
    return-object v1

    .line 667
    :cond_1
    new-instance v0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getUseStaticCatalog()Z

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    goto :goto_0

    .line 670
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 676
    :cond_3
    :try_start_3
    new-instance v0, Lmf/org/apache/xml/resolver/Catalog;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/Catalog;-><init>()V

    move-object v1, v0

    .line 677
    goto :goto_1

    .line 680
    :catch_0
    move-exception v0

    .line 681
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Catalog class named \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\' could not be found. Using default."

    .line 683
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 681
    invoke-virtual {v0, v3, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 684
    new-instance v0, Lmf/org/apache/xml/resolver/Catalog;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/Catalog;-><init>()V

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 686
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Class named \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\' is not a Catalog. Using default."

    .line 688
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-virtual {v0, v3, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 689
    new-instance v0, Lmf/org/apache/xml/resolver/Catalog;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/Catalog;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v0

    goto :goto_1

    .line 696
    :catch_2
    move-exception v0

    .line 697
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 701
    :cond_4
    sput-object v1, Lmf/org/apache/xml/resolver/CatalogManager;->staticCatalog:Lmf/org/apache/xml/resolver/Catalog;

    goto :goto_3
.end method

.method public getRelativeCatalogs()Z
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 439
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryRelativeCatalogs()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getUseStaticCatalog()Z
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 639
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 636
    :cond_0
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryUseStaticCatalog()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getVerbosity()I
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 373
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryVerbosity()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public ignoreMissingProperties(Z)V
    .locals 0

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/resolver/CatalogManager;->setIgnoreMissingProperties(Z)V

    .line 320
    return-void
.end method

.method public preferPublic()Z
    .locals 1

    .prologue
    .line 597
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getPreferPublic()Z

    move-result v0

    return v0
.end method

.method public queryAllowOasisXMLCatalogPI()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 741
    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pAllowPI:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 743
    if-eqz v0, :cond_1

    .line 753
    :goto_0
    if-eqz v0, :cond_4

    const-string/jumbo v1, "true"

    .line 757
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 744
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_2

    .line 745
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_3

    .line 747
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string/jumbo v1, "allow-oasis-xml-catalog-pi"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 744
    :cond_2
    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    goto :goto_1

    .line 745
    :cond_3
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultOasisXMLCatalogPI:Z

    return v0

    .line 748
    :catch_0
    move-exception v0

    .line 749
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultOasisXMLCatalogPI:Z

    return v0

    .line 754
    :cond_4
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultOasisXMLCatalogPI:Z

    return v0

    :cond_5
    const-string/jumbo v1, "yes"

    .line 758
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "1"

    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    return v2
.end method

.method public queryCatalogClassName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 794
    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pClassname:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 796
    if-eqz v0, :cond_0

    .line 806
    return-object v0

    .line 797
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_1

    .line 798
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_2

    .line 800
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string/jumbo v1, "catalog-class-name"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 797
    :cond_1
    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    goto :goto_0

    .line 798
    :cond_2
    return-object v2

    .line 800
    :catch_0
    move-exception v0

    .line 802
    return-object v2
.end method

.method public relativeCatalogs()Z
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getRelativeCatalogs()Z

    move-result v0

    return v0
.end method

.method public setAllowOasisXMLCatalogPI(Z)V
    .locals 1

    .prologue
    .line 777
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    .line 778
    return-void
.end method

.method public setBootstrapResolver(Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->bResolver:Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    .line 230
    return-void
.end method

.method public setCatalogClassName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 824
    iput-object p1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    .line 825
    return-void
.end method

.method public setCatalogFiles(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 525
    iput-object p1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->fromPropertiesFile:Z

    .line 527
    return-void
.end method

.method public setIgnoreMissingProperties(Z)V
    .locals 0

    .prologue
    .line 306
    iput-boolean p1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z

    .line 307
    return-void
.end method

.method public setPreferPublic(Z)V
    .locals 1

    .prologue
    .line 586
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    .line 587
    return-void
.end method

.method public setRelativeCatalogs(Z)V
    .locals 1

    .prologue
    .line 448
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    .line 449
    return-void
.end method

.method public setUseStaticCatalog(Z)V
    .locals 1

    .prologue
    .line 646
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    .line 647
    return-void
.end method

.method public setVerbosity(I)V
    .locals 1

    .prologue
    .line 380
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    .line 381
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->setDebug(I)V

    .line 382
    return-void
.end method

.method public staticCatalog()Z
    .locals 1

    .prologue
    .line 655
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getUseStaticCatalog()Z

    move-result v0

    return v0
.end method

.method public verbosity()I
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getVerbosity()I

    move-result v0

    return v0
.end method
