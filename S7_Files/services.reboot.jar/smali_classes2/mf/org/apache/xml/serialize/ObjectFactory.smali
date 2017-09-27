.class final Lmf/org/apache/xml/serialize/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_LINE_LENGTH:I = 0x50

.field private static final DEFAULT_PROPERTIES_FILENAME:Ljava/lang/String; = "xerces.properties"

.field private static fLastModified:J

.field private static fXercesProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lmf/org/apache/xml/serialize/ObjectFactory;->isDebugEnabled()Z

    move-result v0

    sput-boolean v0, Lmf/org/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    const/4 v0, 0x0

    .line 64
    sput-object v0, Lmf/org/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    const-wide/16 v0, -0x1

    .line 71
    sput-wide v0, Lmf/org/apache/xml/serialize/ObjectFactory;->fLastModified:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-static {p0, v0, p1}, Lmf/org/apache/xml/serialize/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 127
    sget-boolean v0, Lmf/org/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-nez v0, :cond_1

    .line 129
    :goto_0
    invoke-static {}, Lmf/org/apache/xml/serialize/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 133
    :try_start_0
    invoke-static {p0}, Lmf/org/apache/xml/serialize/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 134
    if-nez v0, :cond_2

    .line 145
    :cond_0
    :goto_1
    if-eqz p1, :cond_4

    .line 213
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmf/org/apache/xml/serialize/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 214
    :try_start_2
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 215
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 216
    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v2

    .line 224
    if-nez v0, :cond_13

    move-object v0, v2

    .line 233
    :goto_2
    if-nez v0, :cond_14

    .line 239
    invoke-static {p0}, Lmf/org/apache/xml/serialize/ObjectFactory;->findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    if-nez v0, :cond_16

    .line 244
    if-eqz p2, :cond_17

    .line 249
    sget-boolean v0, Lmf/org/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-nez v0, :cond_18

    .line 250
    :goto_3
    invoke-static {p2, v6, v4}, Lmf/org/apache/xml/serialize/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "debug is on"

    .line 127
    invoke-static {v0}, Lmf/org/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 135
    sget-boolean v2, Lmf/org/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-nez v2, :cond_3

    .line 136
    :goto_4
    const/4 v2, 0x1

    invoke-static {v0, v6, v2}, Lmf/org/apache/xml/serialize/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 135
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "found system property, value="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmf/org/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 136
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    :try_start_4
    const-string/jumbo v0, "java.home"

    .line 149
    invoke-static {v0}, Lmf/org/apache/xml/serialize/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "lib"

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "xerces.properties"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    .line 153
    :try_start_5
    invoke-static {v0}, Lmf/org/apache/xml/serialize/SecuritySupport;->getFileExists(Ljava/io/File;)Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_c

    move-result v2

    move v12, v2

    move-object v2, v0

    move v0, v12

    :goto_5
    const-class v7, Lmf/org/apache/xml/serialize/ObjectFactory;

    .line 160
    monitor-enter v7

    .line 165
    :try_start_6
    sget-wide v8, Lmf/org/apache/xml/serialize/ObjectFactory;->fLastModified:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-gez v5, :cond_8

    move v5, v4

    :goto_6
    if-nez v5, :cond_c

    .line 166
    if-nez v0, :cond_9

    .line 171
    :cond_5
    if-eqz v0, :cond_b

    .line 183
    :cond_6
    :goto_7
    if-nez v3, :cond_d

    move-object v0, v1

    .line 198
    :goto_8
    if-nez v0, :cond_f

    .line 160
    :cond_7
    :goto_9
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 207
    sget-object v0, Lmf/org/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    if-nez v0, :cond_10

    move-object v0, v1

    goto/16 :goto_2

    .line 154
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 156
    :goto_a
    sput-wide v8, Lmf/org/apache/xml/serialize/ObjectFactory;->fLastModified:J

    .line 157
    sput-object v1, Lmf/org/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    move-object v2, v0

    move v0, v3

    goto :goto_5

    :cond_8
    move v5, v3

    .line 165
    goto :goto_6

    .line 167
    :cond_9
    :try_start_8
    sget-wide v8, Lmf/org/apache/xml/serialize/ObjectFactory;->fLastModified:J

    invoke-static {v2}, Lmf/org/apache/xml/serialize/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v10

    sput-wide v10, Lmf/org/apache/xml/serialize/ObjectFactory;->fLastModified:J

    cmp-long v5, v8, v10

    if-ltz v5, :cond_a

    move v5, v4

    :goto_b
    if-nez v5, :cond_5

    move v3, v4

    .line 169
    goto :goto_7

    :cond_a
    move v5, v3

    .line 167
    goto :goto_b

    :cond_b
    const-wide/16 v8, -0x1

    .line 172
    sput-wide v8, Lmf/org/apache/xml/serialize/ObjectFactory;->fLastModified:J

    const/4 v0, 0x0

    .line 173
    sput-object v0, Lmf/org/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    .line 189
    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_c
    const/4 v2, 0x0

    .line 190
    :try_start_9
    sput-object v2, Lmf/org/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    const-wide/16 v2, -0x1

    .line 191
    sput-wide v2, Lmf/org/apache/xml/serialize/ObjectFactory;->fLastModified:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 198
    if-eqz v0, :cond_7

    .line 200
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_9

    .line 201
    :catch_3
    move-exception v0

    goto :goto_9

    .line 178
    :cond_c
    if-eqz v0, :cond_6

    .line 180
    :try_start_b
    invoke-static {v2}, Lmf/org/apache/xml/serialize/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v8

    sput-wide v8, Lmf/org/apache/xml/serialize/ObjectFactory;->fLastModified:J

    move v3, v4

    goto :goto_7

    .line 185
    :cond_d
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lmf/org/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    .line 186
    invoke-static {v2}, Lmf/org/apache/xml/serialize/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v0

    .line 187
    :try_start_c
    sget-object v2, Lmf/org/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_8

    .line 189
    :catch_4
    move-exception v2

    goto :goto_c

    .line 203
    :catchall_0
    move-exception v0

    .line 198
    :goto_d
    if-nez v1, :cond_e

    .line 205
    :goto_e
    :try_start_d
    throw v0

    .line 160
    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0

    .line 200
    :cond_e
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_e

    .line 201
    :catch_5
    move-exception v1

    goto :goto_e

    .line 200
    :cond_f
    :try_start_f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_9

    .line 201
    :catch_6
    move-exception v0

    goto :goto_9

    .line 208
    :cond_10
    sget-object v0, Lmf/org/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 217
    :catch_7
    move-exception v0

    move-object v0, v1

    .line 224
    :goto_f
    if-nez v0, :cond_11

    move-object v0, v1

    goto/16 :goto_2

    .line 226
    :cond_11
    :try_start_10
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    move-object v0, v1

    .line 227
    goto/16 :goto_2

    :catch_8
    move-exception v0

    move-object v0, v1

    .line 229
    goto/16 :goto_2

    :catchall_2
    move-exception v0

    .line 224
    :goto_10
    if-nez v1, :cond_12

    .line 231
    :goto_11
    throw v0

    .line 226
    :cond_12
    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_11

    .line 227
    :catch_9
    move-exception v1

    goto :goto_11

    .line 226
    :cond_13
    :try_start_12
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    :goto_12
    move-object v0, v2

    .line 227
    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto :goto_12

    .line 234
    :cond_14
    sget-boolean v1, Lmf/org/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-nez v1, :cond_15

    .line 235
    :goto_13
    invoke-static {v0, v6, v4}, Lmf/org/apache/xml/serialize/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 234
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "found in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmf/org/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    goto :goto_13

    .line 241
    :cond_16
    return-object v0

    .line 245
    :cond_17
    new-instance v0, Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Provider for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cannot be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-direct {v0, v2, v1}, Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 249
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "using fallback, value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 229
    :catchall_3
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_10

    .line 217
    :catch_b
    move-exception v2

    goto/16 :goto_f

    .line 203
    :catchall_4
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_d

    .line 154
    :catch_c
    move-exception v2

    goto/16 :goto_a
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 270
    sget-boolean v0, Lmf/org/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "XERCES: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static findClassLoader()Ljava/lang/ClassLoader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {}, Lmf/org/apache/xml/serialize/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 285
    invoke-static {}, Lmf/org/apache/xml/serialize/SecuritySupport;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object v0, v1

    .line 289
    :goto_0
    if-eq v2, v0, :cond_0

    .line 318
    if-eqz v0, :cond_3

    .line 325
    invoke-static {v0}, Lmf/org/apache/xml/serialize/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-class v0, Lmf/org/apache/xml/serialize/ObjectFactory;

    .line 298
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v0, v1

    .line 302
    :goto_1
    if-eq v2, v0, :cond_1

    .line 307
    if-eqz v0, :cond_2

    .line 310
    invoke-static {v0}, Lmf/org/apache/xml/serialize/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    .line 305
    :cond_1
    return-object v1

    .line 315
    :cond_2
    return-object v2

    .line 330
    :cond_3
    return-object v2
.end method

.method private static findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    const/16 v7, 0x50

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "META-INF/services/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 421
    invoke-static {}, Lmf/org/apache/xml/serialize/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 423
    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 426
    if-eqz v2, :cond_1

    move-object v1, v0

    .line 434
    :goto_0
    if-eqz v2, :cond_3

    .line 439
    sget-boolean v0, Lmf/org/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-nez v0, :cond_4

    .line 460
    :goto_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v4, 0x50

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 477
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 483
    :goto_3
    if-nez v2, :cond_5

    .line 496
    :cond_0
    return-object v5

    :cond_1
    const-class v1, Lmf/org/apache/xml/serialize/ObjectFactory;

    .line 427
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 428
    if-ne v0, v1, :cond_2

    move-object v1, v0

    goto :goto_0

    .line 430
    :cond_2
    invoke-static {v1, v3}, Lmf/org/apache/xml/serialize/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 436
    :cond_3
    return-object v5

    .line 439
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "found jar resource="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " using ClassLoader: "

    .line 440
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-static {v0}, Lmf/org/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    goto :goto_1

    .line 461
    :catch_0
    move-exception v0

    .line 462
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    goto :goto_2

    .line 470
    :catch_1
    move-exception v1

    .line 477
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 472
    :goto_4
    return-object v5

    .line 478
    :catch_2
    move-exception v0

    goto :goto_4

    .line 472
    :catchall_0
    move-exception v1

    .line 477
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 481
    :goto_5
    throw v1

    .line 478
    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_3

    :cond_5
    const-string/jumbo v0, ""

    .line 484
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    sget-boolean v0, Lmf/org/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-nez v0, :cond_6

    .line 492
    :goto_6
    invoke-static {v2, v1, v6}, Lmf/org/apache/xml/serialize/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 485
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "found in resource, value="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-static {v0}, Lmf/org/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    goto :goto_6
.end method

.method static findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 366
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 367
    if-nez v1, :cond_0

    .line 374
    :goto_0
    if-eqz p1, :cond_2

    .line 387
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 406
    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v0, "."

    .line 368
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    .line 370
    if-ne v0, v2, :cond_1

    move-object v0, p0

    .line 371
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_1
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 384
    :cond_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 388
    :catch_0
    move-exception v0

    .line 389
    if-nez p2, :cond_3

    .line 401
    throw v0

    :cond_3
    const-class v1, Lmf/org/apache/xml/serialize/ObjectFactory;

    .line 391
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 392
    if-eqz v1, :cond_4

    .line 394
    if-ne p1, v1, :cond_5

    .line 398
    throw v0

    .line 393
    :cond_4
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 396
    :cond_5
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1
.end method

.method private static isDebugEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "xerces.debug"

    .line 260
    invoke-static {v0}, Lmf/org/apache/xml/serialize/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    if-nez v0, :cond_1

    :cond_0
    return v2

    :cond_1
    const-string/jumbo v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 265
    return v2
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 342
    :try_start_0
    invoke-static {p0, p1, p2}, Lmf/org/apache/xml/serialize/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 344
    sget-boolean v2, Lmf/org/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-nez v2, :cond_0

    .line 346
    :goto_0
    return-object v1

    .line 344
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "created new instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " using ClassLoader: "

    .line 345
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-static {v0}, Lmf/org/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 348
    new-instance v1, Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;

    .line 349
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

    .line 348
    invoke-direct {v1, v2, v0}, Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    .line 351
    new-instance v1, Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;

    .line 352
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

    .line 351
    invoke-direct {v1, v2, v0}, Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
