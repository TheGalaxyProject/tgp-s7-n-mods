.class public Lcom/samsung/android/personalpage/service/util/PersonalPageLog;
.super Ljava/lang/Object;
.source "PersonalPageLog.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_FILE:Z = true

.field private static final LOG_D:Z = true

.field private static final LOG_E:Z = true

.field private static final LOG_I:Z = true

.field private static final LOG_LOCK:Z = false

.field private static final LOG_W:Z = true

.field private static final PREFIX_LOG_FILE_NAME:Ljava/lang/String; = "pp_"

.field static final TAG:Ljava/lang/String; = "PPS_"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->mFile:Ljava/io/File;

    sget-boolean v0, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->DEBUG:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private static concatTAG(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string/jumbo v0, "PPS_"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "PPS_"

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->concatTAG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->concatTAG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->concatTAG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->concatTAG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->concatTAG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static lock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->concatTAG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->concatTAG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->concatTAG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public createLogFile()V
    .locals 9

    const/4 v8, 0x0

    sget-boolean v4, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->DEBUG:Z

    if-eqz v4, :cond_0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy.MM.dd"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pp_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->mFile:Ljava/io/File;

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "PPS_"

    const-string/jumbo v5, "log file is created"

    invoke-static {v4, v5}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "PPS_"

    const-string/jumbo v5, "Failure to create log file"

    invoke-static {v4, v5, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v8, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->mFile:Ljava/io/File;

    goto :goto_0
.end method

.method public logToFile(Ljava/lang/String;)V
    .locals 10

    sget-boolean v5, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->DEBUG:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->mFile:Ljava/io/File;

    if-nez v5, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->mFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v5, "%s: %s%n"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "yy/MM/dd kk:mm:ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    const-string/jumbo v5, "PPS_"

    const-string/jumbo v6, "logToFile:"

    invoke-static {v5, v6, v0}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v5, "PPS_"

    const-string/jumbo v6, "logToFile:"

    invoke-static {v5, v6, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method
