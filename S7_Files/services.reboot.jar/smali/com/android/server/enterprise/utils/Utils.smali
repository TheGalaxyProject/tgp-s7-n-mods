.class public Lcom/android/server/enterprise/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final BLACKLIST:Ljava/lang/String; = "BLACKLIST"

.field public static TAG:Ljava/lang/String; = null

.field public static final WHITELIST:Ljava/lang/String; = "WHITELIST"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string/jumbo v0, "EnterpriseUtils"

    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertListToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 418
    invoke-static {p1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 420
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "list"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 413
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static deserializeObject([B)Ljava/lang/Object;
    .locals 6
    .param p0, "b"    # [B

    .prologue
    const/4 v5, 0x0

    .line 364
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    .line 365
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 364
    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 366
    .local v2, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 367
    .local v3, "object":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    return-object v3

    .line 371
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .end local v3    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/io/IOException;
    return-object v5

    .line 369
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 370
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    return-object v5
.end method

.method public static deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .param p0, "objectString"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 393
    if-nez p0, :cond_0

    .line 394
    return-object v10

    .line 395
    :cond_0
    const/4 v0, 0x0

    .local v0, "arrayInputStream":Ljava/io/ByteArrayInputStream;
    const/4 v4, 0x0

    .local v4, "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    const/4 v6, 0x0

    .line 396
    .local v6, "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v8, 0x0

    invoke-static {p0, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 397
    .end local v0    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .local v1, "arrayInputStream":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 398
    .local v5, "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :try_start_2
    new-instance v7, Ljava/io/ObjectInputStream;

    .end local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    invoke-direct {v7, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 399
    .local v7, "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_3
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .end local v6    # "objectInputStream":Ljava/io/ObjectInputStream;
    move-result-object v11

    .line 406
    if-eqz v7, :cond_1

    :try_start_4
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    :cond_1
    move-object v8, v10

    :goto_0
    if-eqz v5, :cond_2

    :try_start_5
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    :cond_2
    move-object v9, v8

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    :cond_4
    move-object v8, v9

    :cond_5
    :goto_2
    if-eqz v8, :cond_6

    :try_start_7
    throw v8
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .line 400
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/ClassNotFoundException;
    move-object v6, v7

    .end local v7    # "objectInputStream":Ljava/io/ObjectInputStream;
    .local v6, "objectInputStream":Ljava/io/ObjectInputStream;
    move-object v4, v5

    .end local v5    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .local v4, "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .line 401
    .end local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .end local v6    # "objectInputStream":Ljava/io/ObjectInputStream;
    :goto_3
    sget-object v8, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ClassNotFoundException to Deserialize Object from String: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-object v10

    .line 406
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v7    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v8

    goto :goto_0

    :catch_2
    move-exception v9

    if-eqz v8, :cond_3

    if-eq v8, v9, :cond_2

    :try_start_8
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v9, v8

    goto :goto_1

    :catch_3
    move-exception v8

    if-eqz v9, :cond_5

    if-eq v9, v8, :cond_4

    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    move-object v8, v9

    goto :goto_2

    .line 399
    :cond_6
    return-object v11

    .line 406
    .end local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v5    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .end local v7    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v0    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .local v4, "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .local v6, "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v8

    .end local v0    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .end local v6    # "objectInputStream":Ljava/io/ObjectInputStream;
    :goto_4
    :try_start_9
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v9

    move-object v12, v9

    move-object v9, v8

    move-object v8, v12

    :goto_5
    if-eqz v6, :cond_7

    :try_start_a
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_7
    :goto_6
    if-eqz v4, :cond_8

    :try_start_b
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_8
    move-object v11, v9

    :cond_9
    :goto_7
    if-eqz v0, :cond_a

    :try_start_c
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_a
    move-object v9, v11

    :cond_b
    :goto_8
    if-eqz v9, :cond_d

    :try_start_d
    throw v9

    .line 400
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_3

    .line 406
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_6
    move-exception v11

    if-nez v9, :cond_c

    move-object v9, v11

    goto :goto_6

    :cond_c
    if-eq v9, v11, :cond_7

    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_6

    .line 403
    :catch_7
    move-exception v2

    .line 404
    .local v2, "e":Ljava/io/IOException;
    :goto_9
    sget-object v8, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "IOException to Deserialize Object from String: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-object v10

    .line 406
    .end local v2    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v11

    if-eqz v9, :cond_9

    if-eq v9, v11, :cond_8

    :try_start_e
    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v11, v9

    goto :goto_7

    :catch_9
    move-exception v9

    if-eqz v11, :cond_b

    if-eq v11, v9, :cond_a

    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v9, v11

    goto :goto_8

    :cond_d
    throw v8
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 403
    .restart local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v7    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_a
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "objectInputStream":Ljava/io/ObjectInputStream;
    .local v6, "objectInputStream":Ljava/io/ObjectInputStream;
    move-object v4, v5

    .end local v5    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .local v4, "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .local v0, "arrayInputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_9

    .line 406
    .end local v2    # "e":Ljava/io/IOException;
    .local v0, "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .local v4, "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .local v6, "objectInputStream":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v8

    move-object v9, v10

    goto :goto_5

    .end local v0    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    :catchall_2
    move-exception v8

    move-object v9, v10

    move-object v0, v1

    .end local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .local v0, "arrayInputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_5

    .end local v0    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :catchall_3
    move-exception v8

    move-object v9, v10

    move-object v4, v5

    .end local v5    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .local v4, "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_5

    .end local v0    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .end local v6    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v7    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catchall_4
    move-exception v8

    move-object v9, v10

    move-object v6, v7

    .end local v7    # "objectInputStream":Ljava/io/ObjectInputStream;
    .local v6, "objectInputStream":Ljava/io/ObjectInputStream;
    move-object v4, v5

    .end local v5    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_5

    .end local v0    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .local v4, "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .local v6, "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_b
    move-exception v8

    move-object v0, v1

    .end local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .end local v0    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :catch_c
    move-exception v8

    move-object v4, v5

    .end local v5    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .local v4, "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .end local v0    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .end local v6    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v7    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_d
    move-exception v8

    move-object v6, v7

    .end local v7    # "objectInputStream":Ljava/io/ObjectInputStream;
    .local v6, "objectInputStream":Ljava/io/ObjectInputStream;
    move-object v4, v5

    .end local v5    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_4
.end method

.method public static getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 467
    const-string/jumbo v1, "com.android.mms"

    .line 468
    .local v1, "originalPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    .line 469
    const-string/jumbo v5, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    .line 468
    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 470
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    return-object v1

    .line 478
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 479
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v3, v1

    goto :goto_0
.end method

.method private static getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/util/Set",
            "<TT;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "a":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "b":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p2, "wildcardEntry":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_2

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "count":I
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    const/4 v0, 0x1

    .line 233
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    add-int/lit8 v0, v0, 0x1

    .line 235
    :cond_1
    return v0

    .line 237
    .end local v0    # "count":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static isBlacklisted(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "effective":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p1, "wildCardEntry":Ljava/lang/Object;, "TT;"
    .local p2, "input":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 327
    const-string/jumbo v0, "WHITELIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    return v1

    .line 329
    :cond_0
    const-string/jumbo v0, "BLACKLIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    const-string/jumbo v0, "BLACKLIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 329
    if-eqz v0, :cond_2

    .line 331
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 333
    :cond_2
    return v1
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 425
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    const/4 v2, 0x1

    return v2

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/NullPointerException;
    return v2

    .line 426
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 427
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v2
.end method

.method private static isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "a":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "wildcardEntry":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 242
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    const/4 v0, 0x1

    return v0

    .line 245
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSystemApplication(Landroid/content/pm/PackageInfo;[Landroid/content/pm/Signature;)Z
    .locals 4
    .param p0, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p1, "sysSign"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v3, 0x0

    .line 445
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 446
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "invalid param, pkgInfo or signature null"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return v3

    .line 450
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_4

    .line 453
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    array-length v2, p1

    if-ne v1, v2, :cond_4

    .line 454
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 455
    aget-object v1, p1, v0

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 456
    return v3

    .line 454
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 462
    .end local v0    # "i":I
    :cond_4
    return v3
.end method

.method public static makeEffectiveLists(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;TT;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "admin1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p1, "admin2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p2, "wildcardEntry":Ljava/lang/Object;, "TT;"
    const-string/jumbo v4, "WHITELIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    return-object p1

    .line 271
    :cond_0
    const-string/jumbo v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 272
    return-object p0

    .line 275
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 276
    .local v0, "effectiveListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    const-string/jumbo v4, "BLACKLIST"

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string/jumbo v4, "WHITELIST"

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string/jumbo v4, "BLACKLIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "WHITELIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 281
    const-string/jumbo v4, "BLACKLIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 283
    const-string/jumbo v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "BLACKLIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 284
    const-string/jumbo v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "WHITELIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 287
    const-string/jumbo v4, "BLACKLIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {v4, v5, p2}, Lcom/android/server/enterprise/utils/Utils;->getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I

    move-result v3

    .line 289
    .local v3, "wildcardSetCount":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 292
    const-string/jumbo v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 293
    const-string/jumbo v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 317
    :goto_0
    const-string/jumbo v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 320
    const-string/jumbo v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 322
    return-object v0

    .line 294
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 299
    const-string/jumbo v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-static {v4, p2}, Lcom/android/server/enterprise/utils/Utils;->isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 300
    move-object v1, v0

    .line 301
    .local v1, "nonWildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    move-object v2, p1

    .line 306
    .local v2, "wildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :goto_1
    const-string/jumbo v4, "WHITELIST"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 307
    const-string/jumbo v4, "WHITELIST"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "BLACKLIST"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 303
    .end local v1    # "nonWildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .end local v2    # "wildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :cond_3
    move-object v1, p1

    .line 304
    .restart local v1    # "nonWildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    move-object v2, v0

    .restart local v2    # "wildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    goto :goto_1

    .line 310
    .end local v1    # "nonWildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .end local v2    # "wildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :cond_4
    const-string/jumbo v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 313
    const-string/jumbo v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "BLACKLIST"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method public static readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "aPropName"    # Ljava/lang/String;
    .param p1, "aFileName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 97
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v5, "lFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 99
    sget-object v9, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "File Not Found : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-object v12

    .line 105
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .local v4, "lFReader":Ljava/io/FileReader;
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v9, 0x200

    invoke-direct {v3, v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 114
    .local v3, "lBufReader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 115
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "lLine":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 116
    const-string/jumbo v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 118
    const-string/jumbo v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, "lParsedString":[Ljava/lang/String;
    array-length v9, v7

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    const/4 v9, 0x1

    aget-object v8, v7, v9

    .line 120
    .local v8, "result":Ljava/lang/String;
    :goto_0
    const-string/jumbo v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_2

    .line 121
    const/4 v8, 0x0

    .line 130
    .end local v8    # "result":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    .line 131
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 132
    const/4 v4, 0x0

    .line 134
    .end local v4    # "lFReader":Ljava/io/FileReader;
    :cond_3
    if-eqz v3, :cond_4

    .line 135
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 136
    const/4 v3, 0x0

    .line 122
    .end local v3    # "lBufReader":Ljava/io/BufferedReader;
    :cond_4
    :goto_1
    return-object v8

    .line 106
    .end local v6    # "lLine":Ljava/lang/String;
    .end local v7    # "lParsedString":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 108
    sget-object v9, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "File access error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-object v12

    .line 119
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "lBufReader":Ljava/io/BufferedReader;
    .restart local v4    # "lFReader":Ljava/io/FileReader;
    .restart local v6    # "lLine":Ljava/lang/String;
    .restart local v7    # "lParsedString":[Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string/jumbo v8, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v8    # "result":Ljava/lang/String;
    goto :goto_0

    .line 138
    .end local v4    # "lFReader":Ljava/io/FileReader;
    .end local v8    # "result":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 139
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 130
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "lParsedString":[Ljava/lang/String;
    .restart local v4    # "lFReader":Ljava/io/FileReader;
    :cond_6
    if-eqz v4, :cond_7

    .line 131
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 132
    const/4 v4, 0x0

    .line 134
    .end local v4    # "lFReader":Ljava/io/FileReader;
    :cond_7
    if-eqz v3, :cond_8

    .line 135
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 136
    const/4 v3, 0x0

    .line 142
    .end local v3    # "lBufReader":Ljava/io/BufferedReader;
    :cond_8
    :goto_2
    return-object v12

    .line 138
    .restart local v3    # "lBufReader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .line 139
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 125
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "lLine":Ljava/lang/String;
    .restart local v4    # "lFReader":Ljava/io/FileReader;
    :catch_3
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 130
    if-eqz v4, :cond_9

    .line 131
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 132
    const/4 v4, 0x0

    .line 134
    .end local v4    # "lFReader":Ljava/io/FileReader;
    :cond_9
    if-eqz v3, :cond_a

    .line 135
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 136
    const/4 v3, 0x0

    .line 127
    .end local v3    # "lBufReader":Ljava/io/BufferedReader;
    :cond_a
    :goto_3
    return-object v12

    .line 138
    .restart local v3    # "lBufReader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    .line 139
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 128
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "lFReader":Ljava/io/FileReader;
    :catchall_0
    move-exception v9

    .line 130
    if-eqz v4, :cond_b

    .line 131
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 132
    const/4 v4, 0x0

    .line 134
    .end local v4    # "lFReader":Ljava/io/FileReader;
    :cond_b
    if-eqz v3, :cond_c

    .line 135
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 136
    const/4 v3, 0x0

    .line 128
    .end local v3    # "lBufReader":Ljava/io/BufferedReader;
    :cond_c
    :goto_4
    throw v9

    .line 138
    .restart local v3    # "lBufReader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v1

    .line 139
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public static serializeObject(Ljava/lang/Object;)[B
    .locals 5
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 341
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 344
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 345
    .local v3, "out":Ljava/io/ObjectOutput;
    invoke-interface {v3, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 346
    invoke-interface {v3}, Ljava/io/ObjectOutput;->close()V

    .line 349
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 350
    .local v1, "buf":[B
    return-object v1

    .line 351
    .end local v1    # "buf":[B
    .end local v3    # "out":Ljava/io/ObjectOutput;
    :catch_0
    move-exception v2

    .line 352
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 353
    const/4 v4, 0x0

    return-object v4
.end method

.method public static serializeObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 12
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    .line 377
    if-nez p0, :cond_0

    .line 378
    return-object v9

    .line 379
    :cond_0
    const/4 v0, 0x0

    .local v0, "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    const/4 v5, 0x0

    .line 380
    .local v5, "objectOutputStream":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 381
    .end local v0    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .local v1, "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 382
    .local v4, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    new-instance v6, Ljava/io/ObjectOutputStream;

    .end local v3    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    invoke-direct {v6, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 383
    .local v6, "objectOutputStream":Ljava/io/ObjectOutputStream;
    :try_start_3
    invoke-virtual {v6, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 384
    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->flush()V

    .line 385
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 389
    if-eqz v6, :cond_1

    :try_start_4
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    move-object v7, v9

    :goto_0
    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_2
    move-object v8, v7

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_4
    move-object v7, v8

    :cond_5
    :goto_2
    if-eqz v7, :cond_6

    :try_start_7
    throw v7
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 386
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .local v5, "objectOutputStream":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .end local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v3, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .line 387
    .end local v1    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :goto_3
    sget-object v7, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IOException to Serialize Object to String: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-object v9

    .line 389
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v7

    goto :goto_0

    :catch_2
    move-exception v8

    if-eqz v7, :cond_3

    if-eq v7, v8, :cond_2

    :try_start_8
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v8, v7

    goto :goto_1

    :catch_3
    move-exception v7

    if-eqz v8, :cond_5

    if-eq v8, v7, :cond_4

    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v7, v8

    goto :goto_2

    .line 385
    :cond_6
    return-object v10

    .line 389
    .end local v1    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v0    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .local v3, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v5, "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v7

    .end local v0    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :goto_4
    :try_start_9
    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_5
    if-eqz v5, :cond_7

    :try_start_a
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    :try_start_b
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_8
    move-object v10, v8

    :cond_9
    :goto_7
    if-eqz v0, :cond_a

    :try_start_c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :cond_a
    move-object v8, v10

    :cond_b
    :goto_8
    if-eqz v8, :cond_d

    :try_start_d
    throw v8

    .line 386
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 389
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v10

    if-nez v8, :cond_c

    move-object v8, v10

    goto :goto_6

    :cond_c
    if-eq v8, v10, :cond_7

    invoke-virtual {v8, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_7
    move-exception v10

    if-eqz v8, :cond_9

    if-eq v8, v10, :cond_8

    invoke-virtual {v8, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v10, v8

    goto :goto_7

    :catch_8
    move-exception v8

    if-eqz v10, :cond_b

    if-eq v10, v8, :cond_a

    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v8, v10

    goto :goto_8

    :cond_d
    throw v7
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .restart local v0    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v7

    move-object v8, v9

    goto :goto_5

    .end local v0    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v7

    move-object v8, v9

    move-object v0, v1

    .end local v1    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .local v0, "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v0    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v7

    move-object v8, v9

    move-object v3, v4

    .end local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v3, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v0    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v1    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catchall_4
    move-exception v7

    move-object v8, v9

    move-object v5, v6

    .end local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .local v5, "objectOutputStream":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .end local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v0    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .local v3, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v5, "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_9
    move-exception v7

    move-object v0, v1

    .end local v1    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .end local v0    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catch_a
    move-exception v7

    move-object v3, v4

    .end local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v3, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .end local v0    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v1    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_b
    move-exception v7

    move-object v5, v6

    .end local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .local v5, "objectOutputStream":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .end local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_4
.end method

.method public static writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .param p0, "aPropName"    # Ljava/lang/String;
    .param p1, "aPropValue"    # Ljava/lang/String;
    .param p2, "aFileName"    # Ljava/lang/String;

    .prologue
    .line 160
    const/4 v11, 0x0

    .line 161
    .local v11, "lSuccess":Z
    const/4 v12, 0x0

    .line 162
    .local v12, "ps":Ljava/io/PrintStream;
    const/4 v5, 0x0

    .line 163
    .local v5, "lFReader":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 165
    .local v3, "lBufReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v7, "lFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 167
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 170
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 171
    const/16 v15, 0x1a4

    .line 172
    const/16 v16, -0x1

    const/16 v17, -0x1

    .line 168
    invoke-static/range {v14 .. v17}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 177
    :cond_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .local v6, "lFReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    .end local v5    # "lFReader":Ljava/io/FileReader;
    const/16 v14, 0x200

    invoke-direct {v4, v6, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    .local v4, "lBufReader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v10, Ljava/lang/StringBuffer;

    .end local v3    # "lBufReader":Ljava/io/BufferedReader;
    const-string/jumbo v14, ""

    invoke-direct {v10, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 181
    .local v10, "lStrBuffer":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 182
    .local v8, "lFound":Z
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "lLine":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 183
    const-string/jumbo v14, "="

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 185
    const/4 v8, 0x1

    .line 186
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 188
    :cond_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    const-string/jumbo v14, "line.separator"

    invoke-static {v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 204
    .end local v8    # "lFound":Z
    .end local v9    # "lLine":Ljava/lang/String;
    .end local v10    # "lStrBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "lBufReader":Ljava/io/BufferedReader;
    .local v3, "lBufReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 205
    .end local v3    # "lBufReader":Ljava/io/BufferedReader;
    .end local v6    # "lFReader":Ljava/io/FileReader;
    .end local v7    # "lFile":Ljava/io/File;
    .end local v12    # "ps":Ljava/io/PrintStream;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    if-eqz v5, :cond_2

    .line 209
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 210
    const/4 v5, 0x0

    .line 213
    :cond_2
    if-eqz v3, :cond_3

    .line 214
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 215
    const/4 v3, 0x0

    .line 220
    :cond_3
    :goto_2
    if-eqz v12, :cond_4

    .line 221
    invoke-virtual {v12}, Ljava/io/PrintStream;->close()V

    .line 222
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v12, 0x0

    .line 225
    :cond_4
    :goto_4
    return v11

    .line 193
    .restart local v4    # "lBufReader":Ljava/io/BufferedReader;
    .restart local v6    # "lFReader":Ljava/io/FileReader;
    .restart local v7    # "lFile":Ljava/io/File;
    .restart local v8    # "lFound":Z
    .restart local v9    # "lLine":Ljava/lang/String;
    .restart local v10    # "lStrBuffer":Ljava/lang/StringBuffer;
    .restart local v12    # "ps":Ljava/io/PrintStream;
    :cond_5
    if-nez v8, :cond_6

    .line 194
    :try_start_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    const-string/jumbo v14, "line.separator"

    invoke-static {v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    :cond_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 200
    const/4 v3, 0x0

    .line 201
    .local v3, "lBufReader":Ljava/io/BufferedReader;
    :try_start_6
    new-instance v13, Ljava/io/PrintStream;

    .end local v4    # "lBufReader":Ljava/io/BufferedReader;
    invoke-direct {v13, v7}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 202
    .local v13, "ps":Ljava/io/PrintStream;
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .end local v12    # "ps":Ljava/io/PrintStream;
    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 203
    const/4 v11, 0x1

    .line 208
    if-eqz v6, :cond_b

    .line 209
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 210
    const/4 v5, 0x0

    .line 220
    .end local v6    # "lFReader":Ljava/io/FileReader;
    :goto_5
    if-eqz v13, :cond_a

    .line 221
    invoke-virtual {v13}, Ljava/io/PrintStream;->close()V

    goto :goto_3

    .line 217
    .restart local v6    # "lFReader":Ljava/io/FileReader;
    :catch_1
    move-exception v1

    .line 218
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .end local v6    # "lFReader":Ljava/io/FileReader;
    .local v5, "lFReader":Ljava/io/FileReader;
    goto :goto_5

    .line 217
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "lBufReader":Ljava/io/BufferedReader;
    .end local v5    # "lFReader":Ljava/io/FileReader;
    .end local v7    # "lFile":Ljava/io/File;
    .end local v8    # "lFound":Z
    .end local v9    # "lLine":Ljava/lang/String;
    .end local v10    # "lStrBuffer":Ljava/lang/StringBuffer;
    .end local v13    # "ps":Ljava/io/PrintStream;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 218
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 206
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    .line 208
    :goto_6
    if-eqz v5, :cond_7

    .line 209
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 210
    const/4 v5, 0x0

    .line 213
    :cond_7
    if-eqz v3, :cond_8

    .line 214
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 215
    const/4 v3, 0x0

    .line 220
    :cond_8
    :goto_7
    if-eqz v12, :cond_9

    .line 221
    invoke-virtual {v12}, Ljava/io/PrintStream;->close()V

    .line 222
    const/4 v12, 0x0

    .line 206
    :cond_9
    throw v14

    .line 217
    :catch_3
    move-exception v1

    .line 218
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 206
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "lBufReader":Ljava/io/BufferedReader;
    .restart local v6    # "lFReader":Ljava/io/FileReader;
    .restart local v7    # "lFile":Ljava/io/File;
    .restart local v12    # "ps":Ljava/io/PrintStream;
    :catchall_1
    move-exception v14

    move-object v5, v6

    .end local v6    # "lFReader":Ljava/io/FileReader;
    .restart local v5    # "lFReader":Ljava/io/FileReader;
    goto :goto_6

    .end local v3    # "lBufReader":Ljava/io/BufferedReader;
    .end local v5    # "lFReader":Ljava/io/FileReader;
    .restart local v4    # "lBufReader":Ljava/io/BufferedReader;
    .restart local v6    # "lFReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v14

    move-object v3, v4

    .end local v4    # "lBufReader":Ljava/io/BufferedReader;
    .local v3, "lBufReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "lFReader":Ljava/io/FileReader;
    .restart local v5    # "lFReader":Ljava/io/FileReader;
    goto :goto_6

    .end local v5    # "lFReader":Ljava/io/FileReader;
    .end local v12    # "ps":Ljava/io/PrintStream;
    .local v3, "lBufReader":Ljava/io/BufferedReader;
    .restart local v6    # "lFReader":Ljava/io/FileReader;
    .restart local v8    # "lFound":Z
    .restart local v9    # "lLine":Ljava/lang/String;
    .restart local v10    # "lStrBuffer":Ljava/lang/StringBuffer;
    .restart local v13    # "ps":Ljava/io/PrintStream;
    :catchall_3
    move-exception v14

    move-object v5, v6

    .end local v6    # "lFReader":Ljava/io/FileReader;
    .restart local v5    # "lFReader":Ljava/io/FileReader;
    move-object v12, v13

    .end local v13    # "ps":Ljava/io/PrintStream;
    .local v12, "ps":Ljava/io/PrintStream;
    goto :goto_6

    .line 204
    .end local v7    # "lFile":Ljava/io/File;
    .end local v8    # "lFound":Z
    .end local v9    # "lLine":Ljava/lang/String;
    .end local v10    # "lStrBuffer":Ljava/lang/StringBuffer;
    .local v5, "lFReader":Ljava/io/FileReader;
    .local v12, "ps":Ljava/io/PrintStream;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto/16 :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "lFReader":Ljava/io/FileReader;
    .restart local v6    # "lFReader":Ljava/io/FileReader;
    .restart local v7    # "lFile":Ljava/io/File;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "lFReader":Ljava/io/FileReader;
    .local v5, "lFReader":Ljava/io/FileReader;
    goto/16 :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "lFReader":Ljava/io/FileReader;
    .end local v12    # "ps":Ljava/io/PrintStream;
    .restart local v6    # "lFReader":Ljava/io/FileReader;
    .restart local v8    # "lFound":Z
    .restart local v9    # "lLine":Ljava/lang/String;
    .restart local v10    # "lStrBuffer":Ljava/lang/StringBuffer;
    .restart local v13    # "ps":Ljava/io/PrintStream;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "lFReader":Ljava/io/FileReader;
    .restart local v5    # "lFReader":Ljava/io/FileReader;
    move-object v12, v13

    .end local v13    # "ps":Ljava/io/PrintStream;
    .local v12, "ps":Ljava/io/PrintStream;
    goto/16 :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "lFReader":Ljava/io/FileReader;
    .end local v12    # "ps":Ljava/io/PrintStream;
    .restart local v13    # "ps":Ljava/io/PrintStream;
    :cond_a
    move-object v12, v13

    .end local v13    # "ps":Ljava/io/PrintStream;
    .restart local v12    # "ps":Ljava/io/PrintStream;
    goto/16 :goto_4

    .end local v12    # "ps":Ljava/io/PrintStream;
    .restart local v6    # "lFReader":Ljava/io/FileReader;
    .restart local v13    # "ps":Ljava/io/PrintStream;
    :cond_b
    move-object v5, v6

    .end local v6    # "lFReader":Ljava/io/FileReader;
    .restart local v5    # "lFReader":Ljava/io/FileReader;
    goto :goto_5
.end method
