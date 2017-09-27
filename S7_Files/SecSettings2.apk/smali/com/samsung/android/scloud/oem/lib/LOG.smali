.class public Lcom/samsung/android/scloud/oem/lib/LOG;
.super Ljava/lang/Object;
.source "LOG.java"


# static fields
.field private static bFileLogEnabled:Z

.field private static bLogEnabled:Z

.field static final formatter:Ljava/text/SimpleDateFormat;

.field static final logPath:Ljava/lang/String;

.field static mFile:Ljava/io/File;

.field static mWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    sput-boolean v2, Lcom/samsung/android/scloud/oem/lib/LOG;->bLogEnabled:Z

    .line 42
    sput-boolean v2, Lcom/samsung/android/scloud/oem/lib/LOG;->bFileLogEnabled:Z

    const-string/jumbo v0, "eng"

    .line 45
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "PDMLogs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sCloudLib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/LOG;->logPath:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM.dd_HH-mm-ss"

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/LOG;->formatter:Ljava/text/SimpleDateFormat;

    .line 236
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/scloud/oem/lib/LOG;->bLogEnabled:Z

    .line 47
    sput-boolean v2, Lcom/samsung/android/scloud/oem/lib/LOG;->bFileLogEnabled:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 169
    sget-boolean v0, Lcom/samsung/android/scloud/oem/lib/LOG;->bLogEnabled:Z

    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    if-eqz p1, :cond_0

    .line 170
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {p0, p1}, Lcom/samsung/android/scloud/oem/lib/LOG;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "Tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 194
    :goto_0
    if-nez p2, :cond_2

    .line 200
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SCLOUD_ERR-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SCLOUD_ERR-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/scloud/oem/lib/LOG;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void

    .line 192
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Exception : "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_1

    const-string/jumbo v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 195
    :cond_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 196
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "Tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {p0, p1}, Lcom/samsung/android/scloud/oem/lib/LOG;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static declared-synchronized getLogWriter()Ljava/io/PrintWriter;
    .locals 12

    .prologue
    const-wide/32 v10, 0x500000

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-class v6, Lcom/samsung/android/scloud/oem/lib/LOG;

    monitor-enter v6

    .line 64
    :try_start_0
    sget-object v5, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    if-eqz v5, :cond_1

    .line 85
    sget-object v5, Lcom/samsung/android/scloud/oem/lib/LOG;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v5, v8, v10

    if-gtz v5, :cond_4

    move v5, v3

    :goto_0
    if-nez v5, :cond_0

    .line 86
    sget-object v5, Lcom/samsung/android/scloud/oem/lib/LOG;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    cmp-long v5, v8, v10

    if-gtz v5, :cond_5

    :goto_1
    if-nez v3, :cond_0

    .line 88
    :try_start_1
    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 89
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/scloud/oem/lib/LOG;->logPath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/scloud/oem/lib/LOG;->formatter:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mFile:Ljava/io/File;

    .line 90
    new-instance v3, Ljava/io/PrintWriter;

    sget-object v4, Lcom/samsung/android/scloud/oem/lib/LOG;->mFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    sput-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v3, "PDMLogs"

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "create writer : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/scloud/oem/lib/LOG;->logPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    :try_start_2
    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return-object v3

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_0

    .line 67
    :try_start_4
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->logPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "folderPath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    :goto_3
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/scloud/oem/lib/LOG;->logPath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/scloud/oem/lib/LOG;->formatter:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mFile:Ljava/io/File;

    .line 74
    new-instance v2, Ljava/io/FileWriter;

    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 75
    .local v2, "writer":Ljava/io/FileWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v3, "PDMLogs"

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "create writer : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/scloud/oem/lib/LOG;->logPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 77
    .end local v2    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v3, "PDMLogs"

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "create error : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    if-nez v3, :cond_3

    :goto_4
    const/4 v3, 0x0

    .line 82
    sput-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .end local v1    # "folderPath":Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "folderPath":Ljava/io/File;
    :cond_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    const-string/jumbo v3, "PDMLogs"

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "create dir : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/scloud/oem/lib/LOG;->logPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 81
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_7
    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    goto :goto_4

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "folderPath":Ljava/io/File;
    :cond_4
    move v5, v4

    .line 85
    goto/16 :goto_0

    :cond_5
    move v3, v4

    .line 86
    goto/16 :goto_1

    .line 92
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "PDMLogs"

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "create error : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    if-nez v3, :cond_6

    :goto_5
    const/4 v3, 0x0

    .line 97
    sput-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    goto/16 :goto_2

    .line 96
    :cond_6
    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 162
    sget-boolean v0, Lcom/samsung/android/scloud/oem/lib/LOG;->bLogEnabled:Z

    if-nez v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    if-eqz p1, :cond_0

    .line 163
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {p0, p1}, Lcom/samsung/android/scloud/oem/lib/LOG;->writeLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static writeLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-static {p0, p1, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    return-void
.end method

.method private static writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 109
    sget-boolean v2, Lcom/samsung/android/scloud/oem/lib/LOG;->bFileLogEnabled:Z

    if-nez v2, :cond_0

    .line 128
    :goto_0
    return-void

    .line 110
    :cond_0
    sget-object v3, Lcom/samsung/android/scloud/oem/lib/LOG;->formatter:Ljava/text/SimpleDateFormat;

    monitor-enter v3

    .line 112
    :try_start_0
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/LOG;->getLogWriter()Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 113
    .local v1, "writer":Ljava/io/PrintWriter;
    if-nez v1, :cond_1

    .line 110
    .end local v1    # "writer":Ljava/io/PrintWriter;
    :goto_1
    :try_start_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 114
    .restart local v1    # "writer":Ljava/io/PrintWriter;
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/scloud/oem/lib/LOG;->formatter:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "]["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 115
    if-nez p2, :cond_2

    .line 117
    :goto_2
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 119
    .end local v1    # "writer":Ljava/io/PrintWriter;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v2, "PDMLogs"

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "write error : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    sget-object v2, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    if-nez v2, :cond_3

    :goto_3
    const/4 v2, 0x0

    .line 124
    sput-object v2, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "writer":Ljava/io/PrintWriter;
    :cond_2
    :try_start_4
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 123
    .end local v1    # "writer":Ljava/io/PrintWriter;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_5
    sget-object v2, Lcom/samsung/android/scloud/oem/lib/LOG;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method
