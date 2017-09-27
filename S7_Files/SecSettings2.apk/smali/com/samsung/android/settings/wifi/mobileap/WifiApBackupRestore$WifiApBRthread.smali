.class Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;
.super Ljava/lang/Object;
.source "WifiApBackupRestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiApBRthread"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mHotspotEnabled:Z

.field mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

.field wm:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    .line 201
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    .line 199
    return-void
.end method

.method private getModelName()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 698
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 701
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 702
    .local v0, "len":I
    if-le v0, v4, :cond_0

    const-string/jumbo v2, "SAMSUNG-"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 703
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 705
    :cond_0
    const-string/jumbo v2, "WifiApBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "model name.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    return-object v1
.end method

.method private loadWifiApConfig(Ljava/lang/String;)Z
    .locals 14
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0xe

    const/16 v11, 0x8

    const/4 v12, 0x3

    .line 471
    const-string/jumbo v9, "WifiApBackupRestore"

    const-string/jumbo v10, "loadWifiApConfig.."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v5, 0x0

    .line 473
    .local v5, "in":Ljava/io/DataInputStream;
    const/4 v7, 0x0

    .line 474
    .local v7, "result":Z
    const/4 v8, 0x3

    .line 477
    .local v8, "version":I
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 478
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x0

    .line 479
    .local v2, "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 480
    .local v2, "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 481
    .local v6, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    .end local v5    # "in":Ljava/io/DataInputStream;
    move-result v8

    .line 482
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 483
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v9

    iput-boolean v9, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 484
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 485
    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-le v9, v13, :cond_0

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-boolean v9, v9, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->support5G:Z

    if-eqz v9, :cond_9

    .line 488
    :cond_0
    :goto_0
    if-ne v8, v12, :cond_1

    .line 489
    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-ge v9, v13, :cond_b

    .line 490
    const/4 v9, 0x0

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 494
    :cond_1
    :goto_1
    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    .line 495
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 497
    :cond_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 498
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 499
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v9, v9, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->currentOS:I

    const/16 v10, 0x15

    if-le v9, v10, :cond_d

    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-eqz v9, :cond_3

    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-le v9, v11, :cond_d

    .line 500
    :cond_3
    const-string/jumbo v9, "TMO"

    sget-object v10, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 499
    if-eqz v9, :cond_d

    .line 501
    const/16 v9, 0x8

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 504
    :cond_4
    :goto_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    .line 505
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    .line 506
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    .line 507
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    .line 508
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 509
    .local v0, "authType":I
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v0}, Ljava/util/BitSet;->set(I)V

    .line 510
    if-eqz v0, :cond_5

    .line 511
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 513
    :cond_5
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v9, v9, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlModel:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getModelName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 514
    const-string/jumbo v9, "WifiApBackupRestore"

    const-string/jumbo v10, "Both models are same"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v7

    .line 517
    .local v7, "result":Z
    const-string/jumbo v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Result of setWifiApConfiguration.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    if-eqz v6, :cond_7

    .line 526
    :try_start_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_7
    :goto_3
    move-object v5, v6

    .line 532
    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .end local v7    # "result":Z
    :cond_8
    :goto_4
    return v7

    .line 486
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .local v7, "result":Z
    :cond_9
    :try_start_3
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 518
    .end local v7    # "result":Z
    :catch_0
    move-exception v4

    .local v4, "ignore":Ljava/io/IOException;
    move-object v5, v6

    .line 519
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "in":Ljava/io/DataInputStream;
    :goto_5
    :try_start_4
    const-string/jumbo v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadApConfigurationOldVer() : IOException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    if-ge v8, v12, :cond_a

    .line 521
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->loadApConfigurationOldVer(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v7

    .line 524
    :cond_a
    if-eqz v5, :cond_8

    .line 526
    :try_start_5
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 527
    :catch_1
    move-exception v3

    .line 528
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in loadWifiApConfig.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 492
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ignore":Ljava/io/IOException;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "result":Z
    :cond_b
    const/4 v9, 0x1

    :try_start_6
    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 523
    .end local v7    # "result":Z
    :catchall_0
    move-exception v9

    move-object v5, v6

    .line 524
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "in":Ljava/io/DataInputStream;
    :goto_6
    if-eqz v5, :cond_c

    .line 526
    :try_start_7
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 523
    :cond_c
    :goto_7
    throw v9

    .line 502
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "result":Z
    :cond_d
    :try_start_8
    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-nez v9, :cond_4

    .line 503
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 527
    .restart local v0    # "authType":I
    .local v7, "result":Z
    :catch_2
    move-exception v3

    .line 528
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in loadWifiApConfig.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 527
    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .end local v7    # "result":Z
    :catch_3
    move-exception v3

    .line 528
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception in loadWifiApConfig.."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 523
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    goto :goto_6

    .line 518
    .restart local v5    # "in":Ljava/io/DataInputStream;
    .local v7, "result":Z
    :catch_4
    move-exception v4

    .restart local v4    # "ignore":Ljava/io/IOException;
    goto/16 :goto_5
.end method


# virtual methods
.method public decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 850
    const-string/jumbo v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set0(Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;

    .line 852
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get0()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v0, v3, [B

    .line 854
    .local v0, "iv":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 855
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 857
    .local v2, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v3, v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSecurityLevel:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 858
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    const/16 v4, 0x10

    new-array v4, v4, [B

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;[B)[B

    .line 859
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 860
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    .line 866
    .local v1, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get0()Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 867
    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get0()Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v3

    .line 862
    .end local v1    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    .restart local v1    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_0
.end method

.method encrypt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .param p1, "inFile"    # Ljava/lang/String;
    .param p2, "outFile"    # Ljava/lang/String;

    .prologue
    .line 752
    const/4 v8, 0x0

    .line 753
    .local v8, "is":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 754
    .local v10, "os":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 755
    .local v3, "fiTemp":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 756
    .local v5, "foTemp":Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    .line 759
    .local v13, "ret":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v14, v14, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mOption:I

    if-nez v14, :cond_5

    .line 760
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    .end local v8    # "is":Ljava/io/InputStream;
    .local v9, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 762
    .local v6, "foTemp":Ljava/io/FileOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
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

    .line 768
    .end local v3    # "fiTemp":Ljava/io/FileInputStream;
    .end local v5    # "foTemp":Ljava/io/FileOutputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "os":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    const/4 v12, 0x0

    .line 769
    .local v12, "readcount":I
    const/16 v14, 0x400

    :try_start_3
    new-array v1, v14, [B

    .line 770
    .local v1, "buffer":[B
    :goto_1
    if-eqz v8, :cond_6

    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v8, v1, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_6

    .line 771
    const/4 v14, 0x0

    invoke-virtual {v10, v1, v14, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 773
    .end local v1    # "buffer":[B
    .end local v12    # "readcount":I
    :catch_0
    move-exception v2

    .line 774
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string/jumbo v14, "WifiApBackupRestore"

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

    .line 775
    const/4 v13, -0x1

    .line 778
    if-eqz v10, :cond_1

    .line 779
    :try_start_5
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 780
    :cond_1
    if-eqz v5, :cond_2

    .line 781
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 782
    :cond_2
    if-eqz v8, :cond_3

    .line 783
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 784
    :cond_3
    if-eqz v3, :cond_4

    .line 785
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 791
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    const-string/jumbo v14, "WifiApBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Everything OK?0:1 - ret"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    return v13

    .line 763
    .restart local v3    # "fiTemp":Ljava/io/FileInputStream;
    .local v5, "foTemp":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    .local v10, "os":Ljava/io/OutputStream;
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v14, v14, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mOption:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 764
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 765
    .local v4, "fiTemp":Ljava/io/FileInputStream;
    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .end local v3    # "fiTemp":Ljava/io/FileInputStream;
    move-result-object v8

    .line 766
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

    .line 778
    .end local v3    # "fiTemp":Ljava/io/FileInputStream;
    .end local v5    # "foTemp":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v10    # "os":Ljava/io/OutputStream;
    .restart local v1    # "buffer":[B
    .restart local v12    # "readcount":I
    :cond_6
    if-eqz v10, :cond_7

    .line 779
    :try_start_8
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 780
    :cond_7
    if-eqz v5, :cond_8

    .line 781
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 782
    :cond_8
    if-eqz v8, :cond_9

    .line 783
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 784
    :cond_9
    if-eqz v3, :cond_4

    .line 785
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 786
    :catch_1
    move-exception v7

    .line 787
    .local v7, "ioe":Ljava/io/IOException;
    const-string/jumbo v14, "WifiApBackupRestore"

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

    .line 788
    .end local v1    # "buffer":[B
    .end local v12    # "readcount":I
    :goto_4
    const/4 v13, -0x1

    goto :goto_3

    .line 786
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 787
    .restart local v7    # "ioe":Ljava/io/IOException;
    const-string/jumbo v14, "WifiApBackupRestore"

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

    .line 776
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 778
    :goto_5
    if-eqz v10, :cond_a

    .line 779
    :try_start_9
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 780
    :cond_a
    if-eqz v5, :cond_b

    .line 781
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 782
    :cond_b
    if-eqz v8, :cond_c

    .line 783
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 784
    :cond_c
    if-eqz v3, :cond_d

    .line 785
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 776
    :cond_d
    :goto_6
    throw v14

    .line 786
    :catch_3
    move-exception v7

    .line 787
    .restart local v7    # "ioe":Ljava/io/IOException;
    const-string/jumbo v15, "WifiApBackupRestore"

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

    .line 788
    const/4 v13, -0x1

    goto :goto_6

    .line 776
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

    .line 773
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
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 827
    const-string/jumbo v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set0(Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;

    .line 829
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get0()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v0, v3, [B

    .line 830
    .local v0, "iv":[B
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 831
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 834
    .local v2, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 836
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v3, v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSecurityLevel:I

    if-ne v3, v5, :cond_0

    .line 837
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generateEncryptSalt()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;[B)[B

    .line 838
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 839
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    .line 844
    .local v1, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get0()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-virtual {v3, v5, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 845
    new-instance v3, Ljavax/crypto/CipherOutputStream;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get0()Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v3

    .line 841
    .end local v1    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    .restart local v1    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
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
    .line 807
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 808
    .local v0, "sr":Ljava/security/SecureRandom;
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;[B)[B

    .line 809
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 810
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v1

    return-object v1
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
    .line 814
    const/16 v1, 0x3e8

    .line 815
    .local v1, "iterationCount":I
    const/16 v4, 0x100

    .line 816
    .local v4, "keyLength":I
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 818
    .local v0, "chars":[C
    const-string/jumbo v6, "PBKDF2WithHmacSHA1"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 819
    .local v3, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v6

    invoke-direct {v5, v0, v6, v1, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 820
    .local v5, "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 822
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

    .line 797
    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 798
    .local v0, "digest":Ljava/security/MessageDigest;
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSessionKey:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 799
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 800
    .local v1, "keyBytes":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 802
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set1(Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    .line 803
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get1()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    return-object v2
.end method

.method getFileSize(Ljava/lang/String;)J
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 693
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    return-wide v2
.end method

.method loadApConfigurationOldVer(Ljava/lang/String;)Z
    .locals 14
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x8

    .line 536
    const/4 v5, 0x0

    .line 537
    .local v5, "in":Ljava/io/DataInputStream;
    const/4 v8, 0x0

    .line 540
    .local v8, "result":Z
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 541
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x0

    .line 542
    .local v2, "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 543
    .local v2, "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/BufferedInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 544
    .local v6, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    .end local v5    # "in":Ljava/io/DataInputStream;
    move-result v9

    .line 545
    .local v9, "version":I
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 546
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v10

    iput-boolean v10, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 547
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 548
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    const/16 v11, 0xe

    if-le v10, v11, :cond_0

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-boolean v10, v10, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->support5G:Z

    if-eqz v10, :cond_7

    .line 551
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 552
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 553
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v10, v10, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->currentOS:I

    const/16 v11, 0x15

    if-le v10, v11, :cond_8

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-eqz v10, :cond_1

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-le v10, v12, :cond_8

    .line 554
    :cond_1
    const-string/jumbo v10, "TMO"

    sget-object v11, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 553
    if-eqz v10, :cond_8

    .line 555
    const/16 v10, 0x8

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 558
    :cond_2
    :goto_1
    const-string/jumbo v10, "0"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 559
    .local v7, "newConfigNum":I
    const/4 v10, 0x2

    if-ne v7, v10, :cond_a

    .line 560
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    .line 561
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    .line 567
    :cond_3
    :goto_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 568
    .local v0, "authType":I
    const/4 v10, 0x1

    if-ne v0, v10, :cond_b

    .line 569
    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    .line 570
    const-string/jumbo v10, "WifiApBackupRestore"

    const-string/jumbo v11, " conf changed to wpa2 from wpa"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :goto_3
    if-eqz v0, :cond_4

    .line 575
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 577
    :cond_4
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    .line 578
    .local v8, "result":Z
    const-string/jumbo v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Result of setWifiApConfiguration from OldVer.."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    if-eqz v6, :cond_5

    .line 584
    :try_start_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_4
    move-object v5, v6

    .line 590
    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .end local v7    # "newConfigNum":I
    .end local v8    # "result":Z
    .end local v9    # "version":I
    :cond_6
    :goto_5
    return v8

    .line 549
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .local v8, "result":Z
    .restart local v9    # "version":I
    :cond_7
    :try_start_3
    iget v10, v2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 579
    .end local v8    # "result":Z
    .end local v9    # "version":I
    :catch_0
    move-exception v4

    .local v4, "ignore":Ljava/io/IOException;
    move-object v5, v6

    .line 580
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "in":Ljava/io/DataInputStream;
    :goto_6
    :try_start_4
    const-string/jumbo v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "loadApConfigurationOldVer() : IOException"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 582
    if-eqz v5, :cond_6

    .line 584
    :try_start_5
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    .line 585
    :catch_1
    move-exception v3

    .line 586
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception is.."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 556
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ignore":Ljava/io/IOException;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "result":Z
    .restart local v9    # "version":I
    :cond_8
    :try_start_6
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-nez v10, :cond_2

    .line 557
    iget v10, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 581
    .end local v8    # "result":Z
    .end local v9    # "version":I
    :catchall_0
    move-exception v10

    move-object v5, v6

    .line 582
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "in":Ljava/io/DataInputStream;
    :goto_7
    if-eqz v5, :cond_9

    .line 584
    :try_start_7
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 581
    :cond_9
    :goto_8
    throw v10

    .line 562
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "newConfigNum":I
    .restart local v8    # "result":Z
    .restart local v9    # "version":I
    :cond_a
    const/4 v10, 0x3

    if-ne v7, v10, :cond_3

    .line 563
    :try_start_8
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    .line 564
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    .line 565
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    goto/16 :goto_2

    .line 572
    .restart local v0    # "authType":I
    :cond_b
    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v10, v0}, Ljava/util/BitSet;->set(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    .line 585
    .local v8, "result":Z
    :catch_2
    move-exception v3

    .line 586
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception is.."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 585
    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "deviceConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .end local v7    # "newConfigNum":I
    .end local v8    # "result":Z
    .end local v9    # "version":I
    :catch_3
    move-exception v3

    .line 586
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "WifiApBackupRestore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception is.."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 581
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    goto :goto_7

    .line 579
    .restart local v5    # "in":Ljava/io/DataInputStream;
    .local v8, "result":Z
    :catch_4
    move-exception v4

    .restart local v4    # "ignore":Ljava/io/IOException;
    goto/16 :goto_6
.end method

.method makeXML(Ljava/lang/String;)I
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 594
    const/4 v4, 0x0

    .line 595
    .local v4, "writer":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 598
    .local v2, "ret":I
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 599
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

    .line 600
    .local v6, "xmlPath":Ljava/lang/String;
    new-instance v5, Ljava/io/FileWriter;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    .end local v4    # "writer":Ljava/io/FileWriter;
    .local v5, "writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 603
    const-string/jumbo v7, "UTF-8"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 604
    const-string/jumbo v7, ""

    const-string/jumbo v8, "Wi-Fi"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 606
    const-string/jumbo v7, ""

    const-string/jumbo v8, "model"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 607
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getModelName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 608
    const-string/jumbo v7, ""

    const-string/jumbo v8, "model"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 610
    const-string/jumbo v7, ""

    const-string/jumbo v8, "conf"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 611
    const-string/jumbo v7, "softap.conf"

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 612
    const-string/jumbo v7, ""

    const-string/jumbo v8, "conf"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 614
    const-string/jumbo v7, ""

    const-string/jumbo v8, "Wi-Fi"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 615
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 621
    if-eqz v5, :cond_0

    .line 622
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v4, v5

    .line 628
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "writer":Ljava/io/FileWriter;
    .end local v6    # "xmlPath":Ljava/lang/String;
    :cond_1
    :goto_1
    return v2

    .line 623
    .restart local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v5    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "xmlPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 625
    const/4 v2, -0x1

    goto :goto_0

    .line 616
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "writer":Ljava/io/FileWriter;
    .end local v6    # "xmlPath":Ljava/lang/String;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v1

    .line 617
    .end local v4    # "writer":Ljava/io/FileWriter;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v7, "WifiApBackupRestore"

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

    .line 618
    const/4 v2, -0x1

    .line 621
    if-eqz v4, :cond_1

    .line 622
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 623
    :catch_2
    move-exception v0

    .line 624
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 625
    const/4 v2, -0x1

    goto :goto_1

    .line 619
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 621
    :goto_3
    if-eqz v4, :cond_2

    .line 622
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 619
    :cond_2
    :goto_4
    throw v7

    .line 623
    :catch_3
    move-exception v0

    .line 624
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 625
    const/4 v2, -0x1

    goto :goto_4

    .line 619
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

    .line 616
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

    .line 743
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get2()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 744
    .local v0, "permission":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 745
    return v2

    .line 743
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 748
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method readXML(Ljava/lang/String;)I
    .locals 16
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 632
    const/4 v11, 0x0

    .line 633
    .local v11, "ret":I
    const/4 v5, 0x0

    .line 635
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 636
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 637
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 639
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

    .line 640
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 642
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 643
    .local v9, "parserEvent":I
    const/4 v7, 0x0

    .line 645
    .local v7, "initem":Z
    const-string/jumbo v12, ""

    .line 646
    .local v12, "sTagName":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 648
    .local v2, "eTagName":Ljava/lang/String;
    :goto_0
    const/4 v13, 0x1

    if-eq v9, v13, :cond_7

    .line 649
    const/4 v13, 0x2

    if-ne v9, v13, :cond_2

    .line 650
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 651
    const-string/jumbo v13, "model"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string/jumbo v13, "conf"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 652
    :cond_0
    const/4 v7, 0x1

    .line 673
    :cond_1
    :goto_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    goto :goto_0

    .line 654
    :cond_2
    const/4 v13, 0x4

    if-ne v9, v13, :cond_5

    .line 655
    if-eqz v7, :cond_4

    const-string/jumbo v13, "model"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 656
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlModel:Ljava/lang/String;

    .line 658
    const-string/jumbo v13, "WifiApBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[readXML] model : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v15, v15, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlModel:Ljava/lang/String;

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

    .line 675
    .end local v2    # "eTagName":Ljava/lang/String;
    .end local v7    # "initem":Z
    .end local v9    # "parserEvent":I
    .end local v12    # "sTagName":Ljava/lang/String;
    :catch_0
    move-exception v10

    .local v10, "re":Ljava/lang/RuntimeException;
    move-object v5, v6

    .line 676
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_2
    :try_start_2
    const-string/jumbo v13, "WifiApBackupRestore"

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

    .line 677
    const/4 v11, -0x1

    .line 683
    if-eqz v5, :cond_3

    .line 684
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 689
    .end local v10    # "re":Ljava/lang/RuntimeException;
    :cond_3
    :goto_3
    return v11

    .line 659
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

    .line 660
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlConf:Ljava/lang/String;

    .line 662
    const-string/jumbo v13, "WifiApBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[readXML] xmlConf : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v15, v15, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlConf:Ljava/lang/String;

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

    .line 678
    .end local v2    # "eTagName":Ljava/lang/String;
    .end local v7    # "initem":Z
    .end local v9    # "parserEvent":I
    .end local v12    # "sTagName":Ljava/lang/String;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v5, v6

    .line 679
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_4
    :try_start_5
    const-string/jumbo v13, "WifiApBackupRestore"

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

    .line 680
    const/4 v11, -0x1

    .line 683
    if-eqz v5, :cond_3

    .line 684
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 685
    :catch_2
    move-exception v4

    .line 686
    .local v4, "fe":Ljava/lang/Exception;
    return v11

    .line 664
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

    .line 665
    :try_start_7
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 666
    if-eqz v7, :cond_6

    const-string/jumbo v13, "model"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 667
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 668
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

    .line 669
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 683
    :cond_7
    if-eqz v6, :cond_8

    .line 684
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_8
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    goto/16 :goto_3

    .line 685
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_3
    move-exception v4

    .line 686
    .restart local v4    # "fe":Ljava/lang/Exception;
    return v11

    .line 685
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

    .line 686
    .restart local v4    # "fe":Ljava/lang/Exception;
    return v11

    .line 681
    .end local v4    # "fe":Ljava/lang/Exception;
    .end local v10    # "re":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v13

    .line 683
    :goto_5
    if-eqz v5, :cond_9

    .line 684
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 681
    :cond_9
    throw v13

    .line 685
    :catch_5
    move-exception v4

    .line 686
    .restart local v4    # "fe":Ljava/lang/Exception;
    return v11

    .line 681
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

    .line 675
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v5, "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v10

    .restart local v10    # "re":Ljava/lang/RuntimeException;
    goto/16 :goto_2

    .line 678
    .end local v10    # "re":Ljava/lang/RuntimeException;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_4
.end method

.method public run()V
    .locals 26

    .prologue
    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 206
    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "intent is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void

    .line 210
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "com.samsung.android.intent.action.REQUEST_BACKUP_HOTSPOT_SETTING"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string/jumbo v22, "SAVE_PATH"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 212
    .local v18, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string/jumbo v23, "SESSION_KEY"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSessionKey:Ljava/lang/String;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string/jumbo v23, "EXPORT_SESSION_TIME"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mExportSessionTime:Ljava/lang/String;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string/jumbo v23, "SECURITY_LEVEL"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSecurityLevel:I

    .line 217
    const-string/jumbo v21, "WifiApBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "[BACKUP] path : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", action : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", mSource : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSource:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " sessionTime : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mExportSessionTime:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " securityLevel : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSecurityLevel:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mOption:I

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->permissionCheck()Z

    move-result v21

    if-nez v21, :cond_1

    .line 222
    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "Permission Error."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/16 v21, 0x1

    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    .line 224
    return-void

    .line 227
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    move/from16 v21, v0

    if-nez v21, :cond_9

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "wifi"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    .line 232
    :cond_2
    const-string/jumbo v21, "/data/misc/wifi/softap.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getFileSize(Ljava/lang/String;)J

    move-result-wide v8

    .line 233
    .local v8, "confSize":J
    const-wide/16 v22, 0x0

    cmp-long v21, v8, v22

    if-nez v21, :cond_3

    .line 235
    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "There is no conf file"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    .line 237
    return-void

    .line 241
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v21

    if-nez v21, :cond_4

    .line 242
    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "There is no networks to backup"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    .line 244
    return-void

    .line 250
    :cond_4
    :try_start_0
    new-instance v20, Landroid/os/StatFs;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .local v20, "stat":Landroid/os/StatFs;
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v21

    move/from16 v0, v21

    int-to-long v6, v0

    .line 258
    .local v6, "availableBlocks":J
    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I

    move-result v21

    move/from16 v0, v21

    int-to-long v4, v0

    .line 259
    .local v4, "BlockSizeInBytes":J
    mul-long v14, v6, v4

    .line 260
    .local v14, "freeSpaceInBytes":J
    cmp-long v21, v14, v8

    if-gez v21, :cond_5

    .line 262
    const-string/jumbo v21, "WifiApBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "freeSpaceInBytes : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", confSize : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    long-to-int v0, v8

    move/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    .line 264
    return-void

    .line 251
    .end local v4    # "BlockSizeInBytes":J
    .end local v6    # "availableBlocks":J
    .end local v14    # "freeSpaceInBytes":J
    .end local v20    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v10

    .line 253
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v21, "WifiApBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    .line 255
    return-void

    .line 268
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v4    # "BlockSizeInBytes":J
    .restart local v6    # "availableBlocks":J
    .restart local v14    # "freeSpaceInBytes":J
    .restart local v20    # "stat":Landroid/os/StatFs;
    :cond_5
    new-instance v12, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "softap.conf"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v12, "f":Ljava/io/File;
    const-string/jumbo v21, "/data/misc/wifi/softap.conf"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "softap.conf"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 275
    .local v19, "ret":I
    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 277
    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "encrypt fail"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    .line 279
    return-void

    .line 283
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->makeXML(Ljava/lang/String;)I

    move-result v19

    .line 284
    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 286
    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "makeXML fail"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    .line 288
    return-void

    .line 290
    :cond_7
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    .line 204
    .end local v4    # "BlockSizeInBytes":J
    .end local v6    # "availableBlocks":J
    .end local v8    # "confSize":J
    .end local v12    # "f":Ljava/io/File;
    .end local v14    # "freeSpaceInBytes":J
    .end local v18    # "path":Ljava/lang/String;
    .end local v19    # "ret":I
    .end local v20    # "stat":Landroid/os/StatFs;
    :cond_8
    :goto_0
    return-void

    .line 292
    .restart local v18    # "path":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 293
    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "Action is CANCEL"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :cond_a
    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "Sending Response FAIL"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    .line 298
    return-void

    .line 300
    .end local v18    # "path":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "com.samsung.android.intent.action.REQUEST_RESTORE_HOTSPOT_SETTING"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string/jumbo v22, "SAVE_PATH"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 302
    .restart local v18    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string/jumbo v23, "SESSION_KEY"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSessionKey:Ljava/lang/String;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string/jumbo v23, "SECURITY_LEVEL"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSecurityLevel:I

    .line 305
    const-string/jumbo v21, "WifiApBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "[RESTORE] path : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", action : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", mSource : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSource:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mOption:I

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->permissionCheck()Z

    move-result v21

    if-nez v21, :cond_c

    .line 310
    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "PErmission ERROR"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/16 v21, 0x1

    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    .line 312
    return-void

    .line 315
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    move/from16 v21, v0

    if-nez v21, :cond_14

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    if-nez v21, :cond_d

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "wifi"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    .line 319
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v13

    .line 321
    .local v13, "isHotspotEnabled":Z
    if-eqz v13, :cond_f

    .line 322
    const-string/jumbo v21, "WifiApBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "setWifiApEnabled ..."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 324
    const/16 v16, 0x0

    .line 325
    .local v16, "loopTimeout":I
    :cond_e
    if-eqz v13, :cond_f

    .line 327
    const-wide/16 v22, 0x3e8

    :try_start_1
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V

    .line 328
    add-int/lit8 v16, v16, 0x1

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    .line 330
    const/16 v21, 0xa

    move/from16 v0, v16

    move/from16 v1, v21

    if-le v0, v1, :cond_e

    .line 342
    .end local v16    # "loopTimeout":I
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getModelName()Ljava/lang/String;

    move-result-object v17

    .line 343
    .local v17, "modelName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->readXML(Ljava/lang/String;)I

    move-result v19

    .line 344
    .restart local v19    # "ret":I
    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 345
    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "xml parsing error"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    .line 347
    return-void

    .line 333
    .end local v17    # "modelName":Ljava/lang/String;
    .end local v19    # "ret":I
    .restart local v16    # "loopTimeout":I
    :catch_1
    move-exception v11

    .line 334
    .local v11, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "Exception while turning off MHS"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 336
    return-void

    .line 351
    .end local v11    # "e":Ljava/lang/InterruptedException;
    .end local v16    # "loopTimeout":I
    .restart local v17    # "modelName":Ljava/lang/String;
    .restart local v19    # "ret":I
    :cond_10
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlConf:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getFileSize(Ljava/lang/String;)J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-lez v21, :cond_13

    .line 353
    new-instance v12, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "temp.conf"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .restart local v12    # "f":Ljava/io/File;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlConf:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "temp.conf"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 355
    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 357
    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "decrypt fail"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    .line 359
    return-void

    .line 362
    :cond_11
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "temp.conf"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->loadWifiApConfig(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_12

    .line 363
    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "WifiConfig loaded fail"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    .line 365
    return-void

    .line 367
    :cond_12
    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "WifiConfig loaded success"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto/16 :goto_0

    .line 371
    .end local v12    # "f":Ljava/io/File;
    :cond_13
    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "can\'t read file"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    .line 373
    return-void

    .line 378
    .end local v13    # "isHotspotEnabled":Z
    .end local v17    # "modelName":Ljava/lang/String;
    .end local v19    # "ret":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 381
    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    .line 382
    return-void
.end method

.method sendResponse(III)V
    .locals 6
    .param p1, "result"    # I
    .param p2, "errorCode"    # I
    .param p3, "reqSize"    # I

    .prologue
    const/4 v5, 0x0

    .line 711
    const-string/jumbo v2, "WifiApBackupRestore"

    const-string/jumbo v3, "sendResponse.."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string/jumbo v2, "WifiApBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "r:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",rs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",isCancelled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mIsCanceled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    sget-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mIsCanceled:Z

    if-eqz v2, :cond_0

    .line 715
    return-void

    .line 717
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 718
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mOption:I

    if-nez v2, :cond_3

    .line 719
    const-string/jumbo v2, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOTSPOT_SETTING"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const-string/jumbo v2, "EXPORT_SESSION_TIME"

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mExportSessionTime:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    :cond_1
    :goto_0
    const-string/jumbo v2, "RESULT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 725
    const-string/jumbo v2, "ERR_CODE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 726
    const-string/jumbo v2, "REQ_SIZE"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 727
    const-string/jumbo v2, "SOURCE"

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    const-string/jumbo v2, "SmartSwitch"

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 730
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 736
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    .line 737
    .local v1, "isHotspotEnabled":Z
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mHotspotEnabled:Z

    .line 738
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mHotspotEnabled:Z

    if-nez v2, :cond_2

    .line 739
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 710
    :cond_2
    return-void

    .line 721
    .end local v1    # "isHotspotEnabled":Z
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mOption:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 722
    const-string/jumbo v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 732
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method
