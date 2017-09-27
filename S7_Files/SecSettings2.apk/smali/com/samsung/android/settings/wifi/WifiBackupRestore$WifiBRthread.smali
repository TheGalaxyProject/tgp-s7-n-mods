.class Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;
.super Ljava/lang/Object;
.source "WifiBackupRestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiBackupRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiBRthread"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mHotspotEnabled:Z

.field mIntent:Landroid/content/Intent;

.field mWifiEnabled:Z

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

.field wm:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiBackupRestore;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    .line 186
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    .line 184
    return-void
.end method

.method private getModelName()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 530
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 533
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 534
    .local v0, "len":I
    if-le v0, v4, :cond_0

    const-string/jumbo v2, "SAMSUNG-"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 535
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 537
    :cond_0
    return-object v1
.end method


# virtual methods
.method CheckWifiState()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 395
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    if-nez v4, :cond_0

    .line 396
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    .line 397
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    .line 398
    .local v2, "isWifiEnabled":Z
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    .line 399
    .local v1, "isHotspotEnabled":Z
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mWifiEnabled:Z

    .line 400
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mHotspotEnabled:Z

    .line 401
    const/4 v3, 0x0

    .line 402
    .local v3, "loopTimeout":I
    if-nez v2, :cond_4

    .line 403
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 404
    :cond_1
    if-nez v2, :cond_2

    .line 406
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 407
    add-int/lit8 v3, v3, 0x1

    .line 408
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 409
    const/16 v4, 0xa

    if-le v3, v4, :cond_1

    .line 417
    :cond_2
    if-eqz v2, :cond_3

    .line 418
    const-string/jumbo v4, "WifiBackupRestore"

    const-string/jumbo v5, ">>>>> WIFI ON <<<<<"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return v7

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 414
    return v6

    .line 421
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const-string/jumbo v4, "WifiBackupRestore"

    const-string/jumbo v5, ">>>>> Failed to WIFI ON <<<<<"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return v6

    .line 425
    :cond_4
    return v7
.end method

.method public decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 642
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    const-string/jumbo v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->-set0(Lcom/samsung/android/settings/wifi/WifiBackupRestore;Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;

    .line 644
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->-get0(Lcom/samsung/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 645
    .local v0, "iv":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 646
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 648
    .local v1, "ivSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    iget v2, v2, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mSecurityLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 649
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    const/16 v3, 0x10

    new-array v3, v3, [B

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->-set1(Lcom/samsung/android/settings/wifi/WifiBackupRestore;[B)[B

    .line 650
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->-get2(Lcom/samsung/android/settings/wifi/WifiBackupRestore;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 651
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->-set2(Lcom/samsung/android/settings/wifi/WifiBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    .line 657
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->-get0(Lcom/samsung/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->-get3(Lcom/samsung/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 658
    new-instance v2, Ljavax/crypto/CipherInputStream;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->-get0(Lcom/samsung/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v2

    .line 653
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->-set2(Lcom/samsung/android/settings/wifi/WifiBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0
.end method

.method encrypt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .param p1, "inFile"    # Ljava/lang/String;
    .param p2, "outFile"    # Ljava/lang/String;

    .prologue
    .line 569
    const/4 v8, 0x0

    .line 570
    .local v8, "is":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 571
    .local v10, "os":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 572
    .local v3, "fiTemp":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 573
    .local v5, "foTemp":Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    .line 576
    .local v13, "ret":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    iget v14, v14, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mOption:I

    if-nez v14, :cond_5

    .line 577
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    .end local v8    # "is":Ljava/io/InputStream;
    .local v9, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 579
    .local v6, "foTemp":Ljava/io/FileOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v5    # "foTemp":Ljava/io/FileOutputStream;
    move-result-object v10

    .local v10, "os":Ljava/io/OutputStream;
    move-object v5, v6

    .end local v6    # "foTemp":Ljava/io/FileOutputStream;
    .local v5, "foTemp":Ljava/io/FileOutputStream;
    move-object v8, v9

    .line 585
    .end local v3    # "fiTemp":Ljava/io/FileInputStream;
    .end local v5    # "foTemp":Ljava/io/FileOutputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "os":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    const/4 v12, 0x0

    .line 586
    .local v12, "readcount":I
    const/16 v14, 0x400

    :try_start_3
    new-array v1, v14, [B

    .line 587
    .local v1, "buffer":[B
    :goto_1
    if-eqz v8, :cond_6

    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v8, v1, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_6

    .line 588
    const/4 v14, 0x0

    invoke-virtual {v10, v1, v14, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 590
    .end local v1    # "buffer":[B
    .end local v12    # "readcount":I
    :catch_0
    move-exception v2

    .line 591
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string/jumbo v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "error : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 592
    const/4 v13, -0x1

    .line 595
    if-eqz v10, :cond_1

    .line 596
    :try_start_5
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 597
    :cond_1
    if-eqz v5, :cond_2

    .line 598
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 599
    :cond_2
    if-eqz v8, :cond_3

    .line 600
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 601
    :cond_3
    if-eqz v3, :cond_4

    .line 602
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 608
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    return v13

    .line 580
    .restart local v3    # "fiTemp":Ljava/io/FileInputStream;
    .local v5, "foTemp":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    .local v10, "os":Ljava/io/OutputStream;
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    iget v14, v14, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mOption:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 581
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 582
    .local v4, "fiTemp":Ljava/io/FileInputStream;
    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .end local v3    # "fiTemp":Ljava/io/FileInputStream;
    move-result-object v8

    .line 583
    .local v8, "is":Ljava/io/InputStream;
    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .local v11, "os":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "fiTemp":Ljava/io/FileInputStream;
    .local v3, "fiTemp":Ljava/io/FileInputStream;
    move-object v10, v11

    .end local v11    # "os":Ljava/io/OutputStream;
    .local v10, "os":Ljava/io/OutputStream;
    goto :goto_0

    .line 595
    .end local v3    # "fiTemp":Ljava/io/FileInputStream;
    .end local v5    # "foTemp":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v10    # "os":Ljava/io/OutputStream;
    .restart local v1    # "buffer":[B
    .restart local v12    # "readcount":I
    :cond_6
    if-eqz v10, :cond_7

    .line 596
    :try_start_8
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 597
    :cond_7
    if-eqz v5, :cond_8

    .line 598
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 599
    :cond_8
    if-eqz v8, :cond_9

    .line 600
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 601
    :cond_9
    if-eqz v3, :cond_4

    .line 602
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 603
    :catch_1
    move-exception v7

    .line 604
    .local v7, "ioe":Ljava/io/IOException;
    const-string/jumbo v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "ioexception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    .end local v1    # "buffer":[B
    .end local v12    # "readcount":I
    :goto_4
    const/4 v13, -0x1

    goto :goto_3

    .line 603
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 604
    .restart local v7    # "ioe":Ljava/io/IOException;
    const-string/jumbo v14, "WifiBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "ioexception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 593
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 595
    :goto_5
    if-eqz v10, :cond_a

    .line 596
    :try_start_9
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 597
    :cond_a
    if-eqz v5, :cond_b

    .line 598
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 599
    :cond_b
    if-eqz v8, :cond_c

    .line 600
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 601
    :cond_c
    if-eqz v3, :cond_d

    .line 602
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 593
    :cond_d
    :goto_6
    throw v14

    .line 603
    :catch_3
    move-exception v7

    .line 604
    .restart local v7    # "ioe":Ljava/io/IOException;
    const-string/jumbo v15, "WifiBackupRestore"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "ioexception "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v13, -0x1

    goto :goto_6

    .line 593
    .end local v7    # "ioe":Ljava/io/IOException;
    .local v3, "fiTemp":Ljava/io/FileInputStream;
    .restart local v5    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    .local v10, "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v14

    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto :goto_5

    .end local v5    # "foTemp":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v6    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v14

    move-object v5, v6

    .end local v6    # "foTemp":Ljava/io/FileOutputStream;
    .local v5, "foTemp":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto :goto_5

    .end local v3    # "fiTemp":Ljava/io/FileInputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v4    # "fiTemp":Ljava/io/FileInputStream;
    .local v5, "foTemp":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v14

    move-object v3, v4

    .end local v4    # "fiTemp":Ljava/io/FileInputStream;
    .local v3, "fiTemp":Ljava/io/FileInputStream;
    goto :goto_5

    .line 590
    .local v3, "fiTemp":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto/16 :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "foTemp":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v6    # "foTemp":Ljava/io/FileOutputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "foTemp":Ljava/io/FileOutputStream;
    .local v5, "foTemp":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto/16 :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fiTemp":Ljava/io/FileInputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v4    # "fiTemp":Ljava/io/FileInputStream;
    .local v5, "foTemp":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "fiTemp":Ljava/io/FileInputStream;
    .local v3, "fiTemp":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 621
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    const-string/jumbo v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->-set0(Lcom/samsung/android/settings/wifi/WifiBackupRestore;Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;

    .line 624
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->-get0(Lcom/samsung/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 625
    .local v0, "iv":[B
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 626
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 627
    .local v1, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 629
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    iget v2, v2, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mSecurityLevel:I

    if-ne v2, v4, :cond_0

    .line 630
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->generateEncryptSalt()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->-set1(Lcom/samsung/android/settings/wifi/WifiBackupRestore;[B)[B

    .line 631
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->-get2(Lcom/samsung/android/settings/wifi/WifiBackupRestore;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 632
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->-set2(Lcom/samsung/android/settings/wifi/WifiBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    .line 637
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->-get0(Lcom/samsung/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->-get3(Lcom/samsung/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 638
    new-instance v2, Ljavax/crypto/CipherOutputStream;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->-get0(Lcom/samsung/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2

    .line 634
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->-set2(Lcom/samsung/android/settings/wifi/WifiBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0
.end method

.method public generateEncryptSalt()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 663
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 664
    .local v1, "sr":Ljava/security/SecureRandom;
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 665
    .local v0, "salt":[B
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 667
    return-object v0
.end method

.method public generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 673
    const/16 v1, 0x3e8

    .line 674
    .local v1, "iterationCount":I
    const/16 v4, 0x100

    .line 675
    .local v4, "keyLength":I
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 677
    .local v0, "chars":[C
    const-string/jumbo v6, "PBKDF2WithHmacSHA1"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 678
    .local v3, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->-get2(Lcom/samsung/android/settings/wifi/WifiBackupRestore;)[B

    move-result-object v6

    invoke-direct {v5, v0, v6, v1, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 679
    .local v5, "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 681
    .local v2, "key":Ljavax/crypto/SecretKey;
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    const-string/jumbo v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v6
.end method

.method public generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 612
    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 613
    .local v0, "digest":Ljava/security/MessageDigest;
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mSessionKey:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 614
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 615
    .local v1, "keyBytes":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 617
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method getFileSize(Ljava/lang/String;)J
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 525
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 526
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    return-wide v2
.end method

.method makeXML(Ljava/lang/String;)I
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 428
    const/4 v4, 0x0

    .line 429
    .local v4, "writer":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 432
    .local v2, "ret":I
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 433
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "wifi_wpaconf.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 434
    .local v6, "xmlPath":Ljava/lang/String;
    new-instance v5, Ljava/io/FileWriter;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    .end local v4    # "writer":Ljava/io/FileWriter;
    .local v5, "writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 437
    const-string/jumbo v7, "UTF-8"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 438
    const-string/jumbo v7, ""

    const-string/jumbo v8, "Wi-Fi"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    const-string/jumbo v7, ""

    const-string/jumbo v8, "model"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->getModelName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 442
    const-string/jumbo v7, ""

    const-string/jumbo v8, "model"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 444
    const-string/jumbo v7, ""

    const-string/jumbo v8, "conf"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 445
    const-string/jumbo v7, "wpa_supplicant.conf"

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 446
    const-string/jumbo v7, ""

    const-string/jumbo v8, "conf"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 448
    const-string/jumbo v7, ""

    const-string/jumbo v8, "Wi-Fi"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 449
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 455
    if-eqz v5, :cond_0

    .line 456
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v4, v5

    .line 462
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "writer":Ljava/io/FileWriter;
    .end local v6    # "xmlPath":Ljava/lang/String;
    :cond_1
    :goto_1
    return v2

    .line 457
    .restart local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v5    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "xmlPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 459
    const/4 v2, -0x1

    goto :goto_0

    .line 450
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "writer":Ljava/io/FileWriter;
    .end local v6    # "xmlPath":Ljava/lang/String;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v1

    .line 451
    .end local v4    # "writer":Ljava/io/FileWriter;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v7, "WifiBackupRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "makeXML exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 452
    const/4 v2, -0x1

    .line 455
    if-eqz v4, :cond_1

    .line 456
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 457
    :catch_2
    move-exception v0

    .line 458
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 459
    const/4 v2, -0x1

    goto :goto_1

    .line 453
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 455
    :goto_3
    if-eqz v4, :cond_2

    .line 456
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 453
    :cond_2
    :goto_4
    throw v7

    .line 457
    :catch_3
    move-exception v0

    .line 458
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 459
    const/4 v2, -0x1

    goto :goto_4

    .line 453
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v5    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "xmlPath":Ljava/lang/String;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "writer":Ljava/io/FileWriter;
    .local v4, "writer":Ljava/io/FileWriter;
    goto :goto_3

    .line 450
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v5    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public permissionCheck()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 685
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->-get1()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 686
    .local v0, "permission":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 687
    return v2

    .line 685
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 690
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method readXML(Ljava/lang/String;)I
    .locals 16
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 466
    const/4 v11, 0x0

    .line 467
    .local v11, "ret":I
    const/4 v5, 0x0

    .line 469
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 470
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 471
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 473
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/io/FileReader;

    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "wifi_wpaconf.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 476
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 477
    .local v9, "parserEvent":I
    const/4 v7, 0x0

    .line 479
    .local v7, "initem":Z
    const-string/jumbo v12, ""

    .line 480
    .local v12, "sTagName":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 482
    .local v2, "eTagName":Ljava/lang/String;
    :goto_0
    const/4 v13, 0x1

    if-eq v9, v13, :cond_7

    .line 483
    const/4 v13, 0x2

    if-ne v9, v13, :cond_2

    .line 484
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 485
    const-string/jumbo v13, "model"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string/jumbo v13, "conf"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 486
    :cond_0
    const/4 v7, 0x1

    .line 505
    :cond_1
    :goto_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    goto :goto_0

    .line 488
    :cond_2
    const/4 v13, 0x4

    if-ne v9, v13, :cond_5

    .line 489
    if-eqz v7, :cond_4

    const-string/jumbo v13, "model"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 490
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->xmlModel:Ljava/lang/String;

    .line 491
    const-string/jumbo v13, "WifiBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[readXML] model : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    iget-object v15, v15, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->xmlModel:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 507
    .end local v2    # "eTagName":Ljava/lang/String;
    .end local v7    # "initem":Z
    .end local v9    # "parserEvent":I
    .end local v12    # "sTagName":Ljava/lang/String;
    :catch_0
    move-exception v10

    .local v10, "re":Ljava/lang/RuntimeException;
    move-object v5, v6

    .line 508
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_2
    :try_start_2
    const-string/jumbo v13, "WifiBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "runtimeException "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 509
    const/4 v11, -0x1

    .line 515
    if-eqz v5, :cond_3

    .line 516
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 521
    .end local v10    # "re":Ljava/lang/RuntimeException;
    :cond_3
    :goto_3
    return v11

    .line 492
    .restart local v2    # "eTagName":Ljava/lang/String;
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v7    # "initem":Z
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "parserEvent":I
    .restart local v12    # "sTagName":Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_1

    :try_start_4
    const-string/jumbo v13, "conf"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 493
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->xmlConf:Ljava/lang/String;

    .line 494
    const-string/jumbo v13, "WifiBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[readXML] xmlConf : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    iget-object v15, v15, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->xmlConf:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    .line 510
    .end local v2    # "eTagName":Ljava/lang/String;
    .end local v7    # "initem":Z
    .end local v9    # "parserEvent":I
    .end local v12    # "sTagName":Ljava/lang/String;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v5, v6

    .line 511
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_4
    :try_start_5
    const-string/jumbo v13, "WifiBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "read XML Error "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 512
    const/4 v11, -0x1

    .line 515
    if-eqz v5, :cond_3

    .line 516
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 517
    :catch_2
    move-exception v4

    .line 518
    .local v4, "fe":Ljava/lang/Exception;
    return v11

    .line 496
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "fe":Ljava/lang/Exception;
    .restart local v2    # "eTagName":Ljava/lang/String;
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v7    # "initem":Z
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "parserEvent":I
    .restart local v12    # "sTagName":Ljava/lang/String;
    :cond_5
    const/4 v13, 0x3

    if-ne v9, v13, :cond_1

    .line 497
    :try_start_7
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 498
    if-eqz v7, :cond_6

    const-string/jumbo v13, "model"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 499
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 500
    :cond_6
    if-eqz v7, :cond_1

    const-string/jumbo v13, "conf"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v13

    if-eqz v13, :cond_1

    .line 501
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 515
    :cond_7
    if-eqz v6, :cond_8

    .line 516
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_8
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    goto/16 :goto_3

    .line 517
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_3
    move-exception v4

    .line 518
    .restart local v4    # "fe":Ljava/lang/Exception;
    return v11

    .line 517
    .end local v2    # "eTagName":Ljava/lang/String;
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "fe":Ljava/lang/Exception;
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v7    # "initem":Z
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "parserEvent":I
    .end local v12    # "sTagName":Ljava/lang/String;
    .restart local v10    # "re":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v4

    .line 518
    .restart local v4    # "fe":Ljava/lang/Exception;
    return v11

    .line 513
    .end local v4    # "fe":Ljava/lang/Exception;
    .end local v10    # "re":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v13

    .line 515
    :goto_5
    if-eqz v5, :cond_9

    .line 516
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 513
    :cond_9
    throw v13

    .line 517
    :catch_5
    move-exception v4

    .line 518
    .restart local v4    # "fe":Ljava/lang/Exception;
    return v11

    .line 513
    .end local v4    # "fe":Ljava/lang/Exception;
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v13

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .line 507
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v5, "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v10

    .restart local v10    # "re":Ljava/lang/RuntimeException;
    goto/16 :goto_2

    .line 510
    .end local v10    # "re":Ljava/lang/RuntimeException;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_4
.end method

.method public run()V
    .locals 28

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 191
    const-string/jumbo v24, "WifiBackupRestore"

    const-string/jumbo v25, "intent is null"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void

    .line 195
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "com.sec.android.intent.action.REQUEST_BACKUP_WIFIWPACONF"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string/jumbo v25, "SAVE_PATH"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 197
    .local v21, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string/jumbo v25, "ACTION"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 198
    .local v6, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    const-string/jumbo v26, "SESSION_KEY"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mSessionKey:Ljava/lang/String;

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    const-string/jumbo v26, "SOURCE"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    const-string/jumbo v26, "EXPORT_SESSION_TIME"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mExportSessionTime:Ljava/lang/String;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    const-string/jumbo v26, "SECURITY_LEVEL"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mSecurityLevel:I

    .line 204
    const-string/jumbo v24, "WifiBackupRestore"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[BACKUP] path : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", action : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", mSource : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mOption:I

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->permissionCheck()Z

    move-result v24

    if-nez v24, :cond_1

    .line 209
    const/16 v24, 0x1

    const/16 v25, 0x4

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    .line 210
    return-void

    .line 213
    :cond_1
    if-nez v6, :cond_d

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->CheckWifiState()I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 215
    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    .line 216
    return-void

    .line 220
    :cond_2
    const-string/jumbo v24, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->getFileSize(Ljava/lang/String;)J

    move-result-wide v12

    .line 221
    .local v12, "confSize":J
    const-wide/16 v24, 0x0

    cmp-long v24, v12, v24

    if-nez v24, :cond_3

    .line 222
    const-string/jumbo v24, "WifiBackupRestore"

    const-string/jumbo v25, "There is no conf file"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    .line 224
    return-void

    .line 227
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v10

    .line 228
    .local v10, "cn":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v10, :cond_4

    if-eqz v10, :cond_5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v24

    if-nez v24, :cond_5

    .line 229
    :cond_4
    const-string/jumbo v24, "WifiBackupRestore"

    const-string/jumbo v25, "There is no networks to backup"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    .line 231
    return-void

    .line 237
    :cond_5
    :try_start_0
    new-instance v23, Landroid/os/StatFs;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 238
    .local v23, "stat":Landroid/os/StatFs;
    if-nez v23, :cond_6

    .line 239
    const-string/jumbo v24, "WifiBackupRestore"

    const-string/jumbo v25, "checking memory fail"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    return-void

    .line 243
    .end local v23    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v15

    .line 244
    .local v15, "e":Ljava/lang/Exception;
    const-string/jumbo v24, "WifiBackupRestore"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Exception : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    .line 246
    return-void

    .line 248
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v23    # "stat":Landroid/os/StatFs;
    :cond_6
    invoke-virtual/range {v23 .. v23}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v24

    move/from16 v0, v24

    int-to-long v8, v0

    .line 249
    .local v8, "availableBlocks":J
    invoke-virtual/range {v23 .. v23}, Landroid/os/StatFs;->getBlockSize()I

    move-result v24

    move/from16 v0, v24

    int-to-long v4, v0

    .line 250
    .local v4, "BlockSizeInBytes":J
    mul-long v18, v8, v4

    .line 251
    .local v18, "freeSpaceInBytes":J
    cmp-long v24, v18, v12

    if-gez v24, :cond_8

    .line 252
    const-string/jumbo v24, "WifiBackupRestore"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "freeSpaceInBytes : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", confSize : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    long-to-int v0, v12

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    .line 189
    .end local v4    # "BlockSizeInBytes":J
    .end local v6    # "action":I
    .end local v8    # "availableBlocks":J
    .end local v10    # "cn":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v12    # "confSize":J
    .end local v18    # "freeSpaceInBytes":J
    .end local v21    # "path":Ljava/lang/String;
    .end local v23    # "stat":Landroid/os/StatFs;
    :cond_7
    :goto_0
    return-void

    .line 256
    .restart local v4    # "BlockSizeInBytes":J
    .restart local v6    # "action":I
    .restart local v8    # "availableBlocks":J
    .restart local v10    # "cn":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v12    # "confSize":J
    .restart local v18    # "freeSpaceInBytes":J
    .restart local v21    # "path":Ljava/lang/String;
    .restart local v23    # "stat":Landroid/os/StatFs;
    :cond_8
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    .line 257
    .local v20, "msg":Landroid/os/Message;
    const/16 v24, 0x3d

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->what:I

    .line 259
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v7, "args":Landroid/os/Bundle;
    const-string/jumbo v24, "OPTION"

    const/16 v25, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    const-string/jumbo v24, "PATH"

    const-string/jumbo v25, "/data/misc/wifi/temp.conf"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string/jumbo v24, "IGNORE_SUPPORT_FEATURE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->isIgnoreSupportFeature:Z

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    move-object/from16 v0, v20

    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v24

    if-nez v24, :cond_9

    .line 266
    const-string/jumbo v24, "WifiBackupRestore"

    const-string/jumbo v25, "BACK UP !!!!!!!!!!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string/jumbo v24, "/data/misc/wifi/temp.conf"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "wpa_supplicant.conf"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 275
    .local v22, "ret":I
    const/16 v24, -0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 276
    const-string/jumbo v24, "WifiBackupRestore"

    const-string/jumbo v25, "encrypt fail"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    .line 278
    return-void

    .line 268
    .end local v22    # "ret":I
    :cond_9
    const-string/jumbo v24, "WifiBackupRestore"

    const-string/jumbo v25, "Failed to write networks"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    .line 270
    return-void

    .line 281
    .restart local v22    # "ret":I
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->makeXML(Ljava/lang/String;)I

    move-result v22

    .line 282
    const/16 v24, -0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 283
    const-string/jumbo v24, "WifiBackupRestore"

    const-string/jumbo v25, "makeXML fail"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    .line 285
    return-void

    .line 289
    :cond_b
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 290
    .local v14, "deleteMsg":Landroid/os/Message;
    const/16 v24, 0x105

    move/from16 v0, v24

    iput v0, v14, Landroid/os/Message;->what:I

    .line 291
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v11, "deleteArgs":Landroid/os/Bundle;
    const-string/jumbo v24, "PATH"

    const-string/jumbo v25, "/data/misc/wifi/temp.conf"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iput-object v11, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v24

    if-nez v24, :cond_c

    .line 296
    const-string/jumbo v24, "WifiBackupRestore"

    const-string/jumbo v25, "Delete temp.conf file successful."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_1
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 298
    :cond_c
    const-string/jumbo v24, "WifiBackupRestore"

    const-string/jumbo v25, "Failed to delete temp.conf"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 303
    .end local v4    # "BlockSizeInBytes":J
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v8    # "availableBlocks":J
    .end local v10    # "cn":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v11    # "deleteArgs":Landroid/os/Bundle;
    .end local v12    # "confSize":J
    .end local v14    # "deleteMsg":Landroid/os/Message;
    .end local v18    # "freeSpaceInBytes":J
    .end local v20    # "msg":Landroid/os/Message;
    .end local v22    # "ret":I
    .end local v23    # "stat":Landroid/os/StatFs;
    :cond_d
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v6, v0, :cond_7

    .line 306
    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 308
    .end local v6    # "action":I
    .end local v21    # "path":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "com.sec.android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string/jumbo v25, "SAVE_PATH"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 310
    .restart local v21    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string/jumbo v25, "ACTION"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 311
    .restart local v6    # "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    const-string/jumbo v26, "SESSION_KEY"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mSessionKey:Ljava/lang/String;

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    const-string/jumbo v26, "SOURCE"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    const-string/jumbo v26, "SECURITY_LEVEL"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mSecurityLevel:I

    .line 316
    const-string/jumbo v24, "WifiBackupRestore"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[RESTORE] path : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", action : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", mSource : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mOption:I

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->permissionCheck()Z

    move-result v24

    if-nez v24, :cond_f

    .line 321
    const/16 v24, 0x1

    const/16 v25, 0x4

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    .line 322
    return-void

    .line 325
    :cond_f
    if-nez v6, :cond_16

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->CheckWifiState()I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    .line 327
    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    .line 328
    return-void

    .line 332
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->getModelName()Ljava/lang/String;

    move-result-object v17

    .line 333
    .local v17, "modelName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->readXML(Ljava/lang/String;)I

    move-result v22

    .line 334
    .restart local v22    # "ret":I
    const/16 v24, -0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 335
    const-string/jumbo v24, "WifiBackupRestore"

    const-string/jumbo v25, "xml parsing error"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    .line 337
    return-void

    .line 340
    :cond_11
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->xmlConf:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->getFileSize(Ljava/lang/String;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-lez v24, :cond_14

    .line 342
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->xmlConf:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "/data/misc/wifi_share_profile/temp.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 343
    const/16 v24, -0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 344
    const-string/jumbo v24, "WifiBackupRestore"

    const-string/jumbo v25, "decrypt fail"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    .line 346
    return-void

    .line 349
    :cond_12
    new-instance v16, Ljava/io/File;

    const-string/jumbo v24, "/data/misc/wifi_share_profile/temp.conf"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    .local v16, "f":Ljava/io/File;
    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 351
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    .line 352
    .restart local v20    # "msg":Landroid/os/Message;
    const/16 v24, 0x3d

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->what:I

    .line 354
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 355
    .restart local v7    # "args":Landroid/os/Bundle;
    const-string/jumbo v24, "OPTION"

    const/16 v25, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    const-string/jumbo v24, "PATH"

    const-string/jumbo v25, "/data/misc/wifi_share_profile/temp.conf"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string/jumbo v24, "IGNORE_SUPPORT_FEATURE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->isIgnoreSupportFeature:Z

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 358
    move-object/from16 v0, v20

    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v24

    if-nez v24, :cond_13

    .line 361
    const-string/jumbo v24, "WifiBackupRestore"

    const-string/jumbo v25, "RESTORE !!!!!!!!!! [Not replace]"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 374
    .restart local v14    # "deleteMsg":Landroid/os/Message;
    const/16 v24, 0x105

    move/from16 v0, v24

    iput v0, v14, Landroid/os/Message;->what:I

    .line 375
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 376
    .restart local v11    # "deleteArgs":Landroid/os/Bundle;
    const-string/jumbo v24, "PATH"

    const-string/jumbo v25, "/data/misc/wifi_share_profile/temp.conf"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iput-object v11, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v24

    if-nez v24, :cond_15

    .line 380
    const-string/jumbo v24, "WifiBackupRestore"

    const-string/jumbo v25, "Delete temp.conf file successful."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :goto_2
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 363
    .end local v11    # "deleteArgs":Landroid/os/Bundle;
    .end local v14    # "deleteMsg":Landroid/os/Message;
    :cond_13
    const-string/jumbo v24, "WifiBackupRestore"

    const-string/jumbo v25, "Failed to read networks"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    .line 365
    return-void

    .line 368
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v16    # "f":Ljava/io/File;
    .end local v20    # "msg":Landroid/os/Message;
    :cond_14
    const-string/jumbo v24, "WifiBackupRestore"

    const-string/jumbo v25, "can\'t read file"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    .line 370
    return-void

    .line 382
    .restart local v7    # "args":Landroid/os/Bundle;
    .restart local v11    # "deleteArgs":Landroid/os/Bundle;
    .restart local v14    # "deleteMsg":Landroid/os/Message;
    .restart local v16    # "f":Ljava/io/File;
    .restart local v20    # "msg":Landroid/os/Message;
    :cond_15
    const-string/jumbo v24, "WifiBackupRestore"

    const-string/jumbo v25, "Failed to delete temp.conf"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 386
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v11    # "deleteArgs":Landroid/os/Bundle;
    .end local v14    # "deleteMsg":Landroid/os/Message;
    .end local v16    # "f":Ljava/io/File;
    .end local v17    # "modelName":Ljava/lang/String;
    .end local v20    # "msg":Landroid/os/Message;
    .end local v22    # "ret":I
    :cond_16
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v6, v0, :cond_7

    .line 389
    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_0
.end method

.method sendResponse(III)V
    .locals 5
    .param p1, "result"    # I
    .param p2, "errorCode"    # I
    .param p3, "reqSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 541
    const-string/jumbo v1, "WifiBackupRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "r:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",rs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isCanceled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mIsCanceled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mIsCanceled:Z

    if-eqz v1, :cond_0

    .line 544
    return-void

    .line 546
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 547
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    iget v1, v1, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mOption:I

    if-nez v1, :cond_3

    .line 548
    const-string/jumbo v1, "com.sec.android.intent.action.RESPONSE_BACKUP_WIFIWPACONF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const-string/jumbo v1, "EXPORT_SESSION_TIME"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mExportSessionTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    :cond_1
    :goto_0
    const-string/jumbo v1, "RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 554
    const-string/jumbo v1, "ERR_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 555
    const-string/jumbo v1, "REQ_SIZE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 556
    const-string/jumbo v1, "SOURCE"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    const-string/jumbo v1, "SmartSwitch"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 559
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 564
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mWifiEnabled:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mHotspotEnabled:Z

    if-eqz v1, :cond_5

    .line 540
    :cond_2
    :goto_2
    return-void

    .line 550
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiBackupRestore;

    iget v1, v1, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mOption:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 551
    const-string/jumbo v1, "com.sec.android.intent.action.RESPONSE_RESTORE_WIFIWPACONF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 561
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 565
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_2
.end method
