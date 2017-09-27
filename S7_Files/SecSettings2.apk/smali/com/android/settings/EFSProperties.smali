.class public Lcom/android/settings/EFSProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/EFSProperties$KeyguardProperties;,
        Lcom/android/settings/EFSProperties$ODEProperties;
    }
.end annotation


# static fields
.field public static final SCP_TYPES:[Ljava/lang/String;

.field public static final STORAGE_TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "eSE"

    aput-object v1, v0, v3

    const-string/jumbo v1, "SIM"

    aput-object v1, v0, v4

    const-string/jumbo v1, "SD"

    aput-object v1, v0, v5

    const-string/jumbo v1, "eSE1"

    aput-object v1, v0, v6

    const-string/jumbo v1, "SIM1"

    aput-object v1, v0, v7

    const-string/jumbo v1, "SD1"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "eSE2"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM2"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "SD2"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "ETC"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    .line 47
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "NONE"

    aput-object v1, v0, v3

    const-string/jumbo v1, "SCP11a"

    aput-object v1, v0, v4

    const-string/jumbo v1, "SCP11b"

    aput-object v1, v0, v5

    const-string/jumbo v1, "SCPCustom"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadKeyguardConfig()Lcom/android/settings/EFSProperties$KeyguardProperties;
    .locals 17

    .prologue
    .line 318
    const-string/jumbo v14, "load Keyguard config"

    invoke-static {v14}, Lcom/android/settings/EFSProperties;->log(Ljava/lang/String;)V

    .line 319
    new-instance v8, Ljava/io/File;

    const-string/jumbo v14, "/efs/sec_efs"

    const-string/jumbo v15, "keyguardConfig"

    invoke-direct {v8, v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .local v8, "keyguardConfigFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    .line 321
    .local v3, "existFile":Z
    if-nez v3, :cond_0

    .line 322
    const-string/jumbo v14, "Keyguard config file does not exist"

    invoke-static {v14}, Lcom/android/settings/EFSProperties;->log(Ljava/lang/String;)V

    .line 323
    const/4 v14, 0x0

    return-object v14

    .line 326
    :cond_0
    const/4 v4, 0x0

    .line 327
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 329
    .local v6, "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Lcom/android/settings/EFSProperties$KeyguardProperties;

    invoke-direct {v7}, Lcom/android/settings/EFSProperties$KeyguardProperties;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 332
    .local v7, "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    .end local v6    # "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    move-result v10

    .line 333
    .local v10, "lengthCSName":I
    if-lez v10, :cond_4

    .line 334
    new-array v0, v10, [B

    .line 336
    .local v0, "csTemp":[B
    const/4 v14, 0x0

    invoke-virtual {v5, v0, v14, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v13

    .line 337
    .local v13, "tempSize":I
    if-eq v13, v10, :cond_2

    .line 338
    const-string/jumbo v14, "EFSProperties"

    const-string/jumbo v15, "csTemp length is not proper"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 339
    const/4 v14, 0x0

    .line 374
    if-eqz v5, :cond_1

    .line 376
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 339
    :cond_1
    :goto_0
    return-object v14

    .line 377
    :catch_0
    move-exception v1

    .line 378
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 341
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_4
    iput-object v0, v7, Lcom/android/settings/EFSProperties$KeyguardProperties;->csName:[B

    .line 346
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v9

    .line 347
    .local v9, "lengthAID":I
    if-lez v9, :cond_6

    .line 348
    new-array v14, v9, [B

    iput-object v14, v7, Lcom/android/settings/EFSProperties$KeyguardProperties;->AID:[B

    .line 349
    iget-object v14, v7, Lcom/android/settings/EFSProperties$KeyguardProperties;->AID:[B

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v11

    .line 350
    .local v11, "readByteSize":I
    if-eq v11, v9, :cond_8

    .line 351
    const-string/jumbo v14, "EFSProperties"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "read side mismatched, lengthAID : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", readByteSize : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 352
    const/4 v14, 0x0

    .line 374
    if-eqz v5, :cond_3

    .line 376
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 352
    :cond_3
    :goto_1
    return-object v14

    .line 343
    .end local v0    # "csTemp":[B
    .end local v9    # "lengthAID":I
    .end local v11    # "readByteSize":I
    .end local v13    # "tempSize":I
    :cond_4
    :try_start_6
    const-string/jumbo v14, "EFSProperties"

    const-string/jumbo v15, "CS Name length is not proper"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 344
    const/4 v14, 0x0

    .line 374
    if-eqz v5, :cond_5

    .line 376
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 344
    :cond_5
    :goto_2
    return-object v14

    .line 377
    :catch_1
    move-exception v1

    .line 378
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 377
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "csTemp":[B
    .restart local v9    # "lengthAID":I
    .restart local v11    # "readByteSize":I
    .restart local v13    # "tempSize":I
    :catch_2
    move-exception v1

    .line 378
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 355
    .end local v1    # "e":Ljava/io/IOException;
    .end local v11    # "readByteSize":I
    :cond_6
    :try_start_8
    const-string/jumbo v14, "EFSProperties"

    const-string/jumbo v15, "AID length is not proper"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 356
    const/4 v14, 0x0

    .line 374
    if-eqz v5, :cond_7

    .line 376
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 356
    :cond_7
    :goto_3
    return-object v14

    .line 377
    :catch_3
    move-exception v1

    .line 378
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 358
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v11    # "readByteSize":I
    :cond_8
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v12

    .line 359
    .local v12, "storageType":I
    iput v12, v7, Lcom/android/settings/EFSProperties$KeyguardProperties;->storageType:I

    .line 360
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v14

    iput v14, v7, Lcom/android/settings/EFSProperties$KeyguardProperties;->enabledSCP:I

    .line 361
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v14

    iput v14, v7, Lcom/android/settings/EFSProperties$KeyguardProperties;->pinMinLength:I

    .line 362
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v14

    iput v14, v7, Lcom/android/settings/EFSProperties$KeyguardProperties;->pinMaxLength:I

    .line 363
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v14

    iput v14, v7, Lcom/android/settings/EFSProperties$KeyguardProperties;->pukMinLength:I

    .line 364
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v14

    iput v14, v7, Lcom/android/settings/EFSProperties$KeyguardProperties;->pukMaxLength:I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 374
    if-eqz v5, :cond_9

    .line 376
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 383
    :cond_9
    :goto_4
    return-object v7

    .line 377
    :catch_4
    move-exception v1

    .line 378
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 369
    .end local v0    # "csTemp":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    .end local v9    # "lengthAID":I
    .end local v10    # "lengthCSName":I
    .end local v11    # "readByteSize":I
    .end local v12    # "storageType":I
    .end local v13    # "tempSize":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    :catch_5
    move-exception v2

    .line 370
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    .local v2, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_c
    const-string/jumbo v14, "loadKeyguardConfig : Exception"

    invoke-static {v14}, Lcom/android/settings/EFSProperties;->log(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 372
    const/4 v14, 0x0

    .line 374
    if-eqz v4, :cond_a

    .line 376
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 372
    :cond_a
    :goto_6
    return-object v14

    .line 377
    :catch_6
    move-exception v1

    .line 378
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 365
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    :catch_7
    move-exception v1

    .line 366
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_e
    const-string/jumbo v14, "loadKeyguardConfig : IOException"

    invoke-static {v14}, Lcom/android/settings/EFSProperties;->log(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 368
    const/4 v14, 0x0

    .line 374
    if-eqz v4, :cond_b

    .line 376
    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 368
    :cond_b
    :goto_8
    return-object v14

    .line 377
    :catch_8
    move-exception v1

    .line 378
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 373
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 374
    :goto_9
    if-eqz v4, :cond_c

    .line 376
    :try_start_10
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 373
    :cond_c
    :goto_a
    throw v14

    .line 377
    :catch_9
    move-exception v1

    .line 378
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 373
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    :catchall_1
    move-exception v14

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    goto :goto_9

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    :catchall_2
    move-exception v14

    move-object v6, v7

    .end local v7    # "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    .local v6, "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_9

    .line 365
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    :catch_a
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    :catch_b
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    .local v6, "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .line 369
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    :catch_c
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    :catch_d
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v6, v7

    .end local v7    # "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    .local v6, "keyguard":Lcom/android/settings/EFSProperties$KeyguardProperties;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method public static loadODEConfig()Lcom/android/settings/EFSProperties$ODEProperties;
    .locals 22

    .prologue
    .line 50
    const-string/jumbo v19, "load ODE config"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/EFSProperties;->log(Ljava/lang/String;)V

    .line 51
    new-instance v16, Ljava/io/File;

    const-string/jumbo v19, "/efs/sec_efs"

    const-string/jumbo v20, "odeConfig"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .local v16, "odeConfigFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v4

    .line 53
    .local v4, "existFile":Z
    if-nez v4, :cond_0

    .line 54
    const-string/jumbo v19, "ODE config file does not exist"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/EFSProperties;->log(Ljava/lang/String;)V

    .line 55
    new-instance v19, Lcom/android/settings/EFSProperties$ODEProperties;

    invoke-direct/range {v19 .. v19}, Lcom/android/settings/EFSProperties$ODEProperties;-><init>()V

    return-object v19

    .line 58
    :cond_0
    const/4 v14, 0x0

    .line 59
    .local v14, "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    const/4 v5, 0x0

    .line 61
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v15, Lcom/android/settings/EFSProperties$ODEProperties;

    .end local v5    # "fis":Ljava/io/FileInputStream;
    invoke-direct {v15}, Lcom/android/settings/EFSProperties$ODEProperties;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 64
    .local v15, "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    .end local v14    # "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 65
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v12

    .line 66
    .local v12, "lengthAID":I
    if-eqz v12, :cond_1

    .line 67
    new-array v0, v12, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->AID:[B

    .line 68
    iget-object v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->AID:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1, v12}, Ljava/io/FileInputStream;->read([BII)I

    move-result v18

    .line 69
    .local v18, "readByteSize":I
    move/from16 v0, v18

    if-eq v0, v12, :cond_1

    .line 70
    const-string/jumbo v19, "EFSProperties"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "read side mismatched, lengthAID : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", readByteSize : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v18    # "readByteSize":I
    :cond_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->storageType:I

    .line 74
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->enabledSCP:I

    .line 75
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->enabledWrap:I

    .line 76
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->pinMinLength:I

    .line 77
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 78
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->authMode:I

    .line 79
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 80
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->pukMinLength:I

    .line 81
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 83
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v13

    .line 84
    .local v13, "lengthCsName":I
    if-eqz v13, :cond_2

    .line 85
    new-array v0, v13, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->csName:[B

    .line 86
    iget-object v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->csName:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v18

    .line 87
    .restart local v18    # "readByteSize":I
    move/from16 v0, v18

    if-eq v0, v13, :cond_2

    .line 88
    const-string/jumbo v19, "EFSProperties"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "read side mismatched, lengthCsName : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", readByteSize : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v18    # "readByteSize":I
    :cond_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->CertAdminID:I

    .line 93
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->CertUserID:I

    .line 94
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v7

    .line 95
    .local v7, "lenCertAlias":I
    if-eqz v7, :cond_3

    .line 96
    new-array v0, v7, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->CertAlias:[B

    .line 97
    iget-object v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->CertAlias:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v18

    .line 98
    .restart local v18    # "readByteSize":I
    move/from16 v0, v18

    if-eq v0, v7, :cond_3

    .line 99
    const-string/jumbo v19, "EFSProperties"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "read side mismatched, lenCertAlias : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", readByteSize : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v18    # "readByteSize":I
    :cond_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v8

    .line 103
    .local v8, "lenCertLocation":I
    if-eqz v8, :cond_4

    .line 104
    new-array v0, v8, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->CertLocation:[B

    .line 105
    iget-object v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->CertLocation:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v18

    .line 106
    .restart local v18    # "readByteSize":I
    move/from16 v0, v18

    if-eq v0, v8, :cond_4

    .line 107
    const-string/jumbo v19, "EFSProperties"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "read side mismatched, lenCertLocation : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", readByteSize : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v18    # "readByteSize":I
    :cond_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v10

    .line 112
    .local v10, "lenConfiguratorPkgLen":I
    if-eqz v10, :cond_5

    .line 113
    new-array v0, v10, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    .line 114
    iget-object v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v18

    .line 115
    .restart local v18    # "readByteSize":I
    move/from16 v0, v18

    if-eq v0, v10, :cond_5

    .line 116
    const-string/jumbo v19, "EFSProperties"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "read side mismatched, lenConfiguratorPkgLen : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", readByteSize : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v18    # "readByteSize":I
    :cond_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v9

    .line 121
    .local v9, "lenConfiguratorDigestLen":I
    if-eqz v9, :cond_6

    .line 122
    new-array v0, v9, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->cofiguratorSign:[B

    .line 123
    iget-object v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->cofiguratorSign:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v18

    .line 124
    .restart local v18    # "readByteSize":I
    move/from16 v0, v18

    if-eq v0, v9, :cond_6

    .line 125
    const-string/jumbo v19, "EFSProperties"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "read side mismatched, lenConfiguratorDigestLen : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", readByteSize : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v18    # "readByteSize":I
    :cond_6
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 130
    .local v17, "paramLen":[B
    const/16 v19, 0x0

    const/16 v20, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    .line 132
    const/16 v19, 0x0

    aget-byte v19, v17, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    or-int/lit8 v11, v19, 0x0

    .line 133
    .local v11, "lenScpParamLen":I
    const/16 v19, 0x1

    aget-byte v19, v17, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v11, v11, v19

    .line 135
    if-eqz v11, :cond_7

    .line 136
    new-array v0, v11, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->scpCreationParam:[B

    .line 137
    iget-object v0, v15, Lcom/android/settings/EFSProperties$ODEProperties;->scpCreationParam:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v18

    .line 138
    .restart local v18    # "readByteSize":I
    move/from16 v0, v18

    if-eq v0, v11, :cond_7

    .line 139
    const-string/jumbo v19, "EFSProperties"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "read side mismatched, lenScpParamLen : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", readByteSize : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v18    # "readByteSize":I
    :cond_7
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    move-object v14, v15

    .line 148
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "lenCertAlias":I
    .end local v8    # "lenCertLocation":I
    .end local v9    # "lenConfiguratorDigestLen":I
    .end local v10    # "lenConfiguratorPkgLen":I
    .end local v11    # "lenScpParamLen":I
    .end local v12    # "lengthAID":I
    .end local v13    # "lengthCsName":I
    .end local v15    # "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    .end local v17    # "paramLen":[B
    :goto_0
    if-eqz v5, :cond_8

    .line 150
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 156
    :cond_8
    :goto_1
    return-object v14

    .line 143
    .local v5, "fis":Ljava/io/FileInputStream;
    .restart local v14    # "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    :catch_0
    move-exception v3

    .line 144
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 145
    const/4 v14, 0x0

    .restart local v14    # "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    goto :goto_0

    .line 151
    .end local v3    # "e":Ljava/io/IOException;
    .end local v14    # "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    :catch_1
    move-exception v3

    .line 152
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 143
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    move-object v14, v15

    .end local v15    # "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    .local v14, "ode":Lcom/android/settings/EFSProperties$ODEProperties;
    goto :goto_2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 618
    const-string/jumbo v0, "EFSProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-void
.end method
