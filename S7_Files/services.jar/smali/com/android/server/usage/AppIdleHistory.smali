.class public Lcom/android/server/usage/AppIdleHistory;
.super Ljava/lang/Object;
.source "AppIdleHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    }
.end annotation


# static fields
.field static final APP_IDLE_FILENAME:Ljava/lang/String; = "app_idle_stats.xml"

.field private static final ATTR_ELAPSED_IDLE:Ljava/lang/String; = "elapsedIdleTime"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_SCREEN_IDLE:Ljava/lang/String; = "screenIdleTime"

.field private static final FLAG_LAST_STATE:I = 0x2

.field private static final FLAG_PARTIAL_ACTIVE:I = 0x1

.field private static final HISTORY_SIZE:I = 0x64

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final PERIOD_DURATION:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "AppIdleHistory"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PACKAGES:Ljava/lang/String; = "packages"


# instance fields
.field private mElapsedDuration:J

.field private mElapsedSnapshot:J

.field private mElapsedTimeThreshold:J

.field private mIdleHistory:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$PackageHistory;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastPeriod:J

.field private mScreenOn:Z

.field private mScreenOnDuration:J

.field private mScreenOnSnapshot:J

.field private mScreenOnTimeThreshold:J

.field private final mStorageDir:Ljava/io/File;


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "elapsedRealtime"    # J

    .prologue
    .line 96
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;-><init>(Ljava/io/File;J)V

    .line 95
    return-void
.end method

.method constructor <init>(Ljava/io/File;J)V
    .locals 2
    .param p1, "storageDir"    # Ljava/io/File;
    .param p2, "elapsedRealtime"    # J

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mLastPeriod:J

    .line 101
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 102
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    .line 103
    iput-object p1, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    .line 104
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->readScreenOnTimeLocked()V

    .line 100
    return-void
.end method

.method private getElapsedTimeLocked(J)J
    .locals 5
    .param p1, "elapsedRealtime"    # J

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getPackageHistoryLocked(Landroid/util/ArrayMap;Ljava/lang/String;J)Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    .locals 5
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "elapsedRealtime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$PackageHistory;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/android/server/usage/AppIdleHistory$PackageHistory;"
        }
    .end annotation

    .prologue
    .local p1, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    const/4 v1, 0x0

    .line 238
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    .line 239
    .local v0, "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    .end local v0    # "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    invoke-direct {v0, v1}, Lcom/android/server/usage/AppIdleHistory$PackageHistory;-><init>(Lcom/android/server/usage/AppIdleHistory$PackageHistory;)V

    .line 241
    .restart local v0    # "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    invoke-direct {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTimeLocked(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedElapsedTime:J

    .line 242
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeLocked(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedScreenTime:J

    .line 243
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_0
    return-object v0
.end method

.method private getUserFile(I)Ljava/io/File;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 290
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string/jumbo v4, "users"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 291
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 291
    const-string/jumbo v2, "app_idle_stats.xml"

    .line 290
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserHistoryLocked(I)Landroid/util/ArrayMap;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$PackageHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 228
    .local v0, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    if-nez v0, :cond_0

    .line 229
    new-instance v0, Landroid/util/ArrayMap;

    .end local v0    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 230
    .restart local v0    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/AppIdleHistory;->readAppIdleTimesLocked(ILandroid/util/ArrayMap;)V

    .line 233
    :cond_0
    return-object v0
.end method

.method private hasPassedThresholdsLocked(Lcom/android/server/usage/AppIdleHistory$PackageHistory;J)Z
    .locals 8
    .param p1, "packageHistory"    # Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    .param p2, "elapsedRealtime"    # J

    .prologue
    const/4 v0, 0x0

    .line 283
    iget-wide v2, p1, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedScreenTime:J

    .line 284
    invoke-virtual {p0, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeLocked(J)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnTimeThreshold:J

    sub-long/2addr v4, v6

    .line 283
    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 285
    iget-wide v2, p1, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedElapsedTime:J

    .line 286
    invoke-direct {p0, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTimeLocked(J)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedTimeThreshold:J

    sub-long/2addr v4, v6

    .line 285
    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 283
    :cond_0
    return v0
.end method

.method private readAppIdleTimesLocked(ILandroid/util/ArrayMap;)V
    .locals 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$PackageHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 295
    const/4 v2, 0x0

    .line 297
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 298
    .local v0, "appIdleFile":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 299
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 300
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 303
    :cond_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    if-eq v7, v10, :cond_1

    .line 304
    if-ne v7, v11, :cond_0

    .line 308
    :cond_1
    if-eq v7, v10, :cond_2

    .line 309
    const-string/jumbo v8, "AppIdleHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to read app idle file for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 310
    return-void

    .line 312
    :cond_2
    :try_start_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "packages"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-nez v8, :cond_3

    .line 332
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 313
    return-void

    .line 315
    :cond_3
    :goto_0
    :try_start_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v11, :cond_4

    .line 316
    if-ne v7, v10, :cond_3

    .line 317
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v8, "package"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 319
    const-string/jumbo v8, "name"

    const/4 v9, 0x0

    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 320
    .local v5, "packageName":Ljava/lang/String;
    new-instance v4, Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/android/server/usage/AppIdleHistory$PackageHistory;-><init>(Lcom/android/server/usage/AppIdleHistory$PackageHistory;)V

    .line 322
    .local v4, "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    const-string/jumbo v8, "elapsedIdleTime"

    const/4 v9, 0x0

    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 321
    iput-wide v8, v4, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedElapsedTime:J

    .line 324
    const-string/jumbo v8, "screenIdleTime"

    const/4 v9, 0x0

    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 323
    iput-wide v8, v4, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedScreenTime:J

    .line 325
    invoke-virtual {p2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 329
    .end local v0    # "appIdleFile":Landroid/util/AtomicFile;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v8, "AppIdleHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to read app idle file for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 332
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 294
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 332
    .restart local v0    # "appIdleFile":Landroid/util/AtomicFile;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 331
    .end local v0    # "appIdleFile":Landroid/util/AtomicFile;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catchall_0
    move-exception v8

    .line 332
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 331
    throw v8
.end method

.method private readScreenOnTimeLocked()V
    .locals 6

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v2

    .line 141
    .local v2, "screenOnTimeFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 144
    .local v1, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 145
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 146
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTimeLocked()V

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private shiftHistoryToNow(Landroid/util/ArrayMap;J)V
    .locals 12
    .param p2, "elapsedRealtime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$PackageHistory;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    const-wide/32 v8, 0x36ee80

    div-long v6, p2, v8

    .line 205
    .local v6, "thisPeriod":J
    iget-wide v8, p0, Lcom/android/server/usage/AppIdleHistory;->mLastPeriod:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    iget-wide v8, p0, Lcom/android/server/usage/AppIdleHistory;->mLastPeriod:J

    cmp-long v8, v8, v6

    if-gez v8, :cond_2

    .line 206
    iget-wide v8, p0, Lcom/android/server/usage/AppIdleHistory;->mLastPeriod:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x63

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 207
    iget-wide v8, p0, Lcom/android/server/usage/AppIdleHistory;->mLastPeriod:J

    sub-long v8, v6, v8

    long-to-int v1, v8

    .line 208
    .local v1, "diff":I
    iget-object v8, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 209
    .local v0, "NUSERS":I
    const/4 v5, 0x0

    .local v5, "u":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 210
    iget-object v8, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    check-cast p1, Landroid/util/ArrayMap;

    .line 211
    .restart local p1    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "idleState$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    .line 213
    .local v3, "idleState":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    iget-object v8, v3, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->recent:[B

    iget-object v9, v3, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->recent:[B

    .line 214
    rsub-int/lit8 v10, v1, 0x64

    .line 213
    const/4 v11, 0x0

    invoke-static {v8, v1, v9, v11, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 216
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 217
    iget-object v8, v3, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->recent:[B

    rsub-int/lit8 v9, v2, 0x64

    add-int/lit8 v9, v9, -0x1

    .line 218
    iget-object v10, v3, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->recent:[B

    rsub-int/lit8 v11, v1, 0x64

    add-int/lit8 v11, v11, -0x1

    aget-byte v10, v10, v11

    and-int/lit8 v10, v10, 0x2

    int-to-byte v10, v10

    .line 217
    aput-byte v10, v8, v9

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 209
    .end local v2    # "i":I
    .end local v3    # "idleState":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 223
    .end local v0    # "NUSERS":I
    .end local v1    # "diff":I
    .end local v4    # "idleState$iterator":Ljava/util/Iterator;
    .end local v5    # "u":I
    :cond_2
    iput-wide v6, p0, Lcom/android/server/usage/AppIdleHistory;->mLastPeriod:J

    .line 202
    return-void
.end method

.method private writeScreenOnTimeLocked()V
    .locals 6

    .prologue
    .line 155
    new-instance v2, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 156
    .local v2, "screenOnTimeFile":Landroid/util/AtomicFile;
    const/4 v0, 0x0

    .line 158
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 159
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 160
    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 160
    const-string/jumbo v4, "\n"

    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 161
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0
.end method


# virtual methods
.method public clearUsageLocked(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 278
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistoryLocked(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 279
    .local v0, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;I)V
    .locals 16
    .param p1, "idpw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "userId"    # I

    .prologue
    .line 374
    const-string/jumbo v13, "Package idle stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 376
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    .line 377
    .local v12, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 378
    .local v4, "elapsedRealtime":J
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTimeLocked(J)J

    move-result-wide v10

    .line 379
    .local v10, "totalElapsedTime":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeLocked(J)J

    move-result-wide v8

    .line 380
    .local v8, "screenOnTime":J
    if-nez v12, :cond_0

    return-void

    .line 381
    :cond_0
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 382
    .local v2, "P":I
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 383
    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 384
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    .line 385
    .local v6, "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "package="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 386
    const-string/jumbo v13, " lastUsedElapsed="

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 387
    iget-wide v14, v6, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedElapsedTime:J

    sub-long v14, v10, v14

    move-object/from16 v0, p1

    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 388
    const-string/jumbo v13, " lastUsedScreenOn="

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 389
    iget-wide v14, v6, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedScreenTime:J

    sub-long v14, v8, v14

    move-object/from16 v0, p1

    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 390
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " idle="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v7, v1, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->isIdleLocked(Ljava/lang/String;IJ)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string/jumbo v13, "y"

    :goto_1
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 382
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 390
    :cond_1
    const-string/jumbo v13, "n"

    goto :goto_1

    .line 393
    .end local v6    # "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 394
    const-string/jumbo v13, "totalElapsedTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTimeLocked(J)J

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 396
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 397
    const-string/jumbo v13, "totalScreenOnTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeLocked(J)J

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 399
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 400
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 373
    return-void
.end method

.method public dumpHistory(Lcom/android/internal/util/IndentingPrintWriter;I)V
    .locals 10
    .param p1, "idpw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "userId"    # I

    .prologue
    .line 404
    iget-object v8, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 405
    .local v7, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 406
    .local v2, "elapsedRealtime":J
    if-nez v7, :cond_0

    return-void

    .line 407
    :cond_0
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 408
    .local v0, "P":I
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_0
    if-ge v5, v0, :cond_4

    .line 409
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 410
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    iget-object v1, v8, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->recent:[B

    .line 411
    .local v1, "history":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/16 v8, 0x64

    if-ge v4, v8, :cond_2

    .line 412
    aget-byte v8, v1, v4

    if-nez v8, :cond_1

    const/16 v8, 0x2e

    :goto_2
    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(C)V

    .line 411
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 412
    :cond_1
    const/16 v8, 0x41

    goto :goto_2

    .line 414
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " idle="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v6, p2, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->isIdleLocked(Ljava/lang/String;IJ)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "y"

    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 415
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 408
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 414
    :cond_3
    const-string/jumbo v8, "n"

    goto :goto_3

    .line 403
    .end local v1    # "history":[B
    .end local v4    # "i":I
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method getScreenOnTimeFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string/jumbo v2, "screen_on_time"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getScreenOnTimeLocked(J)J
    .locals 5
    .param p1, "elapsedRealtime"    # J

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 128
    .local v0, "screenOnTime":J
    iget-boolean v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-eqz v2, :cond_0

    .line 129
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    .line 131
    :cond_0
    return-wide v0
.end method

.method public isIdleLocked(Ljava/lang/String;IJ)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .prologue
    .line 253
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistoryLocked(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 255
    .local v1, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    invoke-direct {p0, v1, p1, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistoryLocked(Landroid/util/ArrayMap;Ljava/lang/String;J)Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    move-result-object v0

    .line 256
    .local v0, "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    if-nez v0, :cond_0

    .line 257
    const/4 v2, 0x0

    return v2

    .line 259
    :cond_0
    invoke-direct {p0, v0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->hasPassedThresholdsLocked(Lcom/android/server/usage/AppIdleHistory$PackageHistory;J)Z

    move-result v2

    return v2
.end method

.method public onUserRemoved(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 248
    return-void
.end method

.method public reportUsageLocked(Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .prologue
    .line 179
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistoryLocked(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 180
    .local v1, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    invoke-direct {p0, v1, p1, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistoryLocked(Landroid/util/ArrayMap;Ljava/lang/String;J)Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    move-result-object v0

    .line 183
    .local v0, "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    invoke-direct {p0, v1, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->shiftHistoryToNow(Landroid/util/ArrayMap;J)V

    .line 185
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 186
    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v4, p3, v4

    .line 185
    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedElapsedTime:J

    .line 187
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeLocked(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedScreenTime:J

    .line 188
    iget-object v2, v0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->recent:[B

    const/4 v3, 0x3

    const/16 v4, 0x63

    aput-byte v3, v2, v4

    .line 178
    return-void
.end method

.method public setIdle(Ljava/lang/String;IJ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .prologue
    .line 192
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistoryLocked(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 193
    .local v1, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    invoke-direct {p0, v1, p1, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistoryLocked(Landroid/util/ArrayMap;Ljava/lang/String;J)Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    move-result-object v0

    .line 196
    .local v0, "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    invoke-direct {p0, v1, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->shiftHistoryToNow(Landroid/util/ArrayMap;J)V

    .line 198
    iget-object v2, v0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->recent:[B

    const/16 v3, 0x63

    aget-byte v4, v2, v3

    and-int/lit8 v4, v4, -0x3

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 191
    return-void
.end method

.method public setIdleLocked(Ljava/lang/String;IZJ)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z
    .param p4, "elapsedRealtime"    # J

    .prologue
    .line 268
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistoryLocked(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 269
    .local v1, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    invoke-direct {p0, v1, p1, p4, p5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistoryLocked(Landroid/util/ArrayMap;Ljava/lang/String;J)Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    move-result-object v0

    .line 271
    .local v0, "packageHistory":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    invoke-direct {p0, p4, p5}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTimeLocked(J)J

    move-result-wide v2

    .line 272
    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedTimeThreshold:J

    .line 271
    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedElapsedTime:J

    .line 273
    invoke-virtual {p0, p4, p5}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeLocked(J)J

    move-result-wide v4

    .line 274
    if-eqz p3, :cond_0

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnTimeThreshold:J

    .line 273
    :goto_0
    sub-long v2, v4, v2

    .line 274
    const-wide/16 v4, 0x3e8

    .line 273
    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedScreenTime:J

    .line 267
    return-void

    .line 274
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public setThresholds(JJ)V
    .locals 1
    .param p1, "elapsedTimeThreshold"    # J
    .param p3, "screenOnTimeThreshold"    # J

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedTimeThreshold:J

    .line 109
    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnTimeThreshold:J

    .line 107
    return-void
.end method

.method public updateDisplayLocked(ZJ)V
    .locals 4
    .param p1, "screenOn"    # Z
    .param p2, "elapsedRealtime"    # J

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 115
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    .line 116
    iget-boolean v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-eqz v0, :cond_1

    .line 117
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    .line 112
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 120
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 121
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTimeLocked()V

    .line 122
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    goto :goto_0
.end method

.method public writeAppIdleTimesLocked(I)V
    .locals 14
    .param p1, "userId"    # I

    .prologue
    .line 337
    const/4 v4, 0x0

    .line 338
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 340
    .local v1, "appIdleFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    .line 341
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 343
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    new-instance v9, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v9}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 344
    .local v9, "xml":Lcom/android/internal/util/FastXmlSerializer;
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 345
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 346
    const-string/jumbo v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 348
    const-string/jumbo v10, "packages"

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 350
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistoryLocked(I)Landroid/util/ArrayMap;

    move-result-object v8

    .line 351
    .local v8, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 352
    .local v0, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_0

    .line 353
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 354
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usage/AppIdleHistory$PackageHistory;

    .line 355
    .local v5, "history":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    const-string/jumbo v10, "package"

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 356
    const-string/jumbo v10, "name"

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    const-string/jumbo v10, "elapsedIdleTime"

    .line 358
    iget-wide v12, v5, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedElapsedTime:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 357
    const/4 v12, 0x0

    invoke-virtual {v9, v12, v10, v11}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 359
    const-string/jumbo v10, "screenIdleTime"

    .line 360
    iget-wide v12, v5, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->lastUsedScreenTime:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 359
    const/4 v12, 0x0

    invoke-virtual {v9, v12, v10, v11}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    const-string/jumbo v10, "package"

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 352
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 364
    .end local v5    # "history":Lcom/android/server/usage/AppIdleHistory$PackageHistory;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v10, "packages"

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 365
    invoke-virtual {v9}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 366
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v0    # "N":I
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "i":I
    .end local v8    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$PackageHistory;>;"
    .end local v9    # "xml":Lcom/android/internal/util/FastXmlSerializer;
    :goto_1
    return-void

    .line 367
    :catch_0
    move-exception v3

    .line 368
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 369
    const-string/jumbo v10, "AppIdleHistory"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error writing app idle file for user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public writeElapsedTimeLocked()V
    .locals 6

    .prologue
    .line 171
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 173
    .local v0, "elapsedRealtime":J
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 174
    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 175
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTimeLocked()V

    .line 170
    return-void
.end method
