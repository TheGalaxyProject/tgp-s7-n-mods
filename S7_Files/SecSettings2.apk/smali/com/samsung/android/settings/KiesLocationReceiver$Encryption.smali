.class Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;
.super Ljava/lang/Object;
.source "KiesLocationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/KiesLocationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Encryption"
.end annotation


# instance fields
.field private mCipher:Ljavax/crypto/Cipher;

.field private mSalt:[B

.field private secretKey:Ljavax/crypto/spec/SecretKeySpec;

.field private securityPassword:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/KiesLocationReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;Ljava/io/File;Ljava/io/File;I)Ljava/io/File;
    .locals 1
    .param p1, "encryptFile"    # Ljava/io/File;
    .param p2, "decryptFile"    # Ljava/io/File;
    .param p3, "securityLevel"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->decrypt(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;Ljava/io/File;Ljava/io/File;I)Ljava/io/File;
    .locals 1
    .param p1, "sourceFile"    # Ljava/io/File;
    .param p2, "encryptFile"    # Ljava/io/File;
    .param p3, "securityLevel"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->encrypt(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->streamCrypt(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/settings/KiesLocationReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/KiesLocationReceiver;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->this$0:Lcom/samsung/android/settings/KiesLocationReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/KiesLocationReceiver;Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/KiesLocationReceiver;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;-><init>(Lcom/samsung/android/settings/KiesLocationReceiver;)V

    return-void
.end method

.method private decrypt(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;
    .locals 16
    .param p1, "encryptFile"    # Ljava/io/File;
    .param p2, "decryptFile"    # Ljava/io/File;
    .param p3, "securityLevel"    # I

    .prologue
    .line 557
    const/4 v5, 0x0

    .line 558
    .local v5, "fis":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 559
    .local v6, "fos":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 562
    .local v9, "tempInputStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_4

    .line 563
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    .end local v9    # "tempInputStream":Ljava/io/FileInputStream;
    .local v10, "tempInputStream":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v10, v1}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object v5

    .line 565
    .local v5, "fis":Ljava/io/InputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 566
    .local v7, "fos":Ljava/io/OutputStream;
    const/4 v8, 0x0

    .line 567
    .local v8, "readCount":I
    const/16 v11, 0x400

    :try_start_2
    new-array v2, v11, [B

    .line 568
    .end local v6    # "fos":Ljava/io/OutputStream;
    .local v2, "buffer":[B
    :goto_0
    const/4 v11, 0x0

    const/16 v12, 0x400

    invoke-virtual {v5, v2, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_3

    .line 569
    const/4 v11, 0x0

    invoke-virtual {v7, v2, v11, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 572
    .end local v2    # "buffer":[B
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    move-object v9, v10

    .end local v10    # "tempInputStream":Ljava/io/FileInputStream;
    .local v9, "tempInputStream":Ljava/io/FileInputStream;
    move-object v6, v7

    .line 573
    .end local v5    # "fis":Ljava/io/InputStream;
    .end local v7    # "fos":Ljava/io/OutputStream;
    .end local v8    # "readCount":I
    .end local v9    # "tempInputStream":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 575
    if-eqz v6, :cond_0

    .line 577
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 583
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    .line 585
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 591
    :cond_1
    :goto_3
    if-eqz v9, :cond_2

    .line 593
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 599
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    return-object p2

    .restart local v2    # "buffer":[B
    .restart local v5    # "fis":Ljava/io/InputStream;
    .restart local v7    # "fos":Ljava/io/OutputStream;
    .restart local v8    # "readCount":I
    .restart local v10    # "tempInputStream":Ljava/io/FileInputStream;
    :cond_3
    move-object v9, v10

    .end local v10    # "tempInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "tempInputStream":Ljava/io/FileInputStream;
    move-object v6, v7

    .line 575
    .end local v2    # "buffer":[B
    .end local v5    # "fis":Ljava/io/InputStream;
    .end local v7    # "fos":Ljava/io/OutputStream;
    .end local v8    # "readCount":I
    .end local v9    # "tempInputStream":Ljava/io/FileInputStream;
    :cond_4
    if-eqz v6, :cond_5

    .line 577
    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 583
    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    .line 585
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 591
    :cond_6
    :goto_6
    if-eqz v9, :cond_2

    .line 593
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    .line 594
    :catch_1
    move-exception v3

    .line 595
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 578
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 579
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 586
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 587
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 578
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 579
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 586
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 587
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 594
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 595
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 574
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 575
    :goto_7
    if-eqz v6, :cond_7

    .line 577
    :try_start_a
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 583
    :cond_7
    :goto_8
    if-eqz v5, :cond_8

    .line 585
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 591
    :cond_8
    :goto_9
    if-eqz v9, :cond_9

    .line 593
    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 574
    :cond_9
    :goto_a
    throw v11

    .line 578
    :catch_7
    move-exception v3

    .line 579
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 586
    .end local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 587
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 594
    .end local v3    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v3

    .line 595
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 574
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "fos":Ljava/io/OutputStream;
    .restart local v10    # "tempInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "tempInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "tempInputStream":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v6    # "fos":Ljava/io/OutputStream;
    .end local v9    # "tempInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/InputStream;
    .restart local v7    # "fos":Ljava/io/OutputStream;
    .restart local v8    # "readCount":I
    .restart local v10    # "tempInputStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v11

    move-object v9, v10

    .end local v10    # "tempInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "tempInputStream":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "fos":Ljava/io/OutputStream;
    .local v6, "fos":Ljava/io/OutputStream;
    goto :goto_7

    .line 572
    .end local v8    # "readCount":I
    .local v5, "fis":Ljava/io/InputStream;
    .local v6, "fos":Ljava/io/OutputStream;
    .local v9, "tempInputStream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    goto :goto_1

    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fis":Ljava/io/InputStream;
    .end local v9    # "tempInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "tempInputStream":Ljava/io/FileInputStream;
    :catch_b
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v9, v10

    .end local v10    # "tempInputStream":Ljava/io/FileInputStream;
    .local v9, "tempInputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    .line 611
    iget-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v0, v3, [B

    .line 612
    .local v0, "iv":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 613
    .local v1, "readLength":I
    iget-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 614
    const-string/jumbo v3, "KiesLocationReceiver"

    const-string/jumbo v4, "read bytes not equals to block size"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 617
    .local v2, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 618
    new-array v3, v5, [B

    iput-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mSalt:[B

    .line 619
    iget-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mSalt:[B

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 620
    if-eq v1, v5, :cond_1

    .line 621
    const-string/jumbo v3, "KiesLocationReceiver"

    const-string/jumbo v4, "read bytes not equals to 16"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 627
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    iget-object v4, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 628
    new-instance v3, Ljavax/crypto/CipherInputStream;

    iget-object v4, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {v3, p1, v4}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v3

    .line 624
    :cond_3
    if-nez p2, :cond_2

    .line 625
    invoke-direct {p0}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0
.end method

.method private encrypt(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;
    .locals 16
    .param p1, "sourceFile"    # Ljava/io/File;
    .param p2, "encryptFile"    # Ljava/io/File;
    .param p3, "securityLevel"    # I

    .prologue
    .line 478
    const/4 v5, 0x0

    .line 479
    .local v5, "fis":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 480
    .local v7, "fos":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 483
    .local v9, "tempOutputStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_4

    .line 484
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    .end local v5    # "fis":Ljava/io/InputStream;
    .local v6, "fis":Ljava/io/InputStream;
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 486
    .local v10, "tempOutputStream":Ljava/io/OutputStream;
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v10, v1}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->encryptStream(Ljava/io/OutputStream;I)Ljava/io/OutputStream;

    .end local v9    # "tempOutputStream":Ljava/io/OutputStream;
    move-result-object v7

    .line 487
    .local v7, "fos":Ljava/io/OutputStream;
    const/4 v8, 0x0

    .line 488
    .local v8, "readCount":I
    const/16 v11, 0x400

    new-array v2, v11, [B

    .line 489
    .local v2, "buffer":[B
    :goto_0
    const/4 v11, 0x0

    const/16 v12, 0x400

    invoke-virtual {v6, v2, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_3

    .line 490
    const/4 v11, 0x0

    invoke-virtual {v7, v2, v11, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 493
    .end local v2    # "buffer":[B
    .end local v7    # "fos":Ljava/io/OutputStream;
    .end local v8    # "readCount":I
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    move-object v9, v10

    .end local v10    # "tempOutputStream":Ljava/io/OutputStream;
    .local v9, "tempOutputStream":Ljava/io/OutputStream;
    move-object v5, v6

    .line 494
    .end local v6    # "fis":Ljava/io/InputStream;
    .end local v9    # "tempOutputStream":Ljava/io/OutputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 496
    if-eqz v5, :cond_0

    .line 498
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 504
    :cond_0
    :goto_2
    if-eqz v7, :cond_1

    .line 506
    :try_start_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 512
    :cond_1
    :goto_3
    if-eqz v9, :cond_2

    .line 514
    :try_start_6
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 520
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    return-object p2

    .restart local v2    # "buffer":[B
    .restart local v6    # "fis":Ljava/io/InputStream;
    .restart local v7    # "fos":Ljava/io/OutputStream;
    .restart local v8    # "readCount":I
    .restart local v10    # "tempOutputStream":Ljava/io/OutputStream;
    :cond_3
    move-object v9, v10

    .end local v10    # "tempOutputStream":Ljava/io/OutputStream;
    .restart local v9    # "tempOutputStream":Ljava/io/OutputStream;
    move-object v5, v6

    .line 496
    .end local v2    # "buffer":[B
    .end local v6    # "fis":Ljava/io/InputStream;
    .end local v7    # "fos":Ljava/io/OutputStream;
    .end local v8    # "readCount":I
    .end local v9    # "tempOutputStream":Ljava/io/OutputStream;
    :cond_4
    if-eqz v5, :cond_5

    .line 498
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 504
    :cond_5
    :goto_5
    if-eqz v7, :cond_6

    .line 506
    :try_start_8
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 512
    :cond_6
    :goto_6
    if-eqz v9, :cond_2

    .line 514
    :try_start_9
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    .line 515
    :catch_1
    move-exception v3

    .line 516
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 499
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 500
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 507
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 508
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 499
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 500
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 507
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 508
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 515
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 516
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 495
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 496
    :goto_7
    if-eqz v5, :cond_7

    .line 498
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 504
    :cond_7
    :goto_8
    if-eqz v7, :cond_8

    .line 506
    :try_start_b
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 512
    :cond_8
    :goto_9
    if-eqz v9, :cond_9

    .line 514
    :try_start_c
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 495
    :cond_9
    :goto_a
    throw v11

    .line 499
    :catch_7
    move-exception v3

    .line 500
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 507
    .end local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 508
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 515
    .end local v3    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v3

    .line 516
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 495
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "fis":Ljava/io/InputStream;
    .local v7, "fos":Ljava/io/OutputStream;
    .local v9, "tempOutputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/InputStream;
    .local v5, "fis":Ljava/io/InputStream;
    goto :goto_7

    .end local v5    # "fis":Ljava/io/InputStream;
    .end local v7    # "fos":Ljava/io/OutputStream;
    .end local v9    # "tempOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "fis":Ljava/io/InputStream;
    .restart local v10    # "tempOutputStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v11

    move-object v9, v10

    .end local v10    # "tempOutputStream":Ljava/io/OutputStream;
    .local v9, "tempOutputStream":Ljava/io/OutputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/InputStream;
    .restart local v5    # "fis":Ljava/io/InputStream;
    goto :goto_7

    .line 493
    .local v5, "fis":Ljava/io/InputStream;
    .restart local v7    # "fos":Ljava/io/OutputStream;
    .local v9, "tempOutputStream":Ljava/io/OutputStream;
    :catch_a
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    goto :goto_1

    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fis":Ljava/io/InputStream;
    .restart local v6    # "fis":Ljava/io/InputStream;
    :catch_b
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/InputStream;
    .local v5, "fis":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private encryptStream(Ljava/io/OutputStream;I)Ljava/io/OutputStream;
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 532
    iget-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 533
    .local v0, "iv":[B
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 534
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 535
    .local v1, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 536
    if-ne p2, v4, :cond_1

    .line 537
    invoke-direct {p0}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->generateEncryptSalt()[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mSalt:[B

    .line 538
    iget-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mSalt:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 539
    invoke-direct {p0}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 543
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, v4, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 544
    new-instance v2, Ljavax/crypto/CipherOutputStream;

    iget-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2

    .line 540
    :cond_1
    if-nez p2, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0
.end method

.method private generateEncryptSalt()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 442
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 443
    .local v1, "sr":Ljava/security/SecureRandom;
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 444
    .local v0, "salt":[B
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 446
    return-object v0
.end method

.method private generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 458
    const/16 v1, 0x3e8

    .line 459
    .local v1, "iterationCount":I
    const/16 v4, 0x100

    .line 460
    .local v4, "keyLength":I
    iget-object v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->securityPassword:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 462
    .local v0, "chars":[C
    const-string/jumbo v6, "PBKDF2WithHmacSHA1"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 463
    .local v3, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mSalt:[B

    invoke-direct {v5, v0, v6, v1, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 464
    .local v5, "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 465
    .local v2, "key":Ljavax/crypto/SecretKey;
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    const-string/jumbo v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v6
.end method

.method private generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 427
    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 428
    .local v0, "digest":Ljava/security/MessageDigest;
    iget-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->securityPassword:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 429
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 430
    .local v1, "keyBytes":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 432
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method private streamCrypt(Ljava/lang/String;)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 407
    if-nez p1, :cond_0

    .line 408
    const-string/jumbo v2, "KiesLocationReceiver"

    const-string/jumbo v3, "security password is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-void

    .line 411
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->securityPassword:Ljava/lang/String;

    .line 412
    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 413
    .local v0, "digest":Ljava/security/MessageDigest;
    iget-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->securityPassword:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 414
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 415
    .local v1, "keyBytes":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 416
    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    .line 417
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 406
    return-void
.end method
