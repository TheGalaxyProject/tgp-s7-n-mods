.class public Lcom/android/server/pm/Revision;
.super Ljava/lang/Object;
.source "Revision.java"


# static fields
.field public static final MDM_PRIORITY:I = 0x0

.field public static final RAM_PRIORITY:I = 0x2

.field public static final SPD_PRIORITY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Revision"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get_sepolicy_build_date()Ljava/lang/String;
    .locals 16

    .prologue
    .line 372
    const/4 v3, 0x0

    .line 373
    .local v3, "buildDate":Ljava/lang/String;
    const/4 v10, 0x0

    .line 374
    .local v10, "line":Ljava/lang/String;
    const/4 v11, 0x0

    .line 375
    .local v11, "name":Ljava/lang/String;
    const/4 v12, 0x0

    .line 376
    .local v12, "priority":I
    const/4 v9, 0x0

    .line 378
    .local v9, "index":I
    const/4 v1, 0x0

    .line 379
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 381
    .local v7, "in":Ljava/io/DataInputStream;
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v12

    .line 382
    const/4 v13, 0x4

    new-array v0, v13, [Ljava/io/File;

    .line 383
    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    const-string/jumbo v15, "security/sepolicy_version"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v14, 0x0

    aput-object v13, v0, v14

    .line 384
    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    const-string/jumbo v15, "security/spota/sepolicy_version"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v14, 0x1

    aput-object v13, v0, v14

    .line 385
    new-instance v13, Ljava/io/File;

    const-string/jumbo v14, "/sepolicy_version"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x2

    aput-object v13, v0, v14

    .line 386
    const/4 v13, 0x0

    const/4 v14, 0x3

    aput-object v13, v0, v14

    .line 390
    .local v0, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    aget-object v14, v0, v12

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 391
    .local v8, "in":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    .end local v7    # "in":Ljava/io/DataInputStream;
    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 392
    .local v2, "br":Ljava/io/BufferedReader;
    if-eqz v12, :cond_5

    .line 394
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 395
    .local v10, "line":Ljava/lang/String;
    if-nez v10, :cond_3

    .line 396
    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13}, Ljava/io/IOException;-><init>()V

    throw v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 406
    .end local v10    # "line":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .line 407
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v7    # "in":Ljava/io/DataInputStream;
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 411
    .end local v3    # "buildDate":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v1, :cond_1

    .line 412
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 413
    const/4 v1, 0x0

    .line 415
    :cond_1
    if-eqz v7, :cond_2

    .line 416
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 417
    const/4 v7, 0x0

    .line 423
    :cond_2
    :goto_2
    return-object v3

    .line 398
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "buildDate":Ljava/lang/String;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "line":Ljava/lang/String;
    :cond_3
    const/16 v13, 0x3d

    :try_start_4
    invoke-virtual {v10, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 399
    const/4 v13, -0x1

    if-ne v9, v13, :cond_4

    .line 400
    new-instance v13, Ljava/lang/NumberFormatException;

    invoke-direct {v13}, Ljava/lang/NumberFormatException;-><init>()V

    throw v13

    .line 402
    :cond_4
    const/4 v13, 0x0

    invoke-virtual {v10, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 403
    .local v11, "name":Ljava/lang/String;
    const-string/jumbo v13, "BD"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 404
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .local v4, "buildDate":Ljava/lang/String;
    move-object v3, v4

    .end local v3    # "buildDate":Ljava/lang/String;
    .end local v4    # "buildDate":Ljava/lang/String;
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    :cond_5
    move-object v7, v8

    .end local v8    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 419
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "in":Ljava/io/DataInputStream;
    :catch_1
    move-exception v5

    .line 420
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 406
    .end local v5    # "e":Ljava/io/IOException;
    .local v1, "br":Ljava/io/BufferedReader;
    .restart local v3    # "buildDate":Ljava/lang/String;
    .local v7, "in":Ljava/io/DataInputStream;
    .local v10, "line":Ljava/lang/String;
    .local v11, "name":Ljava/lang/String;
    :catch_2
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    goto :goto_0

    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :catch_3
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method public static get_sepolicy_info()[Ljava/lang/String;
    .locals 17

    .prologue
    .line 427
    const/4 v14, 0x2

    new-array v10, v14, [Ljava/lang/String;

    .line 428
    .local v10, "info":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 429
    .local v11, "line":Ljava/lang/String;
    const/4 v12, 0x0

    .line 430
    .local v12, "name":Ljava/lang/String;
    const/4 v13, 0x0

    .line 431
    .local v13, "priority":I
    const/4 v9, 0x0

    .line 433
    .local v9, "index":I
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v14, "SEPF_XXX_XX_0000"

    invoke-direct {v3, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 435
    .local v3, "default_version":Ljava/lang/String;
    const/4 v1, 0x0

    .line 436
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 438
    .local v7, "in":Ljava/io/DataInputStream;
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v13

    .line 439
    const/4 v14, 0x4

    new-array v0, v14, [Ljava/io/File;

    .line 440
    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string/jumbo v16, "security/sepolicy_version"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v15, 0x0

    aput-object v14, v0, v15

    .line 441
    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string/jumbo v16, "security/spota/sepolicy_version"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v15, 0x1

    aput-object v14, v0, v15

    .line 442
    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "/sepolicy_version"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x2

    aput-object v14, v0, v15

    const/4 v14, 0x0

    const/4 v15, 0x3

    aput-object v14, v0, v15

    .line 444
    .local v0, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    const-string/jumbo v14, "GOOGLE_POLICY"

    const-string/jumbo v15, "selinux.policy_version"

    const-string/jumbo v16, "Unknown"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 445
    const-string/jumbo v14, "GOOGLE_POLICY"

    const/4 v15, 0x0

    aput-object v14, v10, v15

    .line 446
    const-string/jumbo v14, ""

    const/4 v15, 0x1

    aput-object v14, v10, v15

    .line 447
    return-object v10

    .line 451
    :cond_0
    if-nez v13, :cond_4

    .line 452
    :try_start_0
    const-string/jumbo v14, "Enterprise Policy"

    const/4 v15, 0x0

    aput-object v14, v10, v15

    .line 453
    const-string/jumbo v14, ""

    const/4 v15, 0x1

    aput-object v14, v10, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 495
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .end local v11    # "line":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 496
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 497
    const/4 v1, 0x0

    .line 499
    :cond_2
    if-eqz v7, :cond_3

    .line 500
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 501
    const/4 v7, 0x0

    .line 506
    :cond_3
    :goto_1
    return-object v10

    .line 455
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "line":Ljava/lang/String;
    :cond_4
    :try_start_2
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    aget-object v15, v0, v13

    invoke-direct {v14, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 456
    .end local v7    # "in":Ljava/io/DataInputStream;
    .local v8, "in":Ljava/io/DataInputStream;
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 458
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v11    # "line":Ljava/lang/String;
    .local v2, "br":Ljava/io/BufferedReader;
    :cond_5
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, "line":Ljava/lang/String;
    if-eqz v11, :cond_a

    .line 459
    const-string/jumbo v14, "VE="

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 460
    const/16 v14, 0x3d

    invoke-virtual {v11, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 461
    new-instance v14, Ljava/lang/String;

    add-int/lit8 v15, v9, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    aput-object v14, v10, v15

    .line 464
    :cond_6
    const-string/jumbo v14, "BD="

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 465
    const/16 v14, 0x3d

    invoke-virtual {v11, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 466
    new-instance v14, Ljava/lang/String;

    add-int/lit8 v15, v9, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x1

    aput-object v14, v10, v15

    .line 469
    :cond_7
    const/4 v14, 0x0

    aget-object v14, v10, v14

    if-nez v14, :cond_8

    .line 470
    const-string/jumbo v14, ""

    const/4 v15, 0x0

    aput-object v14, v10, v15

    .line 473
    :cond_8
    const/4 v14, 0x1

    aget-object v14, v10, v14

    if-nez v14, :cond_5

    .line 474
    const-string/jumbo v14, ""

    const/4 v15, 0x1

    aput-object v14, v10, v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 478
    .end local v11    # "line":Ljava/lang/String;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .line 480
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v7    # "in":Ljava/io/DataInputStream;
    :goto_3
    if-eqz v1, :cond_9

    .line 481
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 482
    const/4 v1, 0x0

    .line 484
    :cond_9
    if-eqz v7, :cond_1

    .line 485
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 486
    const/4 v7, 0x0

    .local v7, "in":Ljava/io/DataInputStream;
    goto/16 :goto_0

    .line 488
    .end local v7    # "in":Ljava/io/DataInputStream;
    :catch_1
    move-exception v6

    .line 489
    .local v6, "ie":Ljava/io/IOException;
    const-string/jumbo v14, "Revision"

    const-string/jumbo v15, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-object v10

    .line 503
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "ie":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 504
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 478
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    .local v11, "line":Ljava/lang/String;
    :catch_3
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto :goto_3

    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :catch_4
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    goto :goto_3

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    .local v11, "line":Ljava/lang/String;
    :cond_a
    move-object v7, v8

    .end local v8    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    goto/16 :goto_0
.end method

.method public static get_sepolicy_version()Ljava/lang/String;
    .locals 16

    .prologue
    .line 295
    const/4 v10, 0x0

    .line 296
    .local v10, "line":Ljava/lang/String;
    const/4 v11, 0x0

    .line 297
    .local v11, "priority":I
    const/4 v9, 0x0

    .line 298
    .local v9, "index":I
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v13, "SEPF_XXX_XX_0000"

    invoke-direct {v3, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 300
    .local v3, "default_version":Ljava/lang/String;
    const/4 v1, 0x0

    .line 301
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 304
    .local v7, "in":Ljava/io/DataInputStream;
    const-string/jumbo v13, "GOOGLE_POLICY"

    const-string/jumbo v14, "selinux.policy_version"

    const-string/jumbo v15, "Unknown"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 305
    new-instance v13, Ljava/lang/String;

    const-string/jumbo v14, "GOOGLE_POLICY"

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v13

    .line 308
    :cond_0
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v11

    .line 309
    const/4 v13, 0x4

    new-array v0, v13, [Ljava/io/File;

    .line 310
    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    const-string/jumbo v15, "security/sepolicy_version"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v14, 0x0

    aput-object v13, v0, v14

    .line 311
    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    const-string/jumbo v15, "security/spota/sepolicy_version"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v14, 0x1

    aput-object v13, v0, v14

    .line 312
    new-instance v13, Ljava/io/File;

    const-string/jumbo v14, "/sepolicy_version"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x2

    aput-object v13, v0, v14

    const/4 v13, 0x0

    const/4 v14, 0x3

    aput-object v13, v0, v14

    .line 315
    .local v0, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    aget-object v14, v0, v11

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 316
    .local v8, "in":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    .end local v7    # "in":Ljava/io/DataInputStream;
    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 317
    .local v2, "br":Ljava/io/BufferedReader;
    if-nez v11, :cond_1

    .line 318
    .end local v1    # "br":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v12, Ljava/lang/String;

    const-string/jumbo v13, "Enterprise Policy"

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 355
    .end local v10    # "line":Ljava/lang/String;
    .local v12, "version":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_7

    .line 356
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 357
    const/4 v1, 0x0

    .line 359
    .end local v2    # "br":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v8, :cond_6

    .line 360
    :try_start_4
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 361
    const/4 v7, 0x0

    .line 367
    .end local v8    # "in":Ljava/io/DataInputStream;
    :goto_2
    return-object v12

    .line 320
    .end local v12    # "version":Ljava/lang/String;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "line":Ljava/lang/String;
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 322
    .local v10, "line":Ljava/lang/String;
    if-nez v10, :cond_4

    .line 323
    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13}, Ljava/io/IOException;-><init>()V

    throw v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 333
    .end local v10    # "line":Ljava/lang/String;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .line 335
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v7    # "in":Ljava/io/DataInputStream;
    :goto_3
    if-eqz v1, :cond_2

    .line 336
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 337
    const/4 v1, 0x0

    .line 339
    :cond_2
    if-eqz v7, :cond_3

    .line 340
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 341
    const/4 v7, 0x0

    .line 350
    :cond_3
    :goto_4
    const-string/jumbo v13, "Revision"

    const-string/jumbo v14, "Couldn\'t load policy "

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-object v3

    .line 326
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "line":Ljava/lang/String;
    :cond_4
    const/16 v13, 0x3d

    :try_start_7
    invoke-virtual {v10, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 327
    const/4 v13, -0x1

    if-ne v9, v13, :cond_5

    .line 328
    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    .line 331
    :cond_5
    new-instance v12, Ljava/lang/String;

    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .restart local v12    # "version":Ljava/lang/String;
    goto :goto_0

    .line 343
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v8    # "in":Ljava/io/DataInputStream;
    .end local v10    # "line":Ljava/lang/String;
    .end local v12    # "version":Ljava/lang/String;
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 344
    .local v6, "ie":Ljava/io/IOException;
    const-string/jumbo v13, "Revision"

    const-string/jumbo v14, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 363
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "ie":Ljava/io/IOException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    .restart local v12    # "version":Ljava/lang/String;
    :catch_2
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 364
    .end local v2    # "br":Ljava/io/BufferedReader;
    :goto_5
    const-string/jumbo v13, "Revision"

    const-string/jumbo v14, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .end local v8    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    goto :goto_2

    .line 363
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 333
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "in":Ljava/io/DataInputStream;
    .end local v12    # "version":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v7, "in":Ljava/io/DataInputStream;
    .local v10, "line":Ljava/lang/String;
    :catch_4
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto :goto_3

    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :catch_5
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    goto :goto_3

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .end local v10    # "line":Ljava/lang/String;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    .restart local v12    # "version":Ljava/lang/String;
    :cond_6
    move-object v7, v8

    .end local v8    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    goto :goto_2

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :cond_7
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static selinux_android_load_priority()I
    .locals 24

    .prologue
    .line 94
    const-wide/16 v16, 0x0

    .line 95
    .local v16, "sepolicy_version_highest":J
    const-wide/16 v18, 0x0

    .line 96
    .local v18, "sepolicy_version_new":J
    const/4 v8, 0x0

    .line 97
    .local v8, "i":I
    const/4 v3, 0x0

    .line 98
    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .line 99
    .local v10, "in":Ljava/io/FileInputStream;
    const/16 v20, 0x0

    .line 100
    .local v20, "tmp_version":Ljava/lang/String;
    const/4 v12, 0x0

    .line 101
    .local v12, "mdm_policy_status":Ljava/lang/String;
    new-instance v15, Ljava/lang/String;

    const-string/jumbo v21, "SEPF_SPD_XX_0000"

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 102
    .local v15, "spd_and_version":Ljava/lang/String;
    new-instance v13, Ljava/lang/String;

    const-string/jumbo v21, "SEPF_RAM_XX_0000"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 103
    .local v13, "ram_and_version":Ljava/lang/String;
    const/4 v14, 0x0

    .line 104
    .local v14, "selinux_policy_priority":I
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v2, v0, [Ljava/io/File;

    .line 105
    new-instance v21, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v22

    const-string/jumbo v23, "security/sepolicy"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v22, 0x0

    aput-object v21, v2, v22

    .line 106
    new-instance v21, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v22

    const-string/jumbo v23, "security/spota/sepolicy_version"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v22, 0x1

    aput-object v21, v2, v22

    .line 107
    new-instance v21, Ljava/io/File;

    const-string/jumbo v22, "/sepolicy_version"

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x2

    aput-object v21, v2, v22

    .line 108
    const/16 v21, 0x0

    const/16 v22, 0x3

    aput-object v21, v2, v22

    .line 112
    .local v2, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    const-string/jumbo v21, "GOOGLE_POLICY"

    const-string/jumbo v22, "selinux.policy_version"

    const-string/jumbo v23, "Unknown"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 113
    const/16 v21, 0x2

    return v21

    .line 128
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v8    # "i":I
    .end local v10    # "in":Ljava/io/FileInputStream;
    .end local v12    # "mdm_policy_status":Ljava/lang/String;
    .end local v20    # "tmp_version":Ljava/lang/String;
    .local v9, "i":I
    .local v11, "in":Ljava/io/FileInputStream;
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    move-object/from16 v0, v21

    invoke-direct {v0, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 129
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {v4}, Lcom/android/server/pm/Revision;->selinux_get_full_version(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v20

    .line 130
    .local v20, "tmp_version":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/Revision;->selinux_get_version(Ljava/lang/String;)J

    move-result-wide v18

    .line 132
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_9

    .line 133
    cmp-long v21, v18, v16

    if-lez v21, :cond_1

    .line 134
    move-wide/from16 v16, v18

    .line 136
    :cond_1
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v15

    .line 137
    const/4 v14, 0x1

    :goto_0
    move-object v10, v11

    .end local v11    # "in":Ljava/io/FileInputStream;
    .local v10, "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .line 157
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v10    # "in":Ljava/io/FileInputStream;
    .end local v20    # "tmp_version":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_2

    .line 158
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 159
    const/4 v3, 0x0

    .line 161
    :cond_2
    if-eqz v10, :cond_3

    .line 162
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 163
    const/4 v10, 0x0

    :cond_3
    :goto_2
    move v8, v9

    .line 116
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_4
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    aget-object v21, v2, v8

    if-eqz v21, :cond_5

    .line 118
    :try_start_3
    new-instance v11, Ljava/io/FileInputStream;

    aget-object v21, v2, v9

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 120
    .restart local v11    # "in":Ljava/io/FileInputStream;
    if-nez v9, :cond_0

    .line 121
    :try_start_4
    const-string/jumbo v21, "persist.security.mdm.policy"

    const-string/jumbo v22, "0"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 122
    .local v12, "mdm_policy_status":Ljava/lang/String;
    const-string/jumbo v21, "1"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-result v21

    if-eqz v21, :cond_0

    .line 123
    const/4 v14, 0x0

    move-object v10, v11

    .line 172
    .end local v11    # "in":Ljava/io/FileInputStream;
    .end local v12    # "mdm_policy_status":Ljava/lang/String;
    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 173
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 174
    const/4 v3, 0x0

    .line 176
    :cond_6
    if-eqz v10, :cond_7

    .line 177
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 178
    const/4 v10, 0x0

    .line 184
    :cond_7
    :goto_4
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v14, v0, :cond_8

    .line 185
    invoke-static {}, Lcom/android/server/pm/PolicyVerification;->verifySEAndroidPolicy()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 186
    const/4 v14, 0x1

    .line 187
    const-string/jumbo v21, "Revision"

    const-string/jumbo v22, "verifySEAndroidPolicy is true !! "

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_8
    :goto_5
    return v14

    .line 140
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v11    # "in":Ljava/io/FileInputStream;
    .restart local v20    # "tmp_version":Ljava/lang/String;
    :cond_9
    :try_start_6
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 142
    invoke-static {v15, v13}, Lcom/android/server/pm/Revision;->selinux_cmp_android_version(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 143
    cmp-long v21, v18, v16

    if-lez v21, :cond_a

    .line 144
    const/4 v14, 0x1

    goto :goto_0

    .line 146
    :cond_a
    const/4 v14, 0x2

    move-object v10, v11

    .end local v11    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .line 147
    .end local v4    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 152
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v10    # "in":Ljava/io/FileInputStream;
    .end local v20    # "tmp_version":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 153
    .local v7, "e":Ljava/lang/Exception;
    :goto_6
    const-string/jumbo v21, "Revision"

    .line 154
    const-string/jumbo v22, "selinux_android_load_priority : Couldn\'t compute selinux_policy_priority "

    .line 153
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 150
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 151
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_7
    const-string/jumbo v21, "Revision"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "File not found at: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, v2, v9

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 165
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v6

    .line 166
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v21, "Revision"

    .line 167
    const-string/jumbo v22, "selinux_android_load_priority : Couldn\'t close BufferedReader "

    .line 166
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 180
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 181
    .restart local v6    # "e":Ljava/io/IOException;
    const-string/jumbo v21, "Revision"

    const-string/jumbo v22, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 190
    .end local v6    # "e":Ljava/io/IOException;
    :cond_b
    const/4 v14, 0x2

    .line 191
    const-string/jumbo v21, "Revision"

    const-string/jumbo v22, "verifySEAndroidPolicy is false !! "

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 150
    .restart local v11    # "in":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v11    # "in":Ljava/io/FileInputStream;
    :catch_5
    move-exception v5

    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_7

    .line 152
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/FileInputStream;
    :catch_6
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v11    # "in":Ljava/io/FileInputStream;
    :catch_7
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_6
.end method

.method private static selinux_cmp_android_version(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "spd_and_version"    # Ljava/lang/String;
    .param p1, "ram_and_version"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "cmp_val":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    .line 86
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static selinux_compare_spd_ram()I
    .locals 22

    .prologue
    .line 200
    const-wide/16 v14, 0x0

    .line 201
    .local v14, "sepolicy_version_highest":J
    const-wide/16 v16, 0x0

    .line 202
    .local v16, "sepolicy_version_new":J
    const/4 v8, 0x0

    .line 203
    .local v8, "i":I
    const/4 v5, 0x0

    .line 204
    .local v5, "cmp_value":I
    const/4 v3, 0x0

    .line 205
    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 206
    .local v9, "in":Ljava/io/FileInputStream;
    const/16 v18, 0x0

    .line 207
    .local v18, "tmp_version":Ljava/lang/String;
    new-instance v13, Ljava/lang/String;

    const-string/jumbo v19, "SEPF_SPD_XX_0000"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 208
    .local v13, "spd_and_version":Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    const-string/jumbo v19, "SEPF_RAM_XX_0000"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 209
    .local v11, "ram_and_version":Ljava/lang/String;
    const/4 v12, 0x0

    .line 211
    .local v12, "selinux_policy_priority":I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v2, v0, [Ljava/io/File;

    .line 212
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput-object v19, v2, v20

    .line 213
    new-instance v19, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v20

    const-string/jumbo v21, "security/spota/sepolicy_version"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v20, 0x1

    aput-object v19, v2, v20

    .line 214
    new-instance v19, Ljava/io/File;

    const-string/jumbo v20, "/sepolicy_version"

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x2

    aput-object v19, v2, v20

    const/16 v19, 0x0

    const/16 v20, 0x3

    aput-object v19, v2, v20

    .line 217
    .local v2, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    const-string/jumbo v19, "GOOGLE_POLICY"

    const-string/jumbo v20, "selinux.policy_version"

    const-string/jumbo v21, "Unknown"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 218
    const/16 v19, 0x3

    return v19

    .line 221
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v9    # "in":Ljava/io/FileInputStream;
    .end local v18    # "tmp_version":Ljava/lang/String;
    :cond_0
    :goto_0
    add-int/lit8 v8, v8, 0x1

    aget-object v19, v2, v8

    if-eqz v19, :cond_6

    .line 223
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    aget-object v19, v2, v8

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .local v10, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 225
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-static {v4}, Lcom/android/server/pm/Revision;->selinux_get_full_version(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v18

    .line 226
    .local v18, "tmp_version":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/Revision;->selinux_get_version(Ljava/lang/String;)J

    move-result-wide v16

    .line 228
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_4

    .line 229
    cmp-long v19, v16, v14

    if-lez v19, :cond_1

    .line 230
    move-wide/from16 v14, v16

    .line 232
    :cond_1
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v13

    .line 233
    const/4 v12, 0x1

    :cond_2
    :goto_1
    move-object v9, v10

    .end local v10    # "in":Ljava/io/FileInputStream;
    .local v9, "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .line 254
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v9    # "in":Ljava/io/FileInputStream;
    .end local v18    # "tmp_version":Ljava/lang/String;
    :goto_2
    if-eqz v3, :cond_3

    .line 255
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 256
    const/4 v3, 0x0

    .line 258
    :cond_3
    if-eqz v9, :cond_0

    .line 259
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 260
    const/4 v9, 0x0

    .local v9, "in":Ljava/io/FileInputStream;
    goto :goto_0

    .line 236
    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    .restart local v18    # "tmp_version":Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 237
    invoke-static {v13, v11}, Lcom/android/server/pm/Revision;->selinux_cmp_android_version(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v5

    .line 240
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_5

    .line 241
    cmp-long v19, v16, v14

    if-lez v19, :cond_2

    .line 242
    const/4 v12, 0x1

    goto :goto_1

    .line 246
    :cond_5
    const/4 v12, 0x2

    move-object v9, v10

    .end local v10    # "in":Ljava/io/FileInputStream;
    .local v9, "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .line 267
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v9    # "in":Ljava/io/FileInputStream;
    .end local v18    # "tmp_version":Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_7

    .line 268
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 269
    const/4 v3, 0x0

    .line 271
    :cond_7
    if-eqz v9, :cond_8

    .line 272
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 273
    const/4 v9, 0x0

    .line 279
    :cond_8
    :goto_3
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_9

    .line 280
    invoke-static {}, Lcom/android/server/pm/PolicyVerification;->verifySEAndroidPolicy()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 281
    const-string/jumbo v19, "Revision"

    const-string/jumbo v20, "verifySEAndroidPolicy is true !! "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_9
    :goto_4
    return v12

    .line 250
    :catch_0
    move-exception v7

    .line 251
    .local v7, "e":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 262
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 263
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 275
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 276
    .restart local v6    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "Revision"

    const-string/jumbo v20, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 285
    .end local v6    # "e":Ljava/io/IOException;
    :cond_a
    const/4 v12, 0x2

    .line 286
    const-string/jumbo v19, "Revision"

    const-string/jumbo v20, "verifySEAndroidPolicy is false !! "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 250
    .restart local v10    # "in":Ljava/io/FileInputStream;
    :catch_3
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    move-object v9, v10

    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    :catch_4
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    move-object v9, v10

    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method private static selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "and_version":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "0.0"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "default_version":Ljava/lang/String;
    const/16 v3, 0x5f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 55
    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 56
    return-object v1

    .line 58
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "and_version":Ljava/lang/String;
    return-object v0
.end method

.method private static selinux_get_full_version(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 6
    .param p0, "br"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v3, 0x0

    .line 30
    .local v3, "version":[Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v4, "SEPF_XXX_XX_0000"

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "default_full_name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 36
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Revision"

    .line 42
    const-string/jumbo v5, "selinux_get_full_version : Couldn\'t extract version name "

    .line 41
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-object v0

    .line 38
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string/jumbo v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 46
    .local v3, "version":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    return-object v4
.end method

.method private static selinux_get_version(Ljava/lang/String;)J
    .locals 6
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 65
    move-object v3, p0

    .line 66
    .local v3, "line":Ljava/lang/String;
    const-wide/16 v0, 0x0

    .line 68
    .local v0, "default_version":J
    const/16 v4, 0x5f

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 69
    .local v2, "index":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 70
    return-wide v0

    .line 73
    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    return-wide v4
.end method
