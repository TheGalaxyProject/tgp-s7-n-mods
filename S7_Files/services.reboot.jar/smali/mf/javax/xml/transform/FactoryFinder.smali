.class Lmf/javax/xml/transform/FactoryFinder;
.super Ljava/lang/Object;
.source "FactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;
    }
.end annotation


# static fields
.field static cacheProps:Ljava/util/Properties;

.field private static debug:Z

.field static volatile firstTime:Z

.field static ss:Lmf/javax/xml/transform/SecuritySupport;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    sput-boolean v1, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    .line 74
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    sput-object v2, Lmf/javax/xml/transform/FactoryFinder;->cacheProps:Ljava/util/Properties;

    .line 80
    sput-boolean v0, Lmf/javax/xml/transform/FactoryFinder;->firstTime:Z

    .line 86
    new-instance v2, Lmf/javax/xml/transform/SecuritySupport;

    invoke-direct {v2}, Lmf/javax/xml/transform/SecuritySupport;-><init>()V

    sput-object v2, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    .line 93
    :try_start_0
    sget-object v2, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    const-string/jumbo v3, "jaxp.debug"

    invoke-virtual {v2, v3}, Lmf/javax/xml/transform/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    if-nez v2, :cond_1

    :goto_0
    move v0, v1

    :cond_0
    sput-boolean v0, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    .line 100
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v3, "false"

    .line 95
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 98
    sput-boolean v1, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dPrint(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 103
    sget-boolean v0, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "JAXP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "find factoryId ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    .line 257
    :try_start_0
    sget-object v0, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v0, p0}, Lmf/javax/xml/transform/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 258
    if-nez v0, :cond_2

    .line 270
    :cond_0
    :goto_0
    :try_start_1
    sget-boolean v0, Lmf/javax/xml/transform/FactoryFinder;->firstTime:Z

    if-nez v0, :cond_3

    .line 284
    :goto_1
    sget-object v0, Lmf/javax/xml/transform/FactoryFinder;->cacheProps:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 286
    if-nez v0, :cond_6

    .line 296
    :cond_1
    :goto_2
    invoke-static {p0}, Lmf/javax/xml/transform/FactoryFinder;->findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 297
    if-nez v0, :cond_7

    .line 300
    if-eqz p1, :cond_8

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "loaded from fallback value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    .line 306
    invoke-static {p1, v6, v7, v5, v7}, Lmf/javax/xml/transform/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 259
    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "found system property, value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 260
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lmf/javax/xml/transform/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZZ)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 264
    sget-boolean v1, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 271
    :cond_3
    :try_start_3
    sget-object v1, Lmf/javax/xml/transform/FactoryFinder;->cacheProps:Ljava/util/Properties;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 272
    :try_start_4
    sget-boolean v0, Lmf/javax/xml/transform/FactoryFinder;->firstTime:Z

    if-nez v0, :cond_5

    .line 271
    :cond_4
    :goto_3
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 288
    :catch_1
    move-exception v0

    .line 292
    sget-boolean v1, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 273
    :cond_5
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    const-string/jumbo v3, "java.home"

    invoke-virtual {v2, v3}, Lmf/javax/xml/transform/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "lib"

    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "jaxp.properties"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    const/4 v0, 0x0

    sput-boolean v0, Lmf/javax/xml/transform/FactoryFinder;->firstTime:Z

    .line 277
    sget-object v0, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v0, v2}, Lmf/javax/xml/transform/SecuritySupport;->doesFileExist(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Read properties file "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    .line 279
    sget-object v0, Lmf/javax/xml/transform/FactoryFinder;->cacheProps:Ljava/util/Properties;

    sget-object v3, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v3, v2}, Lmf/javax/xml/transform/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 287
    :cond_6
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "found in $java.home/jaxp.properties, value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 288
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lmf/javax/xml/transform/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZZ)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v0

    return-object v0

    .line 298
    :cond_7
    return-object v0

    .line 301
    :cond_8
    new-instance v0, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Provider for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cannot be found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-direct {v0, v1, v6}, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private static findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "META-INF/services/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 321
    sget-object v0, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v0}, Lmf/javax/xml/transform/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 323
    if-nez v0, :cond_1

    const-class v0, Lmf/javax/xml/transform/FactoryFinder;

    .line 334
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 335
    sget-object v1, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v1, v0, v6}, Lmf/javax/xml/transform/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    move-object v4, v0

    move-object v5, v1

    move v1, v2

    .line 339
    :goto_0
    if-eqz v5, :cond_3

    .line 344
    sget-boolean v0, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    if-nez v0, :cond_4

    .line 350
    :goto_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 361
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 367
    if-nez v5, :cond_5

    .line 378
    :cond_0
    return-object v8

    .line 324
    :cond_1
    sget-object v1, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v1, v0, v6}, Lmf/javax/xml/transform/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 327
    if-eqz v1, :cond_2

    move-object v4, v0

    move-object v5, v1

    move v1, v3

    goto :goto_0

    :cond_2
    const-class v0, Lmf/javax/xml/transform/FactoryFinder;

    .line 328
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 329
    sget-object v1, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v1, v0, v6}, Lmf/javax/xml/transform/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    move-object v4, v0

    move-object v5, v1

    move v1, v2

    .line 332
    goto :goto_0

    .line 341
    :cond_3
    return-object v8

    .line 345
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "found jar resource="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, " using ClassLoader: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    goto :goto_1

    .line 351
    :catch_0
    move-exception v0

    .line 353
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_2

    .line 362
    :catch_1
    move-exception v0

    .line 364
    return-object v8

    :cond_5
    const-string/jumbo v0, ""

    .line 367
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "found in resource, value="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    .line 374
    invoke-static {v5, v4, v3, v1, v2}, Lmf/javax/xml/transform/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 123
    if-eqz p1, :cond_0

    .line 137
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 124
    :cond_0
    if-nez p3, :cond_1

    .line 127
    sget-object v0, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v0}, Lmf/javax/xml/transform/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_1
    const-class v0, Lmf/javax/xml/transform/FactoryFinder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 129
    :cond_2
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :catch_0
    move-exception v0

    .line 141
    if-nez p2, :cond_3

    .line 146
    throw v0

    :cond_3
    const-class v0, Lmf/javax/xml/transform/FactoryFinder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-static {p0, p1, p2, v0, v0}, Lmf/javax/xml/transform/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZZ)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 192
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lmf/javax/xml/transform/FactoryFinder;->getProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)Ljava/lang/Class;

    move-result-object v1

    .line 194
    if-eqz p4, :cond_0

    .line 197
    :goto_0
    if-eqz v0, :cond_1

    .line 200
    :goto_1
    sget-boolean v2, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    if-nez v2, :cond_2

    .line 204
    :goto_2
    return-object v0

    .line 195
    :cond_0
    invoke-static {v1}, Lmf/javax/xml/transform/FactoryFinder;->newInstanceNoServiceLoader(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 201
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "created new instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " using ClassLoader: "

    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 204
    :catch_0
    move-exception v0

    .line 207
    new-instance v1, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Provider "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-direct {v1, v2, v0}, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    .line 211
    new-instance v1, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Provider "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " could not be instantiated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-direct {v1, v2, v0}, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private static newInstanceNoServiceLoader(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 224
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "newTransformerFactoryNoServiceLoader"

    const/4 v1, 0x0

    .line 230
    new-array v1, v1, [Ljava/lang/Class;

    .line 229
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 232
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 225
    :cond_0
    return-object v3

    .line 232
    :catch_0
    move-exception v0

    .line 234
    return-object v3

    :catch_1
    move-exception v0

    .line 236
    return-object v3
.end method
