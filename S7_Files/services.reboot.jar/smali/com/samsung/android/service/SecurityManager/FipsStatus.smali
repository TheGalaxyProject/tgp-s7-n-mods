.class public Lcom/samsung/android/service/SecurityManager/FipsStatus;
.super Ljava/lang/Object;
.source "FipsStatus.java"


# static fields
.field public static final CRYPTO_PROC_PATH:Ljava/lang/String; = "/proc/sys/crypto"

.field public static final FIPS_STATUS_FILE:Ljava/lang/String; = "fips_status"

.field public static final IN_FIPS_ERROR:I = 0x1

.field public static final NOT_IN_FIPS_ERROR:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SMS[Fips]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFipsStatus()I
    .locals 12

    .prologue
    .line 26
    new-instance v5, Ljava/io/File;

    const-string/jumbo v9, "/proc/sys/crypto"

    const-string/jumbo v10, "fips_status"

    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .local v5, "fipsStatus":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 29
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 30
    const/4 v0, 0x0

    .line 32
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 34
    .local v8, "status":Ljava/lang/String;
    const/4 v7, 0x1

    .line 35
    .local v7, "result":I
    if-eqz v8, :cond_2

    .line 36
    invoke-virtual {v8}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-lez v9, :cond_2

    .line 38
    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v9

    if-nez v9, :cond_1

    const/4 v7, 0x0

    .line 43
    :goto_0
    :try_start_3
    const-string/jumbo v9, "SMS[Fips]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "FipsStatus: getFipsStatus="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 44
    :cond_0
    :goto_1
    return v7

    .line 38
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 39
    :catch_0
    move-exception v4

    .line 40
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v9, "SMS[Fips]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "FipsStatus: exception while parsing status="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 41
    const/4 v7, 0x1

    goto :goto_0

    .line 55
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 56
    .local v6, "ioe":Ljava/io/IOException;
    const-string/jumbo v9, "SMS[Fips]"

    const-string/jumbo v10, "FipsStatus: close exception"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 53
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_2
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 64
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "result":I
    .end local v8    # "status":Ljava/lang/String;
    :cond_3
    :goto_2
    const-string/jumbo v9, "SMS[Fips]"

    const-string/jumbo v10, "FipsStatus: getFipsStatus: returning with not in fip error"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v9, 0x1

    return v9

    .line 55
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "result":I
    .restart local v8    # "status":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 56
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string/jumbo v9, "SMS[Fips]"

    const-string/jumbo v10, "FipsStatus: close exception"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 49
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "ioe":Ljava/io/IOException;
    .end local v7    # "result":I
    .end local v8    # "status":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    .line 50
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string/jumbo v9, "SMS[Fips]"

    const-string/jumbo v10, "FipsStatus: getFipsStatus: exception while reading status file"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 53
    if-eqz v0, :cond_3

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 55
    :catch_4
    move-exception v6

    .line 56
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string/jumbo v9, "SMS[Fips]"

    const-string/jumbo v10, "FipsStatus: close exception"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 47
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    .line 48
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_9
    const-string/jumbo v9, "SMS[Fips]"

    const-string/jumbo v10, "FipsStatus: getFipsStatus: status file does not exist"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 53
    if-eqz v0, :cond_3

    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_2

    .line 55
    :catch_6
    move-exception v6

    .line 56
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string/jumbo v9, "SMS[Fips]"

    const-string/jumbo v10, "FipsStatus: close exception"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 51
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 53
    :goto_5
    if-eqz v0, :cond_4

    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 51
    :cond_4
    :goto_6
    throw v9

    .line 55
    :catch_7
    move-exception v6

    .line 56
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string/jumbo v10, "SMS[Fips]"

    const-string/jumbo v11, "FipsStatus: close exception"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 60
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_5
    const-string/jumbo v9, "SMS[Fips]"

    const-string/jumbo v10, "FipsStatus: getFipsStatus: unable to read status file"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 51
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 47
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_8
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 49
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_9
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3
.end method
