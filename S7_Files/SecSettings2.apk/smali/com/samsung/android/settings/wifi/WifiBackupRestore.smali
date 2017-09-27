.class public Lcom/samsung/android/settings/wifi/WifiBackupRestore;
.super Landroid/content/BroadcastReceiver;
.source "WifiBackupRestore.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;
    }
.end annotation


# static fields
.field static mIsCanceled:Z

.field private static final mPermissions:[Ljava/lang/String;


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field isIgnoreSupportFeature:Z

.field mExportSessionTime:Ljava/lang/String;

.field mOption:I

.field mSecurityLevel:I

.field mSessionKey:Ljava/lang/String;

.field mSource:Ljava/lang/String;

.field mWifiEnabledForSCloud:Z

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private salt:[B

.field private secretKey:Ljavax/crypto/spec/SecretKeySpec;

.field xmlConf:Ljava/lang/String;

.field xmlModel:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/Cipher;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method static synthetic -get1()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/WifiBackupRestore;)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->salt:[B

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/WifiBackupRestore;Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/WifiBackupRestore;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->salt:[B

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/WifiBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 104
    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 105
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 103
    sput-object v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mPermissions:[Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->isIgnoreSupportFeature:Z

    .line 75
    return-void
.end method


# virtual methods
.method CheckWifiState(Landroid/content/Context;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 704
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_0

    .line 705
    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 707
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 709
    .local v1, "isWifiEnabled":Z
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiEnabledForSCloud:Z

    .line 710
    const/4 v2, 0x0

    .line 712
    .local v2, "loopTimeout":I
    if-nez v1, :cond_4

    .line 713
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 714
    :cond_1
    if-nez v1, :cond_2

    .line 716
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 717
    add-int/lit8 v2, v2, 0x1

    .line 718
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 719
    const/16 v3, 0xa

    if-le v2, v3, :cond_1

    .line 727
    :cond_2
    if-eqz v1, :cond_3

    .line 728
    const-string/jumbo v3, "WifiBackupRestore"

    const-string/jumbo v4, ">>>>> WIFI ON <<<<<"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 730
    return v7

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 724
    return v6

    .line 732
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const-string/jumbo v3, "WifiBackupRestore"

    const-string/jumbo v4, ">>>>> Failed to WIFI ON <<<<<"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    return v6

    .line 736
    :cond_4
    return v7
.end method

.method RestoreWifiState(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 740
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 742
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiEnabledForSCloud:Z

    if-nez v0, :cond_1

    .line 743
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 738
    :cond_1
    return-void
.end method

.method public backup(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "listener"    # Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    .prologue
    .line 770
    const-string/jumbo v12, "WifiBackupRestore"

    const-string/jumbo v13, "backup "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string/jumbo v12, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    .line 774
    .local v11, "wm":Landroid/net/wifi/WifiManager;
    const-string/jumbo v12, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->getFileSize(Ljava/lang/String;)J

    move-result-wide v4

    .line 775
    .local v4, "confSize":J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_0

    .line 776
    const-string/jumbo v12, "WifiBackupRestore"

    const-string/jumbo v13, "There is no conf file"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 778
    return-void

    .line 781
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->CheckWifiState(Landroid/content/Context;)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    .line 782
    const-string/jumbo v12, "WifiBackupRestore"

    const-string/jumbo v13, "Could not enable Wi-Fi"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 784
    return-void

    .line 788
    :cond_1
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 789
    .local v10, "msg":Landroid/os/Message;
    const/16 v12, 0x3d

    iput v12, v10, Landroid/os/Message;->what:I

    .line 791
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 792
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v12, "OPTION"

    const/4 v13, 0x2

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 793
    const-string/jumbo v12, "PATH"

    const-string/jumbo v13, "/data/misc/wifi/temp.conf"

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string/jumbo v12, "IGNORE_SUPPORT_FEATURE"

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 795
    iput-object v2, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 797
    invoke-virtual {v11, v10}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v12

    if-nez v12, :cond_2

    .line 798
    const-string/jumbo v12, "WifiBackupRestore"

    const-string/jumbo v13, "Cloud BACK UP !!!!!!!!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    new-instance v3, Ljava/io/File;

    const-string/jumbo v12, "/data/misc/wifi/temp.conf"

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 808
    .local v3, "backupFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_3

    .line 810
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 811
    .local v9, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v14

    new-instance v13, Lcom/samsung/android/settings/wifi/WifiBackupRestore$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v13, v0, v1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$1;-><init>(Lcom/samsung/android/settings/wifi/WifiBackupRestore;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    invoke-static {v12, v14, v15, v9, v13}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/lang/String;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    const-string/jumbo v12, "WifiBackupRestore"

    const-string/jumbo v13, "Cloud BACK UP complete!!!!!!!!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 831
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 832
    .local v7, "deleteMsg":Landroid/os/Message;
    const/16 v12, 0x105

    iput v12, v7, Landroid/os/Message;->what:I

    .line 833
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 834
    .local v6, "deleteArgs":Landroid/os/Bundle;
    const-string/jumbo v12, "PATH"

    const-string/jumbo v13, "/data/misc/wifi/temp.conf"

    invoke-virtual {v6, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 837
    invoke-virtual {v11, v7}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v12

    if-nez v12, :cond_4

    .line 838
    const-string/jumbo v12, "WifiBackupRestore"

    const-string/jumbo v13, "Delete temp.conf file successful."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->RestoreWifiState(Landroid/content/Context;)V

    .line 769
    return-void

    .line 800
    .end local v3    # "backupFile":Ljava/io/File;
    .end local v6    # "deleteArgs":Landroid/os/Bundle;
    .end local v7    # "deleteMsg":Landroid/os/Message;
    :cond_2
    const-string/jumbo v12, "WifiBackupRestore"

    const-string/jumbo v13, "Failed to write networks"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 802
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->RestoreWifiState(Landroid/content/Context;)V

    .line 803
    return-void

    .line 817
    .restart local v3    # "backupFile":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 818
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v12, "WifiBackupRestore"

    const-string/jumbo v13, "err"

    invoke-static {v12, v13, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 819
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 820
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->RestoreWifiState(Landroid/content/Context;)V

    .line 821
    return-void

    .line 826
    .end local v8    # "e":Ljava/io/IOException;
    :cond_3
    const-string/jumbo v12, "WifiBackupRestore"

    const-string/jumbo v13, "There are no networks to write"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    goto :goto_0

    .line 840
    .restart local v6    # "deleteArgs":Landroid/os/Bundle;
    .restart local v7    # "deleteMsg":Landroid/os/Message;
    :cond_4
    const-string/jumbo v12, "WifiBackupRestore"

    const-string/jumbo v13, "Failed to delete temp.conf file"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 764
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b1238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFileSize(Ljava/lang/String;)J
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 696
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 697
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    return-wide v2
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 760
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b1238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnableBackup(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 756
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportBackup(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 752
    const/4 v0, 0x1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "SOURCE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "source":Ljava/lang/String;
    const-string/jumbo v4, "ACTION"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 147
    .local v1, "extraAction":I
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->isIgnoreSupportFeature:Z

    .line 149
    if-eqz v3, :cond_0

    .line 150
    const-string/jumbo v4, "GearHostManager"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->isIgnoreSupportFeature:Z

    .line 153
    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 154
    sput-boolean v5, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mIsCanceled:Z

    .line 155
    return-void

    :cond_1
    move v4, v6

    .line 150
    goto :goto_0

    .line 157
    :cond_2
    sput-boolean v6, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mIsCanceled:Z

    .line 160
    const-string/jumbo v4, "com.sec.android.intent.action.REQUEST_BACKUP_WIFIWPACONF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 161
    const-string/jumbo v4, "WifiBackupRestore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "request backup - isIgnoreSupportFeature : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->isIgnoreSupportFeature:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;

    invoke-direct {v4, p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;-><init>(Lcom/samsung/android/settings/wifi/WifiBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 164
    .local v2, "kiesThread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 143
    .end local v2    # "kiesThread":Ljava/lang/Thread;
    :cond_3
    :goto_1
    return-void

    .line 166
    :cond_4
    const-string/jumbo v4, "com.sec.android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 167
    const-string/jumbo v4, "WifiBackupRestore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "request restore - isIgnoreSupportFeature : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->isIgnoreSupportFeature:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;

    invoke-direct {v4, p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;-><init>(Lcom/samsung/android/settings/wifi/WifiBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 170
    .restart local v2    # "kiesThread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "listener"    # Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    .prologue
    .line 848
    const-string/jumbo v11, "WifiBackupRestore"

    const-string/jumbo v12, "restore "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->CheckWifiState(Landroid/content/Context;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    .line 851
    const-string/jumbo v11, "WifiBackupRestore"

    const-string/jumbo v12, "Could not enable Wi-Fi"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 853
    return-void

    .line 856
    :cond_0
    new-instance v9, Ljava/io/File;

    const-string/jumbo v11, "/data/misc/wifi_share_profile/temp.conf"

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 857
    .local v9, "target":Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 860
    .local v7, "fos":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v12

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/samsung/android/settings/wifi/WifiBackupRestore$2;

    move-object/from16 v0, p3

    invoke-direct {v14, p0, v0}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$2;-><init>(Lcom/samsung/android/settings/wifi/WifiBackupRestore;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    invoke-static {v7, v12, v13, v11, v14}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 873
    if-eqz v7, :cond_1

    .line 874
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 880
    :cond_1
    :goto_0
    const-string/jumbo v11, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 882
    .local v10, "wm":Landroid/net/wifi/WifiManager;
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 883
    const-string/jumbo v11, "WifiBackupRestore"

    const-string/jumbo v12, "restore - complete! "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    new-instance v6, Ljava/io/File;

    const-string/jumbo v11, "/data/misc/wifi_share_profile/temp.conf"

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 887
    .local v6, "f":Ljava/io/File;
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Ljava/io/File;->setReadable(ZZ)Z

    .line 888
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 889
    .local v8, "msg":Landroid/os/Message;
    const/16 v11, 0x3d

    iput v11, v8, Landroid/os/Message;->what:I

    .line 891
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 892
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v11, "OPTION"

    const/4 v12, 0x3

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 893
    const-string/jumbo v11, "PATH"

    const-string/jumbo v12, "/data/misc/wifi_share_profile/temp.conf"

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const-string/jumbo v11, "IGNORE_SUPPORT_FEATURE"

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 895
    iput-object v2, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 897
    invoke-virtual {v10, v8}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v11

    if-nez v11, :cond_4

    .line 898
    const-string/jumbo v11, "WifiBackupRestore"

    const-string/jumbo v12, "RESTORE - success"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 908
    .local v4, "deleteMsg":Landroid/os/Message;
    const/16 v11, 0x105

    iput v11, v4, Landroid/os/Message;->what:I

    .line 909
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 910
    .local v3, "deleteArgs":Landroid/os/Bundle;
    const-string/jumbo v11, "PATH"

    const-string/jumbo v12, "/data/misc/wifi_share_profile/temp.conf"

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 913
    invoke-virtual {v10, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v11

    if-nez v11, :cond_5

    .line 914
    const-string/jumbo v11, "WifiBackupRestore"

    const-string/jumbo v12, "Delete temp.conf file successful."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->RestoreWifiState(Landroid/content/Context;)V

    .line 847
    return-void

    .line 876
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v3    # "deleteArgs":Landroid/os/Bundle;
    .end local v4    # "deleteMsg":Landroid/os/Message;
    .end local v6    # "f":Ljava/io/File;
    .end local v8    # "msg":Landroid/os/Message;
    .end local v10    # "wm":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 867
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 868
    .restart local v5    # "e":Ljava/io/IOException;
    const/4 v11, 0x0

    :try_start_2
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 869
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->RestoreWifiState(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 873
    if-eqz v7, :cond_2

    .line 874
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 870
    :cond_2
    :goto_2
    return-void

    .line 876
    :catch_2
    move-exception v5

    goto :goto_2

    .line 871
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 873
    if-eqz v7, :cond_3

    .line 874
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 871
    :cond_3
    :goto_3
    throw v11

    .line 876
    :catch_3
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 900
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "args":Landroid/os/Bundle;
    .restart local v6    # "f":Ljava/io/File;
    .restart local v8    # "msg":Landroid/os/Message;
    .restart local v10    # "wm":Landroid/net/wifi/WifiManager;
    :cond_4
    const-string/jumbo v11, "WifiBackupRestore"

    const-string/jumbo v12, "Failed to read networks"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 902
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->RestoreWifiState(Landroid/content/Context;)V

    .line 903
    return-void

    .line 916
    .restart local v3    # "deleteArgs":Landroid/os/Bundle;
    .restart local v4    # "deleteMsg":Landroid/os/Message;
    :cond_5
    const-string/jumbo v11, "WifiBackupRestore"

    const-string/jumbo v12, "Failed to delete temp.conf file"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
