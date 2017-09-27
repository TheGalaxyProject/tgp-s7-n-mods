.class public Lcom/samsung/ucm/ucmservice/EFSProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;,
        Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE_PATH:Ljava/lang/String; = "/efs/sec_efs"

.field private static final KEYGUARD_CONFIG_NAME:Ljava/lang/String; = "keyguardConfig"

.field private static final ODE_CONFIG_NAME:Ljava/lang/String; = "odeConfig"

.field public static final SCP_NONE:Ljava/lang/String; = "NONE"

.field public static final SCP_TYPES:[Ljava/lang/String;

.field public static final SCP_TYPE_A:Ljava/lang/String; = "SCP11a"

.field public static final SCP_TYPE_B:Ljava/lang/String; = "SCP11b"

.field public static final SCP_TYPE_CUSTOM:Ljava/lang/String; = "SCPCustom"

.field public static final STORAGE_TYPES:[Ljava/lang/String;

.field public static final STORAGE_TYPE_ESE:I = 0x0

.field public static final STORAGE_TYPE_ESE_1:I = 0x3

.field public static final STORAGE_TYPE_ESE_1_NAME:Ljava/lang/String; = "eSE1"

.field public static final STORAGE_TYPE_ESE_2:I = 0x6

.field public static final STORAGE_TYPE_ESE_2_NAME:Ljava/lang/String; = "eSE2"

.field public static final STORAGE_TYPE_ESE_NAME:Ljava/lang/String; = "eSE"

.field public static final STORAGE_TYPE_ETC:I = 0x9

.field public static final STORAGE_TYPE_ETC_NAME:Ljava/lang/String; = "ETC"

.field public static final STORAGE_TYPE_MAX:I = 0xa

.field public static final STORAGE_TYPE_MICROSD:I = 0x2

.field public static final STORAGE_TYPE_MICROSD_1:I = 0x5

.field public static final STORAGE_TYPE_MICROSD_1_NAME:Ljava/lang/String; = "SD1"

.field public static final STORAGE_TYPE_MICROSD_2:I = 0x8

.field public static final STORAGE_TYPE_MICROSD_2_NAME:Ljava/lang/String; = "SD2"

.field public static final STORAGE_TYPE_MICROSD_NAME:Ljava/lang/String; = "SD"

.field public static final STORAGE_TYPE_NONE:I = -0x1

.field public static final STORAGE_TYPE_UICC:I = 0x1

.field public static final STORAGE_TYPE_UICC_1:I = 0x4

.field public static final STORAGE_TYPE_UICC_1_NAME:Ljava/lang/String; = "SIM1"

.field public static final STORAGE_TYPE_UICC_2:I = 0x7

.field public static final STORAGE_TYPE_UICC_2_NAME:Ljava/lang/String; = "SIM2"

.field public static final STORAGE_TYPE_UICC_NAME:Ljava/lang/String; = "SIM"

.field private static final TAG:Ljava/lang/String; = "EFSProperties"


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

    sput-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

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

    sput-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

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

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # [B

    .prologue
    const/4 v7, 0x0

    .line 304
    const/16 v6, 0x10

    new-array v0, v6, [C

    .local v0, "DIGITS":[C
    fill-array-data v0, :array_0

    .line 308
    if-nez p0, :cond_0

    .line 309
    return-object v7

    .line 312
    :cond_0
    array-length v4, p0

    .line 313
    .local v4, "l":I
    shl-int/lit8 v6, v4, 0x1

    new-array v5, v6, [C

    .line 316
    .local v5, "out":[C
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 317
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v0, v6

    aput-char v6, v5, v3

    .line 318
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .restart local v3    # "j":I
    aget-byte v6, p0, v1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v0, v6

    aput-char v6, v5, v2

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([C)V

    return-object v6

    .line 304
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private static checkKeyguardProperty(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z
    .locals 1
    .param p0, "keyguard"    # Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    .prologue
    .line 475
    const/4 v0, 0x1

    return v0
.end method

.method private static checkODEProperties(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z
    .locals 1
    .param p0, "ode"    # Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public static deleteKeyguardConfig()Z
    .locals 5

    .prologue
    .line 394
    const/4 v0, 0x1

    .line 395
    .local v0, "deleteFile":Z
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/efs/sec_efs"

    const-string/jumbo v4, "keyguardConfig"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .local v2, "keyguardConfigFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 398
    .local v1, "existFile":Z
    if-eqz v1, :cond_0

    .line 399
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 400
    .local v0, "deleteFile":Z
    if-nez v0, :cond_0

    .line 401
    const-string/jumbo v3, "failed to delete the existing keyguard config file"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 402
    const/4 v0, 0x0

    .line 405
    .end local v0    # "deleteFile":Z
    :cond_0
    return v0
.end method

.method public static deleteODEConfig()Z
    .locals 5

    .prologue
    .line 160
    const/4 v0, 0x1

    .line 161
    .local v0, "deleteFile":Z
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/efs/sec_efs"

    const-string/jumbo v4, "odeConfig"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v2, "odeConfigFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 164
    .local v1, "existFile":Z
    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 166
    .local v0, "deleteFile":Z
    if-nez v0, :cond_0

    .line 167
    const-string/jumbo v3, "failed to delete the existing ODE config file"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x0

    .line 171
    .end local v0    # "deleteFile":Z
    :cond_0
    return v0
.end method

.method public static loadKeyguardConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .locals 17

    .prologue
    .line 325
    const-string/jumbo v14, "load Keyguard config"

    invoke-static {v14}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 326
    new-instance v8, Ljava/io/File;

    const-string/jumbo v14, "/efs/sec_efs"

    const-string/jumbo v15, "keyguardConfig"

    invoke-direct {v8, v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .local v8, "keyguardConfigFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    .line 328
    .local v3, "existFile":Z
    if-nez v3, :cond_0

    .line 329
    const-string/jumbo v14, "Keyguard config file does not exist"

    invoke-static {v14}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 330
    const/4 v14, 0x0

    return-object v14

    .line 333
    :cond_0
    const/4 v4, 0x0

    .line 334
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 336
    .local v6, "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    invoke-direct {v7}, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 339
    .local v7, "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    .end local v6    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    move-result v10

    .line 340
    .local v10, "lengthCSName":I
    if-lez v10, :cond_4

    .line 341
    new-array v0, v10, [B

    .line 343
    .local v0, "csTemp":[B
    const/4 v14, 0x0

    invoke-virtual {v5, v0, v14, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v13

    .line 344
    .local v13, "tempSize":I
    if-eq v13, v10, :cond_2

    .line 345
    const-string/jumbo v14, "EFSProperties"

    const-string/jumbo v15, "csTemp length is not proper"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 346
    const/4 v14, 0x0

    .line 381
    if-eqz v5, :cond_1

    .line 383
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 346
    :cond_1
    :goto_0
    return-object v14

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 348
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_4
    iput-object v0, v7, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    .line 353
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v9

    .line 354
    .local v9, "lengthAID":I
    if-lez v9, :cond_6

    .line 355
    new-array v14, v9, [B

    iput-object v14, v7, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    .line 356
    iget-object v14, v7, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v11

    .line 357
    .local v11, "readByteSize":I
    if-eq v11, v9, :cond_8

    .line 358
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

    .line 359
    const/4 v14, 0x0

    .line 381
    if-eqz v5, :cond_3

    .line 383
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 359
    :cond_3
    :goto_1
    return-object v14

    .line 350
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

    .line 351
    const/4 v14, 0x0

    .line 381
    if-eqz v5, :cond_5

    .line 383
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 351
    :cond_5
    :goto_2
    return-object v14

    .line 384
    :catch_1
    move-exception v1

    .line 385
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 384
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "csTemp":[B
    .restart local v9    # "lengthAID":I
    .restart local v11    # "readByteSize":I
    .restart local v13    # "tempSize":I
    :catch_2
    move-exception v1

    .line 385
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 362
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

    .line 363
    const/4 v14, 0x0

    .line 381
    if-eqz v5, :cond_7

    .line 383
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 363
    :cond_7
    :goto_3
    return-object v14

    .line 384
    :catch_3
    move-exception v1

    .line 385
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 365
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v11    # "readByteSize":I
    :cond_8
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v12

    .line 366
    .local v12, "storageType":I
    iput v12, v7, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->storageType:I

    .line 367
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v14

    iput v14, v7, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->enabledSCP:I

    .line 368
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v14

    iput v14, v7, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMinLength:I

    .line 369
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v14

    iput v14, v7, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMaxLength:I

    .line 370
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v14

    iput v14, v7, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMinLength:I

    .line 371
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v14

    iput v14, v7, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMaxLength:I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 381
    if-eqz v5, :cond_9

    .line 383
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 390
    :cond_9
    :goto_4
    return-object v7

    .line 384
    :catch_4
    move-exception v1

    .line 385
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 376
    .end local v0    # "csTemp":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .end local v9    # "lengthAID":I
    .end local v10    # "lengthCSName":I
    .end local v11    # "readByteSize":I
    .end local v12    # "storageType":I
    .end local v13    # "tempSize":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    :catch_5
    move-exception v2

    .line 377
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .local v2, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_c
    const-string/jumbo v14, "loadKeyguardConfig : Exception"

    invoke-static {v14}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 379
    const/4 v14, 0x0

    .line 381
    if-eqz v4, :cond_a

    .line 383
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 379
    :cond_a
    :goto_6
    return-object v14

    .line 384
    :catch_6
    move-exception v1

    .line 385
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 372
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    :catch_7
    move-exception v1

    .line 373
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_e
    const-string/jumbo v14, "loadKeyguardConfig : IOException"

    invoke-static {v14}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 375
    const/4 v14, 0x0

    .line 381
    if-eqz v4, :cond_b

    .line 383
    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 375
    :cond_b
    :goto_8
    return-object v14

    .line 384
    :catch_8
    move-exception v1

    .line 385
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 380
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 381
    :goto_9
    if-eqz v4, :cond_c

    .line 383
    :try_start_10
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 380
    :cond_c
    :goto_a
    throw v14

    .line 384
    :catch_9
    move-exception v1

    .line 385
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 380
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    :catchall_1
    move-exception v14

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    goto :goto_9

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    :catchall_2
    move-exception v14

    move-object v6, v7

    .end local v7    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .local v6, "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_9

    .line 372
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    :catch_a
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    :catch_b
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .local v6, "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .line 376
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    :catch_c
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    :catch_d
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v6, v7

    .end local v7    # "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .local v6, "keyguard":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method public static loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .locals 22

    .prologue
    .line 50
    const-string/jumbo v19, "load ODE config"

    invoke-static/range {v19 .. v19}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

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

    invoke-static/range {v19 .. v19}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 55
    new-instance v19, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    invoke-direct/range {v19 .. v19}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V

    return-object v19

    .line 58
    :cond_0
    const/4 v14, 0x0

    .line 59
    .local v14, "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
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
    new-instance v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    .end local v5    # "fis":Ljava/io/FileInputStream;
    invoke-direct {v15}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 64
    .local v15, "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    .end local v14    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

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

    iput-object v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    .line 68
    iget-object v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

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

    iput v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    .line 74
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    .line 75
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    .line 76
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    .line 77
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 78
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    .line 79
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 80
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    .line 81
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

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

    iput-object v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    .line 86
    iget-object v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

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

    iput v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    .line 93
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

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

    iput-object v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    .line 97
    iget-object v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

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

    iput-object v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    .line 105
    iget-object v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

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

    iput-object v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    .line 114
    iget-object v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

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

    iput-object v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    .line 123
    iget-object v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

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

    iput-object v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    .line 137
    iget-object v0, v15, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

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
    .end local v15    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
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
    .restart local v14    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    :catch_0
    move-exception v3

    .line 144
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 145
    const/4 v14, 0x0

    .restart local v14    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    goto :goto_0

    .line 151
    .end local v3    # "e":Ljava/io/IOException;
    .end local v14    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    :catch_1
    move-exception v3

    .line 152
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 143
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    move-object v14, v15

    .end local v15    # "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .local v14, "ode":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    goto :goto_2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 625
    const-string/jumbo v0, "EFSProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void
.end method

.method public static saveKeyguardConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z
    .locals 12
    .param p0, "keyguard"    # Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    .prologue
    .line 409
    const-string/jumbo v10, "save Keyguard config"

    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 410
    const/4 v9, 0x0

    .line 412
    .local v9, "saveConfig":Z
    if-nez p0, :cond_0

    .line 413
    const-string/jumbo v10, "KeyguardProperties is null"

    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 414
    return v9

    .line 417
    :cond_0
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->checkKeyguardProperty(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 418
    const-string/jumbo v10, "checkKeyguardProperty false"

    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 419
    return v9

    .line 422
    :cond_1
    new-instance v7, Ljava/io/File;

    const-string/jumbo v10, "/efs/sec_efs"

    const-string/jumbo v11, "keyguardConfig"

    invoke-direct {v7, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .local v7, "keyguardConfigFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    .line 424
    .local v4, "existFile":Z
    if-eqz v4, :cond_2

    .line 425
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v1

    .line 426
    .local v1, "deleteFile":Z
    if-nez v1, :cond_2

    .line 427
    const-string/jumbo v10, "failed to delete the existing Keyguard ODE config file"

    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 428
    return v9

    .line 432
    .end local v1    # "deleteFile":Z
    :cond_2
    const/4 v5, 0x0

    .line 434
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    .line 437
    .local v0, "csName":[B
    array-length v8, v0

    .line 438
    .local v8, "lengthcsName":I
    invoke-virtual {v6, v8}, Ljava/io/FileOutputStream;->write(I)V

    .line 439
    const/4 v10, 0x0

    invoke-virtual {v6, v0, v10, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 440
    iget-object v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    array-length v10, v10

    if-lez v10, :cond_5

    .line 441
    iget-object v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    array-length v10, v10

    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write(I)V

    .line 442
    iget-object v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 446
    :goto_0
    iget v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->storageType:I

    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write(I)V

    .line 447
    iget v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->enabledSCP:I

    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write(I)V

    .line 448
    iget v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMinLength:I

    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write(I)V

    .line 449
    iget v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMaxLength:I

    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write(I)V

    .line 450
    iget v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMinLength:I

    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write(I)V

    .line 451
    iget v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMaxLength:I

    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 452
    const/4 v9, 0x1

    .line 460
    if-eqz v6, :cond_3

    .line 462
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_1
    move-object v5, v6

    .line 470
    .end local v0    # "csName":[B
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "lengthcsName":I
    :cond_4
    :goto_2
    return v9

    .line 444
    .restart local v0    # "csName":[B
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "lengthcsName":I
    :cond_5
    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 453
    .end local v0    # "csName":[B
    .end local v8    # "lengthcsName":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v5, v6

    .line 454
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    const-string/jumbo v10, "saveKeyguardConfig : IOException"

    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 460
    if-eqz v5, :cond_4

    .line 462
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 463
    :catch_1
    move-exception v2

    .line 464
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 465
    :goto_4
    const/4 v9, 0x0

    goto :goto_2

    .line 463
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "csName":[B
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "lengthcsName":I
    :catch_2
    move-exception v2

    .line 464
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 465
    const/4 v9, 0x0

    goto :goto_1

    .line 456
    .end local v0    # "csName":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "lengthcsName":I
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v3

    .line 457
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_6
    const-string/jumbo v10, "saveKeyguardConfig : Exception"

    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 460
    if-eqz v5, :cond_4

    .line 462
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 463
    :catch_4
    move-exception v2

    .line 464
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 459
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 460
    :goto_6
    if-eqz v5, :cond_6

    .line 462
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 459
    :cond_6
    :goto_7
    throw v10

    .line 463
    :catch_5
    move-exception v2

    .line 464
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 465
    const/4 v9, 0x0

    goto :goto_7

    .line 459
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 453
    .local v5, "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 456
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    goto :goto_5
.end method

.method public static saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z
    .locals 11
    .param p0, "ode"    # Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    .prologue
    .line 176
    const-string/jumbo v9, "save ODE config"

    invoke-static {v9}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 177
    const/4 v8, 0x0

    .line 179
    .local v8, "saveConfig":Z
    if-nez p0, :cond_0

    .line 180
    const-string/jumbo v9, "ODEProperties is null"

    invoke-static {v9}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 181
    return v8

    .line 184
    :cond_0
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->checkODEProperties(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 185
    const-string/jumbo v9, "checkODEProperties false"

    invoke-static {v9}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 186
    return v8

    .line 188
    :cond_1
    new-instance v6, Ljava/io/File;

    const-string/jumbo v9, "/efs/sec_efs"

    const-string/jumbo v10, "odeConfig"

    invoke-direct {v6, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .local v6, "odeConfigFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    .line 190
    .local v3, "existFile":Z
    if-eqz v3, :cond_2

    .line 191
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    .line 192
    .local v0, "deleteFile":Z
    if-nez v0, :cond_2

    .line 193
    const-string/jumbo v9, "failed to delete the existing ODE config file"

    invoke-static {v9}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 194
    return v8

    .line 203
    .end local v0    # "deleteFile":Z
    :cond_2
    const/4 v4, 0x0

    .line 205
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 207
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 209
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    array-length v9, v9

    if-lez v9, :cond_4

    .line 210
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    array-length v9, v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 211
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 216
    :goto_0
    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 217
    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 218
    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 220
    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 221
    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 222
    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 223
    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 224
    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 225
    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 227
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    array-length v9, v9

    if-lez v9, :cond_5

    .line 228
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    array-length v9, v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 229
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 234
    :goto_1
    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 235
    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 236
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    array-length v9, v9

    if-lez v9, :cond_6

    .line 237
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    array-length v9, v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 238
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 242
    :goto_2
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    array-length v9, v9

    if-lez v9, :cond_7

    .line 243
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    array-length v9, v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 244
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 249
    :goto_3
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    array-length v9, v9

    if-lez v9, :cond_8

    .line 250
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    array-length v9, v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 251
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 256
    :goto_4
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    array-length v9, v9

    if-lez v9, :cond_9

    .line 257
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    array-length v9, v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    .line 258
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 263
    :goto_5
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    array-length v9, v9

    if-lez v9, :cond_a

    .line 264
    const/4 v9, 0x2

    new-array v7, v9, [B

    .line 265
    .local v7, "paramLength":[B
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    array-length v9, v9

    const v10, 0xff00

    and-int/2addr v9, v10

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    const/4 v10, 0x0

    aput-byte v9, v7, v10

    .line 266
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    array-length v9, v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    const/4 v10, 0x1

    aput-byte v9, v7, v10

    .line 267
    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 268
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    .end local v7    # "paramLength":[B
    :goto_6
    const/4 v8, 0x1

    move-object v4, v5

    .line 285
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_7
    if-eqz v4, :cond_3

    .line 287
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 295
    :cond_3
    :goto_8
    return v8

    .line 213
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 273
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .line 275
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_9
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 276
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 277
    const/4 v8, 0x0

    goto :goto_7

    .line 231
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_5
    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 278
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 280
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 281
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 282
    const/4 v8, 0x0

    goto :goto_7

    .line 240
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    goto/16 :goto_2

    .line 246
    :cond_7
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    goto/16 :goto_3

    .line 253
    :cond_8
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_4

    .line 260
    :cond_9
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_5

    .line 270
    :cond_a
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    .line 288
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    .line 290
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 291
    const/4 v8, 0x0

    goto :goto_8

    .line 273
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    goto :goto_9

    .line 278
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_a
.end method
