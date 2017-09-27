.class public Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;
    }
.end annotation


# static fields
.field private static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DBG:Z

.field private static final SUPPORTMOBILEAPWPSPBC:Z

.field private static final SUPPORTMOBILEAPWPSPIN:Z

.field static currentMccMnc:Ljava/lang/String;

.field private static final mHotspotActionForSimStatus:Ljava/lang/String;

.field private static mIsBootComplete:Z

.field public static mIsForegroundWifiSettings:Z

.field static mPingThread:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    .line 41
    sput-boolean v2, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 42
    sput-boolean v2, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mIsBootComplete:Z

    .line 68
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigHotSpotActionForSimStatus"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mHotspotActionForSimStatus:Ljava/lang/String;

    .line 69
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupportWPSPBC:Z

    sput-boolean v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->SUPPORTMOBILEAPWPSPBC:Z

    .line 70
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupportWPSPIN:Z

    sput-boolean v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->SUPPORTMOBILEAPWPSPIN:Z

    .line 71
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    .line 37
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 37
    return-void
.end method

.method private getRvfMode(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 362
    const-string/jumbo v3, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v4, "getRvfMode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "mRvfMode":I
    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 365
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 366
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 367
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x1c

    iput v3, v2, Landroid/os/Message;->what:I

    .line 368
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 370
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return v0
.end method

.method private isWifiSharingEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 374
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 375
    const-string/jumbo v1, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v2, "Returning true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return v3

    .line 377
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 378
    const-string/jumbo v1, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v2, "Returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    return v4

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v1, "SystemUI_WifiApBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in getting provider value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .end local v0    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    return v4
.end method

.method private showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "DialogType"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 299
    const-string/jumbo v6, "SystemUI_WifiApBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[showHotspotErrorDialog] DialogType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string/jumbo v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 301
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    const-string/jumbo v6, "extra_type"

    const/4 v7, -0x1

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 302
    .local v0, "extra_type":I
    const-string/jumbo v6, "req_type"

    const/4 v7, -0x1

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 303
    .local v2, "req_type":I
    if-eqz v1, :cond_8

    .line 304
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    .line 305
    .local v5, "wifiApState":I
    const/4 v6, 0x4

    if-ne p2, v6, :cond_1

    .line 307
    if-nez v2, :cond_0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    .line 309
    invoke-direct {p0, p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 307
    if-eqz v6, :cond_0

    .line 310
    return-void

    .line 311
    :cond_0
    const/16 v6, 0xc

    if-eq v5, v6, :cond_6

    .line 312
    const/16 v6, 0xd

    if-eq v5, v6, :cond_6

    add-int v6, v0, v2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    const/4 v6, 0x4

    if-eq v0, v6, :cond_6

    .line 313
    return-void

    .line 314
    :cond_1
    const/4 v6, 0x5

    if-ne p2, v6, :cond_3

    .line 315
    const/16 v6, 0xc

    if-eq v5, v6, :cond_2

    .line 316
    const/16 v6, 0xd

    if-ne v5, v6, :cond_6

    .line 317
    :cond_2
    return-void

    .line 318
    :cond_3
    const/16 v6, 0x32

    if-ne p2, v6, :cond_4

    .line 320
    invoke-direct {p0, p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 318
    if-eqz v6, :cond_4

    .line 321
    const/16 v6, 0xc

    if-eq v5, v6, :cond_6

    .line 322
    const/16 v6, 0xd

    if-eq v5, v6, :cond_6

    .line 323
    const-string/jumbo v6, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v7, "Wifi AP is not enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void

    .line 327
    :cond_4
    const/16 v6, 0xc

    if-eq v5, v6, :cond_5

    .line 328
    const/16 v6, 0xd

    if-eq v5, v6, :cond_5

    .line 329
    return-void

    .line 331
    :cond_5
    const-string/jumbo v6, "SystemUI_WifiApBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Mobile AP is disabled by [showHotspotErrorDialog] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 336
    :cond_6
    const-string/jumbo v6, "statusbar"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .line 337
    .local v4, "statusBar":Landroid/app/StatusBarManager;
    if-eqz v4, :cond_7

    .line 338
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 340
    :cond_7
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 341
    .local v3, "startDialogIntent":Landroid/content/Intent;
    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 344
    const-string/jumbo v6, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string/jumbo v6, "wifiap_warning_dialog_type"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    const-string/jumbo v6, "req_type"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    const-string/jumbo v6, "extra_type"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 298
    .end local v3    # "startDialogIntent":Landroid/content/Intent;
    .end local v4    # "statusBar":Landroid/app/StatusBarManager;
    .end local v5    # "wifiApState":I
    :cond_8
    return-void
.end method

.method private startWifiApSettings(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 353
    sget-boolean v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    if-nez v1, :cond_0

    .line 354
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 355
    .local v0, "wifiApIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.settings.WIFI_AP_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 357
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 352
    .end local v0    # "wifiApIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public getClientInfo(Landroid/content/Context;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "num"    # I

    .prologue
    .line 398
    const-string/jumbo v14, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v11

    .line 399
    .local v11, "staList":Ljava/lang/String;
    const/4 v1, 0x0

    .line 400
    .local v1, "buf":Ljava/io/BufferedReader;
    const-string/jumbo v14, " "

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 401
    .local v12, "tok":[Ljava/lang/String;
    array-length v13, v12

    .line 404
    .local v13, "tokLength":I
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    const-string/jumbo v15, "/data/misc/dhcp/dnsmasq.leases"

    invoke-direct {v14, v15}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v15, 0x2000

    invoke-direct {v2, v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .local v2, "buf":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "bufReadLine":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 406
    const-string/jumbo v14, " "

    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 407
    .local v5, "dhcpLeaseInfo":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v8, v0, :cond_0

    .line 408
    array-length v14, v5

    const/4 v15, 0x4

    if-lt v14, v15, :cond_1

    const/4 v14, 0x0

    aget-object v14, v5, v14

    if-eqz v14, :cond_1

    .line 409
    const/4 v14, 0x1

    aget-object v14, v5, v14

    if-eqz v14, :cond_1

    const/4 v14, 0x2

    aget-object v14, v5, v14

    if-eqz v14, :cond_1

    const/4 v14, 0x3

    aget-object v14, v5, v14

    if-eqz v14, :cond_1

    .line 410
    if-ge v8, v13, :cond_1

    aget-object v14, v12, v8

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    aget-object v14, v5, v14

    aget-object v15, v12, v8

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 412
    const/4 v14, 0x3

    aget-object v14, v5, v14

    const-string/jumbo v15, "*"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 413
    const-string/jumbo v4, "deviceName"

    .line 417
    .local v4, "deviceName":Ljava/lang/String;
    :goto_1
    aget-object v14, v12, v8

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .line 418
    .local v10, "mac":Ljava/lang/String;
    const/4 v14, 0x2

    aget-object v9, v5, v14

    .line 419
    .local v9, "ip":Ljava/lang/String;
    sget-object v14, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    new-instance v15, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v9, v10}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;-><init>(Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    .end local v4    # "deviceName":Ljava/lang/String;
    .end local v9    # "ip":Ljava/lang/String;
    .end local v10    # "mac":Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 415
    :cond_2
    const/4 v14, 0x3

    aget-object v4, v5, v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v4    # "deviceName":Ljava/lang/String;
    goto :goto_1

    .line 430
    .end local v4    # "deviceName":Ljava/lang/String;
    .end local v5    # "dhcpLeaseInfo":[Ljava/lang/String;
    .end local v8    # "i":I
    :cond_3
    if-eqz v2, :cond_4

    .line 431
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_2
    move-object v1, v2

    .line 397
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "bufReadLine":Ljava/lang/String;
    :cond_5
    :goto_3
    return-void

    .line 432
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "bufReadLine":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 433
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 426
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "bufReadLine":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_1
    move-exception v7

    .line 427
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .local v7, "e":Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 430
    if-eqz v1, :cond_5

    .line 431
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 432
    :catch_2
    move-exception v6

    .line 433
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 424
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_3
    move-exception v6

    .line 425
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_5
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 430
    if-eqz v1, :cond_5

    .line 431
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 432
    :catch_4
    move-exception v6

    .line 433
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 428
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 430
    :goto_6
    if-eqz v1, :cond_6

    .line 431
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 428
    :cond_6
    :goto_7
    throw v14

    .line 432
    :catch_5
    move-exception v6

    .line 433
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 428
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v14

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    goto :goto_6

    .line 424
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catch_6
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_5

    .line 426
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catch_7
    move-exception v7

    .restart local v7    # "e":Ljava/lang/NumberFormatException;
    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "action":Ljava/lang/String;
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "onReceive: action "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-nez v5, :cond_0

    .line 82
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v28, "action is null"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 86
    :cond_0
    const-string/jumbo v27, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 87
    const/16 v27, 0x1

    sput-boolean v27, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mIsBootComplete:Z

    .line 90
    :cond_1
    const-string/jumbo v27, "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 92
    const-string/jumbo v27, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    .line 93
    .local v13, "mWifiManager":Landroid/net/wifi/WifiManager;
    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    .line 94
    .local v17, "msg":Landroid/os/Message;
    const/16 v27, 0x4d

    move/from16 v0, v27

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 95
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v6, "args":Landroid/os/Bundle;
    const-string/jumbo v27, "feature"

    const-string/jumbo v28, "MHCN"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v27, "extra"

    const-string/jumbo v28, "Hotspot_conn"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    move-object/from16 v0, v17

    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 101
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v28, "onReceive: WIFI_AP_STA_ASSOCIATED_ACTION"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v13    # "mWifiManager":Landroid/net/wifi/WifiManager;
    .end local v17    # "msg":Landroid/os/Message;
    :cond_2
    :goto_0
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "onReceive END: action "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 102
    :cond_3
    const-string/jumbo v27, "com.samsung.settings.WIFI_AP_SEC_SETTINGS"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 103
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->startWifiApSettings(Landroid/content/Context;)V

    goto :goto_0

    .line 104
    :cond_4
    const-string/jumbo v27, "com.samsung.intent.action.MIP_ERROR"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_5

    const-string/jumbo v27, "com.samsung.android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_5

    const-string/jumbo v27, "com.samsung.android.intent.action.TETHERING_FAILED"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 105
    :cond_5
    const-string/jumbo v27, "ro.csc.sales_code"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 106
    .local v21, "salesCode":Ljava/lang/String;
    const-string/jumbo v27, "SPRINT"

    sget-object v28, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    const-string/jumbo v27, "SPRINT"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    const-string/jumbo v27, "SPR"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    const-string/jumbo v27, "XAS"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    .line 107
    const-string/jumbo v27, "VMU"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 106
    if-nez v27, :cond_6

    .line 107
    const-string/jumbo v27, "BST"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 106
    if-eqz v27, :cond_2

    .line 107
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->getRvfMode(Landroid/content/Context;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    .line 108
    const-string/jumbo v27, "ALL"

    sget-object v28, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 109
    const-string/jumbo v27, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    .line 110
    .local v26, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v24

    .line 111
    .local v24, "wifiApState":I
    const/16 v27, 0xc

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    const/16 v27, 0xd

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    .line 112
    return-void

    .line 114
    :cond_7
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Mobile AP is disabled by [USA OPEN (SPR)] don\'t : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 119
    const-wide/16 v28, 0x258

    :try_start_0
    invoke-static/range {v28 .. v29}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_2

    .line 126
    const/16 v25, 0x0

    .line 128
    .local v25, "wifiSavedState":I
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "wifi_saved_state"

    invoke-static/range {v27 .. v28}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v25

    .line 132
    :goto_2
    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 133
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v28, "Need to enabled Wifi since provision dialog got dismissed in onPause"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "wifi_saved_state"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 120
    .end local v25    # "wifiSavedState":I
    :catch_0
    move-exception v10

    .line 121
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 129
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v25    # "wifiSavedState":I
    :catch_1
    move-exception v9

    .line 130
    .local v9, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v28, "SettingNotFoundException"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 139
    .end local v9    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v24    # "wifiApState":I
    .end local v25    # "wifiSavedState":I
    .end local v26    # "wm":Landroid/net/wifi/WifiManager;
    :cond_8
    const-string/jumbo v27, "com.samsung.intent.action.MIP_ERROR"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 140
    const-string/jumbo v27, "CODE"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 141
    .local v16, "mipErrorCode":Ljava/lang/String;
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "mipErrorCode : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-eqz v16, :cond_2

    const-string/jumbo v27, "67"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 143
    const/16 v27, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 144
    .end local v16    # "mipErrorCode":Ljava/lang/String;
    :cond_9
    const-string/jumbo v27, "com.samsung.android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 145
    const/16 v27, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 147
    :cond_a
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v28, "do NOT turn off MHS when DIALOG_HOTSPOT_NO_DATA , spr new requirement!!!!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 152
    .end local v21    # "salesCode":Ljava/lang/String;
    :cond_b
    const-string/jumbo v27, "com.samsung.android.intent.action.WIFI_ENABLE_WARNING"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 153
    const/16 v27, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 154
    :cond_c
    const-string/jumbo v27, "com.samsung.android.intent.action.WIFI_P2P_ENABLE_WARNING"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 156
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 157
    const/16 v27, 0x32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 159
    :cond_d
    const-string/jumbo v27, "req_type"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const-string/jumbo v27, "extra_type"

    const/16 v28, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    const/16 v27, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 163
    :cond_e
    const-string/jumbo v27, "com.samsung.android.intent.action.WIFI_AP_ENABLE_WARNING"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 164
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v28, "onReceive: WIFIAP_ENABLE_WARNING"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/16 v27, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 166
    :cond_f
    const-string/jumbo v27, "SPRINT"

    sget-object v28, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_14

    const-string/jumbo v27, "android.intent.action.RADIO_TECHNOLOGY"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_14

    .line 167
    const-string/jumbo v27, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    .line 168
    .restart local v26    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v24

    .line 169
    .restart local v24    # "wifiApState":I
    const/16 v27, 0xc

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_10

    .line 170
    const/16 v27, 0xd

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 171
    :cond_10
    const-string/jumbo v27, "phoneName"

    const/16 v28, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 172
    .local v20, "phoneType":I
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Receive android.intent.action.RADIO_TECHNOLOGY, phoneType = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 174
    .local v8, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v27, "phone"

    invoke-static/range {v27 .. v27}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 175
    .local v19, "phone":Lcom/android/internal/telephony/ITelephony;
    const/16 v14, 0xa

    .line 178
    .local v14, "maxClientNum":I
    const/16 v27, 0x1

    move/from16 v0, v20

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    .line 179
    :try_start_2
    const-string/jumbo v27, "chameleon_gsmmaxuser"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v14

    .line 194
    :cond_11
    :goto_3
    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_13

    .line 197
    :goto_4
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "maxClientNum = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    .line 200
    .restart local v17    # "msg":Landroid/os/Message;
    const/16 v27, 0xe

    move/from16 v0, v27

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 201
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 202
    .local v7, "b":Landroid/os/Bundle;
    const-string/jumbo v27, "maxClient"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    move-object/from16 v0, v17

    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 204
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    .line 180
    .end local v7    # "b":Landroid/os/Bundle;
    .end local v17    # "msg":Landroid/os/Message;
    :cond_12
    const/16 v27, 0x2

    move/from16 v0, v20

    move/from16 v1, v27

    if-ne v0, v1, :cond_11

    .line 186
    :try_start_3
    const-string/jumbo v27, "chameleon_maxuser"

    move-object/from16 v0, v27

    invoke-static {v8, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v14

    goto :goto_3

    .line 190
    :catch_2
    move-exception v9

    .line 191
    .restart local v9    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v14, 0xa

    goto :goto_3

    .line 196
    .end local v9    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    goto :goto_4

    .line 207
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v14    # "maxClientNum":I
    .end local v19    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v20    # "phoneType":I
    .end local v24    # "wifiApState":I
    .end local v26    # "wm":Landroid/net/wifi/WifiManager;
    :cond_14
    sget-boolean v27, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v27, :cond_15

    const-string/jumbo v27, "com.nttdocomo.intent.action.SHOW_WPSDIALOG"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_15

    .line 208
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->startWifiApSettings(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 209
    :cond_15
    sget-object v27, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mHotspotActionForSimStatus:Ljava/lang/String;

    if-eqz v27, :cond_17

    sget-object v27, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mHotspotActionForSimStatus:Ljava/lang/String;

    const-string/jumbo v28, "turn off"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_17

    const-string/jumbo v27, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_17

    .line 210
    sget-boolean v27, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mIsBootComplete:Z

    if-nez v27, :cond_16

    .line 211
    return-void

    .line 213
    :cond_16
    const-string/jumbo v27, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 214
    .local v23, "szSimState":Ljava/lang/String;
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Recieve Sim State Changed : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string/jumbo v27, "IMSI"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 216
    const-string/jumbo v27, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 217
    .local v12, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    const-string/jumbo v27, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    .line 218
    .restart local v26    # "wm":Landroid/net/wifi/WifiManager;
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "INTENT_VALUE_ICC_IMSI changed mccmnc old = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 219
    const-string/jumbo v29, " ,  new = "

    .line 218
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 219
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v29

    .line 218
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    .line 221
    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 223
    .end local v12    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v23    # "szSimState":Ljava/lang/String;
    .end local v26    # "wm":Landroid/net/wifi/WifiManager;
    :cond_17
    const-string/jumbo v27, "com.samsung.intent.action.PROVISION_DIALOG_DISMISSED"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_18

    .line 227
    const/16 v25, 0x0

    .line 229
    .restart local v25    # "wifiSavedState":I
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "wifi_saved_state"

    invoke-static/range {v27 .. v28}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v25

    .line 233
    :goto_5
    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 234
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v28, "Need to enabled Wifi since provision dialog got dismissed in onPause"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string/jumbo v27, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiManager;

    .line 236
    .restart local v26    # "wm":Landroid/net/wifi/WifiManager;
    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "wifi_saved_state"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 230
    .end local v26    # "wm":Landroid/net/wifi/WifiManager;
    :catch_3
    move-exception v9

    .line 231
    .restart local v9    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    const-string/jumbo v28, "SettingNotFoundException"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 239
    .end local v9    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v25    # "wifiSavedState":I
    :cond_18
    const-string/jumbo v27, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 240
    sget-boolean v27, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v27, :cond_2

    .line 241
    const-string/jumbo v27, "NUM"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 242
    .local v4, "ClientNum":I
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "MHSPing WIFI_AP_STA_STATUS_CHANGED_ACTION ClientNum "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string/jumbo v18, "/sdcard/mhspingstop"

    .line 244
    .local v18, "path":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_19

    .line 246
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "MHSPing "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " is exist!!! pingClear"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->pingClear()V

    goto/16 :goto_0

    .line 249
    :cond_19
    const-string/jumbo v27, "SystemUI_WifiApBroadcastReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "MHSPing "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " is NOT exist"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    if-lez v4, :cond_1a

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->pingClear()V

    .line 252
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->pingStart(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 254
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->pingClear()V

    goto/16 :goto_0

    .line 258
    .end local v4    # "ClientNum":I
    .end local v11    # "file":Ljava/io/File;
    .end local v18    # "path":Ljava/lang/String;
    :cond_1b
    const-string/jumbo v27, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 260
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getTestProp()I

    move-result v22

    .line 261
    .local v22, "status":I
    const-string/jumbo v15, ""

    .line 262
    .local v15, "mhsWrapperName":Ljava/lang/String;
    sget-boolean v27, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v27, :cond_1c

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->pingClear()V

    .line 265
    :cond_1c
    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d

    .line 266
    const-string/jumbo v15, "com.samsung.android.app.mhswrappertmo"

    goto/16 :goto_0

    .line 267
    :cond_1d
    const/16 v27, 0x2

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_1e

    .line 268
    const-string/jumbo v15, "com.samsung.android.app.mhswrappermtr"

    goto/16 :goto_0

    .line 269
    :cond_1e
    const/16 v27, 0x3

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 270
    const-string/jumbo v15, "com.samsung.android.app.mhswrapperusc"

    goto/16 :goto_0
.end method

.method public pingClear()V
    .locals 4

    .prologue
    .line 387
    sget-object v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 388
    return-void

    .line 389
    :cond_0
    const-string/jumbo v1, "SystemUI_WifiApBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MHSPing pingClear() mPingThread size :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 392
    sget-object v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;

    invoke-virtual {v1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->stopPing()V

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_1
    sget-object v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 386
    return-void
.end method

.method public pingStart(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "num"    # I

    .prologue
    .line 438
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->getClientInfo(Landroid/content/Context;I)V

    .line 439
    const-string/jumbo v1, "SystemUI_WifiApBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MHSPing pingStart() size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 442
    sget-object v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;->mPingThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;

    invoke-virtual {v1}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->start()V

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    :cond_0
    return-void
.end method
