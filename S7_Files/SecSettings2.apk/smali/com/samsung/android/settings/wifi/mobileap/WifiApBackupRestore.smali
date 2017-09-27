.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBackupRestore.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;
    }
.end annotation


# static fields
.field private static cipher:Ljavax/crypto/Cipher;

.field private static key:Ljavax/crypto/spec/SecretKeySpec;

.field static mIsCanceled:Z

.field private static final permissions:[Ljava/lang/String;


# instance fields
.field action:I

.field currentOS:I

.field mExportSessionTime:Ljava/lang/String;

.field mOption:I

.field mSecurityLevel:I

.field mSessionKey:Ljava/lang/String;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field mSource:Ljava/lang/String;

.field final maxClient:I

.field private salt:[B

.field final support5G:Z

.field final timeout:I

.field xmlConf:Ljava/lang/String;

.field xmlModel:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljavax/crypto/Cipher;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method static synthetic -get1()Ljavax/crypto/spec/SecretKeySpec;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->key:Ljavax/crypto/spec/SecretKeySpec;

    return-object v0
.end method

.method static synthetic -get2()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->permissions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->salt:[B

    return-object v0
.end method

.method static synthetic -set0(Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object p0
.end method

.method static synthetic -set1(Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->key:Ljavax/crypto/spec/SecretKeySpec;

    return-object p0
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->salt:[B

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->permissions:[Ljava/lang/String;

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->currentOS:I

    .line 163
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupport5G:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->support5G:Z

    .line 164
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget v0, Landroid/net/wifi/WifiApCust;->mDefaultMaxClientNum:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->maxClient:I

    .line 165
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget v0, Landroid/net/wifi/WifiApCust;->mDefaultTimeOut:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->timeout:I

    .line 95
    return-void
.end method


# virtual methods
.method public backup(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "listener"    # Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    .prologue
    .line 993
    const-string/jumbo v15, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 996
    .local v12, "mWifiManager":Landroid/net/wifi/WifiManager;
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 997
    .local v4, "backupConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 1001
    const-string/jumbo v15, "/data/misc/wifi/softap.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v4, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->createJSONObj(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 1002
    .local v6, "backupJSON":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1003
    const/4 v13, 0x0

    .line 1005
    .local v13, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v14, Ljava/io/FileWriter;

    new-instance v15, Ljava/io/File;

    const-string/jumbo v16, "/data/misc/wifi_hostapd/backup.conf"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    .end local v13    # "writer":Ljava/io/FileWriter;
    .local v14, "writer":Ljava/io/FileWriter;
    :try_start_1
    const-string/jumbo v15, "WifiApBackupRestore"

    const-string/jumbo v16, "Writing the JSON"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-virtual {v14, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1012
    if-eqz v14, :cond_0

    .line 1013
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1021
    .end local v14    # "writer":Ljava/io/FileWriter;
    :cond_0
    :goto_0
    const-string/jumbo v15, "/data/misc/wifi_hostapd/backup.conf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->getFileSize(Ljava/lang/String;)J

    move-result-wide v8

    .line 1022
    .local v8, "confSize":J
    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-nez v15, :cond_2

    .line 1023
    const-string/jumbo v15, "WifiApBackupRestore"

    const-string/jumbo v16, "Backup failed!, There is no conf file"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 1025
    return-void

    .line 1014
    .end local v8    # "confSize":J
    .restart local v14    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v7

    .line 1015
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1008
    .end local v7    # "e":Ljava/io/IOException;
    .end local v14    # "writer":Ljava/io/FileWriter;
    .restart local v13    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v10

    .line 1009
    .end local v13    # "writer":Ljava/io/FileWriter;
    .local v10, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string/jumbo v15, "WifiApBackupRestore"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "FileWriter exception "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1012
    if-eqz v13, :cond_0

    .line 1013
    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1014
    :catch_2
    move-exception v7

    .line 1015
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1010
    .end local v7    # "e":Ljava/io/IOException;
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    .line 1012
    :goto_2
    if-eqz v13, :cond_1

    .line 1013
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1010
    :cond_1
    :goto_3
    throw v15

    .line 1014
    :catch_3
    move-exception v7

    .line 1015
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1028
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v8    # "confSize":J
    :cond_2
    new-instance v5, Ljava/io/File;

    const-string/jumbo v15, "/data/misc/wifi_hostapd/backup.conf"

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1029
    .local v5, "backupFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_3

    .line 1031
    :try_start_6
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-direct {v11, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1032
    .local v11, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16

    new-instance v18, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    move-wide/from16 v0, v16

    move-object/from16 v2, v18

    invoke-static {v15, v0, v1, v11, v2}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/lang/String;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1043
    const-string/jumbo v15, "WifiApBackupRestore"

    const-string/jumbo v16, "Cloud BACK UP complete!!!!!!!!!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 991
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    return-void

    .line 1038
    :catch_4
    move-exception v7

    .line 1039
    .restart local v7    # "e":Ljava/io/IOException;
    const-string/jumbo v15, "WifiApBackupRestore"

    const-string/jumbo v16, "err"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1040
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 1041
    return-void

    .line 1010
    .end local v5    # "backupFile":Ljava/io/File;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "confSize":J
    .restart local v14    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v15

    move-object v13, v14

    .end local v14    # "writer":Ljava/io/FileWriter;
    .local v13, "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 1008
    .end local v13    # "writer":Ljava/io/FileWriter;
    .restart local v14    # "writer":Ljava/io/FileWriter;
    :catch_5
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    move-object v13, v14

    .end local v14    # "writer":Ljava/io/FileWriter;
    .restart local v13    # "writer":Ljava/io/FileWriter;
    goto/16 :goto_1
.end method

.method public createJSONObj(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;Landroid/content/Context;)Ljava/lang/String;
    .locals 20
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "dummyConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 913
    const/4 v6, 0x0

    .line 914
    .local v6, "in":Ljava/io/DataInputStream;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 916
    .local v12, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v16, Ljava/io/BufferedInputStream;

    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v16 .. v17}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 917
    .end local v6    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 918
    .local v13, "version":I
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 919
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 920
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 921
    move-object/from16 v0, p2

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 922
    .local v2, "apChannel":I
    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v13, v0, :cond_0

    .line 923
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 925
    :cond_0
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 926
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 927
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    .line 928
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    .line 929
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    .line 930
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    .line 931
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 932
    .local v3, "authType":I
    if-eqz v3, :cond_1

    .line 933
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 935
    :cond_1
    const-string/jumbo v16, "version"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 936
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 937
    .local v11, "jsonMHS":Lorg/json/JSONObject;
    const-string/jumbo v16, "SSID"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 938
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 939
    const-string/jumbo v16, "hidden"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 942
    :goto_0
    if-nez v3, :cond_6

    .line 943
    const-string/jumbo v16, "use_security"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 944
    const-string/jumbo v16, "passphrase"

    const-string/jumbo v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 949
    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 950
    move-object/from16 v0, p2

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    move/from16 v16, v0

    const/16 v17, 0xe

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 951
    const-string/jumbo v16, "band"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 955
    :cond_2
    :goto_2
    const-string/jumbo v16, "channel"

    move-object/from16 v0, p2

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 956
    const-string/jumbo v16, "timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->getTimeoutValueFromPreference(Landroid/content/Context;)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 957
    const-string/jumbo v16, "allow"

    move-object/from16 v0, p2

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 958
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v14

    .line 959
    .local v14, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v14}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v8

    .line 960
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    if-eqz v8, :cond_a

    .line 961
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 962
    .local v9, "jarr":Lorg/json/JSONArray;
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 963
    .local v10, "jarr2":Lorg/json/JSONArray;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 964
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 965
    .local v15, "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    invoke-virtual {v15}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 966
    invoke-virtual {v15}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 972
    .end local v2    # "apChannel":I
    .end local v3    # "authType":I
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .end local v9    # "jarr":Lorg/json/JSONArray;
    .end local v10    # "jarr2":Lorg/json/JSONArray;
    .end local v11    # "jsonMHS":Lorg/json/JSONObject;
    .end local v13    # "version":I
    .end local v14    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    .end local v15    # "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :catch_0
    move-exception v5

    .local v5, "e":Lorg/json/JSONException;
    move-object v6, v7

    .line 973
    .end local v7    # "in":Ljava/io/DataInputStream;
    :goto_4
    :try_start_2
    const-string/jumbo v16, "WifiApBackupRestore"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "JSONException enountered.."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 974
    const/16 v16, 0x0

    .line 979
    if-eqz v6, :cond_3

    .line 981
    :try_start_3
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 974
    :cond_3
    :goto_5
    return-object v16

    .line 941
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v2    # "apChannel":I
    .restart local v3    # "authType":I
    .restart local v7    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "jsonMHS":Lorg/json/JSONObject;
    .restart local v13    # "version":I
    :cond_4
    :try_start_4
    const-string/jumbo v16, "hidden"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 975
    .end local v2    # "apChannel":I
    .end local v3    # "authType":I
    .end local v11    # "jsonMHS":Lorg/json/JSONObject;
    .end local v13    # "version":I
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    move-object v6, v7

    .line 976
    .end local v7    # "in":Ljava/io/DataInputStream;
    :goto_6
    :try_start_5
    const-string/jumbo v16, "WifiApBackupRestore"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "READ loadApConfigurationOldVer() : IOException"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 977
    const/16 v16, 0x0

    .line 979
    if-eqz v6, :cond_5

    .line 981
    :try_start_6
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 977
    :cond_5
    :goto_7
    return-object v16

    .line 946
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "apChannel":I
    .restart local v3    # "authType":I
    .restart local v7    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "jsonMHS":Lorg/json/JSONObject;
    .restart local v13    # "version":I
    :cond_6
    :try_start_7
    const-string/jumbo v16, "use_security"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 947
    const-string/jumbo v16, "passphrase"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 978
    .end local v2    # "apChannel":I
    .end local v3    # "authType":I
    .end local v11    # "jsonMHS":Lorg/json/JSONObject;
    .end local v13    # "version":I
    :catchall_0
    move-exception v16

    move-object v6, v7

    .line 979
    .end local v7    # "in":Ljava/io/DataInputStream;
    :goto_8
    if-eqz v6, :cond_7

    .line 981
    :try_start_8
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 978
    :cond_7
    :goto_9
    throw v16

    .line 953
    .restart local v2    # "apChannel":I
    .restart local v3    # "authType":I
    .restart local v7    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "jsonMHS":Lorg/json/JSONObject;
    .restart local v13    # "version":I
    :cond_8
    :try_start_9
    const-string/jumbo v16, "band"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 968
    .restart local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .restart local v9    # "jarr":Lorg/json/JSONArray;
    .restart local v10    # "jarr2":Lorg/json/JSONArray;
    .restart local v14    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    :cond_9
    const-string/jumbo v16, "allowed_devices_name"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 969
    const-string/jumbo v16, "allowed_devices"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 971
    .end local v9    # "jarr":Lorg/json/JSONArray;
    .end local v10    # "jarr2":Lorg/json/JSONArray;
    :cond_a
    const-string/jumbo v16, "hotspot"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 979
    if-eqz v7, :cond_b

    .line 981
    :try_start_a
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 987
    :cond_b
    :goto_a
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    return-object v16

    .line 982
    :catch_2
    move-exception v4

    .line 983
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v16, "WifiApBackupRestore"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Exception in ReadnadPRINTWifiApConfig.."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 982
    .end local v2    # "apChannel":I
    .end local v3    # "authType":I
    .end local v7    # "in":Ljava/io/DataInputStream;
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .end local v11    # "jsonMHS":Lorg/json/JSONObject;
    .end local v13    # "version":I
    .end local v14    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    :catch_3
    move-exception v4

    .line 983
    const-string/jumbo v17, "WifiApBackupRestore"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Exception in ReadnadPRINTWifiApConfig.."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 982
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v5    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v4

    .line 983
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v17, "WifiApBackupRestore"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Exception in ReadnadPRINTWifiApConfig.."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 982
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Lorg/json/JSONException;
    :catch_5
    move-exception v4

    .line 983
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v17, "WifiApBackupRestore"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Exception in ReadnadPRINTWifiApConfig.."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 978
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v16

    goto/16 :goto_8

    .line 972
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :catch_6
    move-exception v5

    .restart local v5    # "e":Lorg/json/JSONException;
    goto/16 :goto_4

    .line 975
    .end local v5    # "e":Lorg/json/JSONException;
    :catch_7
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto/16 :goto_6
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 909
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0dc3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFileSize(Ljava/lang/String;)J
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 887
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 888
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    return-wide v2
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 904
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0dc3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeoutValueFromPreference(Landroid/content/Context;)I
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 873
    const-string/jumbo v0, "SAMSUNG_HOTSPOT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "CONNECTION_TIMEOUT"

    sget v2, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isEnableBackup(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 899
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportBackup(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 894
    const/4 v0, 0x1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "receivedaction":Ljava/lang/String;
    const-string/jumbo v2, "SOURCE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSource:Ljava/lang/String;

    .line 170
    const-string/jumbo v2, "ACTION"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    .line 172
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 173
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mIsCanceled:Z

    .line 174
    return-void

    .line 176
    :cond_0
    sput-boolean v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mIsCanceled:Z

    .line 178
    const-string/jumbo v2, "com.samsung.android.intent.action.REQUEST_BACKUP_HOTSPOT_SETTING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    const-string/jumbo v2, "WifiApBackupRestore"

    const-string/jumbo v3, "request backup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 182
    .local v0, "kiesThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 167
    .end local v0    # "kiesThread":Ljava/lang/Thread;
    :cond_1
    :goto_0
    return-void

    .line 183
    :cond_2
    const-string/jumbo v2, "com.samsung.android.intent.action.REQUEST_RESTORE_HOTSPOT_SETTING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    const-string/jumbo v2, "WifiApBackupRestore"

    const-string/jumbo v3, "request restore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 187
    .restart local v0    # "kiesThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public readJSON(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1049
    const/4 v6, 0x0

    .line 1050
    .local v6, "temp":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1052
    .local v4, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    .end local v6    # "temp":Ljava/io/InputStream;
    .local v7, "temp":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1054
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 1055
    .local v2, "line":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1056
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .local v5, "sb":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1057
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1059
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v6, v7

    .line 1060
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "temp":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    const-string/jumbo v8, "WifiApBackupRestore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readJSON exception.."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1067
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1074
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    if-eqz v4, :cond_1

    .line 1075
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 1067
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "temp":Ljava/io/InputStream;
    :cond_0
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    move-object v4, v5

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    move-object v6, v7

    .end local v7    # "temp":Ljava/io/InputStream;
    .local v6, "temp":Ljava/io/InputStream;
    goto :goto_2

    .line 1068
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "temp":Ljava/io/InputStream;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "temp":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 1069
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v8, "WifiApBackupRestore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception on closing.."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1062
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "temp":Ljava/io/InputStream;
    .local v4, "sb":Ljava/lang/StringBuilder;
    .local v6, "temp":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 1063
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "temp":Ljava/io/InputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string/jumbo v8, "WifiApBackupRestore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readJSON IOEx.."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1067
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 1068
    :catch_3
    move-exception v1

    .line 1069
    const-string/jumbo v8, "WifiApBackupRestore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception on closing.."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1068
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v1

    .line 1069
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "WifiApBackupRestore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception on closing.."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 1065
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 1067
    :goto_5
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1065
    :goto_6
    throw v8

    .line 1068
    :catch_5
    move-exception v1

    .line 1069
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception on closing.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1077
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    return-object v11

    .line 1065
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "temp":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "temp":Ljava/io/InputStream;
    .local v6, "temp":Ljava/io/InputStream;
    goto :goto_5

    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "temp":Ljava/io/InputStream;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "temp":Ljava/io/InputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v6, v7

    .end local v7    # "temp":Ljava/io/InputStream;
    .restart local v6    # "temp":Ljava/io/InputStream;
    goto :goto_5

    .line 1059
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "sb":Ljava/lang/StringBuilder;
    .local v6, "temp":Ljava/io/InputStream;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_1

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "temp":Ljava/io/InputStream;
    .restart local v7    # "temp":Ljava/io/InputStream;
    :catch_7
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v6, v7

    .end local v7    # "temp":Ljava/io/InputStream;
    .local v6, "temp":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 1062
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "temp":Ljava/io/InputStream;
    .restart local v7    # "temp":Ljava/io/InputStream;
    :catch_8
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "temp":Ljava/io/InputStream;
    .restart local v6    # "temp":Ljava/io/InputStream;
    goto/16 :goto_4

    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "temp":Ljava/io/InputStream;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "temp":Ljava/io/InputStream;
    :catch_9
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v6, v7

    .end local v7    # "temp":Ljava/io/InputStream;
    .restart local v6    # "temp":Ljava/io/InputStream;
    goto/16 :goto_4
.end method

.method public restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "listener"    # Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    .prologue
    .line 1083
    const-string/jumbo v27, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiManager;

    .line 1085
    .local v15, "mWifiManager":Landroid/net/wifi/WifiManager;
    new-instance v24, Ljava/io/File;

    const-string/jumbo v27, "/data/misc/wifi_hostapd/restore.conf"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1086
    .local v24, "target":Ljava/io/File;
    new-instance v11, Ljava/io/FileInputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1089
    .local v11, "fos":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v28

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    new-instance v30, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    move-object/from16 v3, v30

    invoke-static {v11, v0, v1, v2, v3}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    if-eqz v11, :cond_0

    .line 1101
    :try_start_1
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1108
    :cond_0
    :goto_0
    const/16 v27, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 1114
    const-string/jumbo v27, "/data/misc/wifi_hostapd/restore.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->readJSON(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1115
    .local v22, "restoreJSON":Ljava/lang/String;
    const/16 v23, 0x0

    .line 1118
    .local v23, "restoreStatus":Z
    if-eqz v22, :cond_6

    .line 1120
    :try_start_2
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1121
    .local v20, "obj":Lorg/json/JSONObject;
    new-instance v19, Landroid/net/wifi/WifiConfiguration;

    invoke-direct/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1122
    .local v19, "newconfig":Landroid/net/wifi/WifiConfiguration;
    const-string/jumbo v27, "version"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 1123
    .local v25, "version":I
    const-string/jumbo v27, "hotspot"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 1124
    .local v17, "mhsobj":Lorg/json/JSONObject;
    const-string/jumbo v27, "SSID"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1125
    const-string/jumbo v27, "hidden"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 1126
    .local v12, "hiddenSSID":I
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v12, v0, :cond_5

    .line 1127
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1130
    :goto_1
    const-string/jumbo v27, "channel"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1131
    .local v5, "apChannel":I
    move-object/from16 v0, v19

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 1132
    const/16 v27, 0x4

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 1133
    const/16 v27, 0xe

    move/from16 v0, v27

    if-ge v5, v0, :cond_7

    .line 1134
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 1139
    :cond_1
    :goto_2
    const-string/jumbo v27, "allow"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1140
    .local v4, "allow":I
    move-object/from16 v0, v19

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 1141
    const-string/jumbo v27, "use_security"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1142
    .local v6, "authType":I
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v6, v0, :cond_8

    .line 1143
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Ljava/util/BitSet;->set(I)V

    .line 1147
    :goto_3
    if-eqz v6, :cond_2

    .line 1148
    const-string/jumbo v27, "passphrase"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1149
    .local v21, "pw":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1151
    .end local v21    # "pw":Ljava/lang/String;
    :cond_2
    const-string/jumbo v27, "timeout"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->setTimeout(ILandroid/content/Context;)V

    .line 1152
    const-string/jumbo v27, "allowed_devices_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 1153
    const-string/jumbo v27, "allowed_devices_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 1154
    .local v18, "name":Lorg/json/JSONArray;
    const-string/jumbo v27, "allowed_devices"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 1155
    .local v16, "mac":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .line 1156
    .local v8, "dname":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1157
    .local v7, "dmac":Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v26

    .line 1158
    .local v26, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    if-eqz v18, :cond_a

    .line 1159
    const/4 v13, 0x0

    .end local v7    # "dmac":Ljava/lang/String;
    .end local v8    # "dname":Ljava/lang/String;
    .local v13, "i":I
    :goto_4
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v13, v0, :cond_a

    .line 1160
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1161
    .local v8, "dname":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1162
    .local v7, "dmac":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v27

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    .line 1163
    const-string/jumbo v27, "WifiApBackupRestore"

    const-string/jumbo v28, "Whitelist MAC invalid. QUIT!!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1164
    const/16 v23, 0x0

    .line 1165
    return-void

    .line 1103
    .end local v4    # "allow":I
    .end local v5    # "apChannel":I
    .end local v6    # "authType":I
    .end local v7    # "dmac":Ljava/lang/String;
    .end local v8    # "dname":Ljava/lang/String;
    .end local v12    # "hiddenSSID":I
    .end local v13    # "i":I
    .end local v16    # "mac":Lorg/json/JSONArray;
    .end local v17    # "mhsobj":Lorg/json/JSONObject;
    .end local v18    # "name":Lorg/json/JSONArray;
    .end local v19    # "newconfig":Landroid/net/wifi/WifiConfiguration;
    .end local v20    # "obj":Lorg/json/JSONObject;
    .end local v22    # "restoreJSON":Ljava/lang/String;
    .end local v23    # "restoreStatus":Z
    .end local v25    # "version":I
    .end local v26    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    :catch_0
    move-exception v14

    .line 1104
    .local v14, "ioe":Ljava/io/IOException;
    const-string/jumbo v27, "WifiApBackupRestore"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "FOS ioexception "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1095
    .end local v14    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 1096
    .local v9, "e":Ljava/io/IOException;
    const/16 v27, 0x0

    :try_start_3
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1100
    if-eqz v11, :cond_3

    .line 1101
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1097
    :cond_3
    :goto_5
    return-void

    .line 1103
    :catch_2
    move-exception v14

    .line 1104
    .restart local v14    # "ioe":Ljava/io/IOException;
    const-string/jumbo v27, "WifiApBackupRestore"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "FOS ioexception "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1098
    .end local v9    # "e":Ljava/io/IOException;
    .end local v14    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v27

    .line 1100
    if-eqz v11, :cond_4

    .line 1101
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1098
    :cond_4
    :goto_6
    throw v27

    .line 1103
    :catch_3
    move-exception v14

    .line 1104
    .restart local v14    # "ioe":Ljava/io/IOException;
    const-string/jumbo v28, "WifiApBackupRestore"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "FOS ioexception "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1129
    .end local v14    # "ioe":Ljava/io/IOException;
    .restart local v12    # "hiddenSSID":I
    .restart local v17    # "mhsobj":Lorg/json/JSONObject;
    .restart local v19    # "newconfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v20    # "obj":Lorg/json/JSONObject;
    .restart local v22    # "restoreJSON":Ljava/lang/String;
    .restart local v23    # "restoreStatus":Z
    .restart local v25    # "version":I
    :cond_5
    const/16 v27, 0x0

    :try_start_6
    move/from16 v0, v27

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 1171
    .end local v12    # "hiddenSSID":I
    .end local v17    # "mhsobj":Lorg/json/JSONObject;
    .end local v19    # "newconfig":Landroid/net/wifi/WifiConfiguration;
    .end local v20    # "obj":Lorg/json/JSONObject;
    .end local v25    # "version":I
    :catch_4
    move-exception v10

    .line 1172
    .local v10, "e":Lorg/json/JSONException;
    const-string/jumbo v27, "WifiApBackupRestore"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "JSON EXCEeption enountered.."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    .end local v10    # "e":Lorg/json/JSONException;
    .end local v23    # "restoreStatus":Z
    :cond_6
    :goto_7
    if-nez v23, :cond_b

    .line 1177
    const-string/jumbo v27, "WifiApBackupRestore"

    const-string/jumbo v28, "SCLOUD RESTORE Fail!!.."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :goto_8
    return-void

    .line 1136
    .restart local v5    # "apChannel":I
    .restart local v12    # "hiddenSSID":I
    .restart local v17    # "mhsobj":Lorg/json/JSONObject;
    .restart local v19    # "newconfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v20    # "obj":Lorg/json/JSONObject;
    .restart local v23    # "restoreStatus":Z
    .restart local v25    # "version":I
    :cond_7
    const/16 v27, 0x1

    :try_start_7
    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    goto/16 :goto_2

    .line 1145
    .restart local v4    # "allow":I
    .restart local v6    # "authType":I
    :cond_8
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3

    .line 1159
    .restart local v7    # "dmac":Ljava/lang/String;
    .restart local v8    # "dname":Ljava/lang/String;
    .restart local v13    # "i":I
    .restart local v16    # "mac":Lorg/json/JSONArray;
    .restart local v18    # "name":Lorg/json/JSONArray;
    .restart local v26    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 1170
    .end local v7    # "dmac":Ljava/lang/String;
    .end local v8    # "dname":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v16    # "mac":Lorg/json/JSONArray;
    .end local v18    # "name":Lorg/json/JSONArray;
    .end local v26    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    :cond_a
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    move-result v23

    .local v23, "restoreStatus":Z
    goto :goto_7

    .line 1179
    .end local v4    # "allow":I
    .end local v5    # "apChannel":I
    .end local v6    # "authType":I
    .end local v12    # "hiddenSSID":I
    .end local v17    # "mhsobj":Lorg/json/JSONObject;
    .end local v19    # "newconfig":Landroid/net/wifi/WifiConfiguration;
    .end local v20    # "obj":Lorg/json/JSONObject;
    .end local v23    # "restoreStatus":Z
    .end local v25    # "version":I
    :cond_b
    const-string/jumbo v27, "WifiApBackupRestore"

    const-string/jumbo v28, "restore - complete!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public setTimeout(ILandroid/content/Context;)V
    .locals 3
    .param p1, "timeout"    # I
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 878
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 879
    const-string/jumbo v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    .line 880
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 881
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "CONNECTION_TIMEOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 882
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 877
    return-void
.end method
