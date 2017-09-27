.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# static fields
.field private static final DBG:Z

.field private static bExpireAlarm:Z

.field private static bStartAlarm:Z

.field private static mGateTraceTag:Ljava/lang/String;

.field private static mIface:Ljava/lang/String;

.field public static mIsForegroundWifiSettings:Z

.field public static mIsHelpFromTetherSettings:Z

.field public static mIsHelpFromWifiApSettings:Z

.field public static mIsProvisioningResultOk:Z

.field private static mLastClientNum:I

.field private static mMaxClientNum:I

.field private static mTimeoutSetting:I

.field private static mWifiSharing:Ljava/lang/String;


# instance fields
.field private mIsDeviceATT:Z

.field mNotificationManager:Landroid/app/NotificationManager;

.field private mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    .line 38
    const-string/jumbo v0, "GATE"

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    .line 42
    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 43
    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 45
    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromTetherSettings:Z

    .line 46
    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromWifiApSettings:Z

    .line 81
    sput v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    .line 86
    const-string/jumbo v0, "not_support"

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mWifiSharing:Ljava/lang/String;

    .line 87
    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 88
    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 35
    return-void
.end method

.method private getRvfMode(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 712
    const/4 v0, 0x0

    .line 713
    .local v0, "mRvfMode":I
    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 714
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 715
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 716
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x1c

    iput v3, v2, Landroid/os/Message;->what:I

    .line 717
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 719
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return v0
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 613
    const-string/jumbo v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 614
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "CONNECTION_TIMEOUT"

    sget v2, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private isMobileApON(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 758
    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 759
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-nez v1, :cond_0

    .line 760
    const-string/jumbo v2, "WifiApBroadcastReceiver"

    const-string/jumbo v3, "Wifi Manager is null, returning mobile ap not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return v4

    .line 763
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 764
    .local v0, "mWifiApState":I
    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    .line 765
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 766
    :cond_2
    return v4
.end method

.method private isProvisioningNeeded(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 722
    sget-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Provisioning.disable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 723
    return v3

    .line 724
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 725
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 726
    const-string/jumbo v1, "WifiApBroadcastReceiver"

    const-string/jumbo v2, "Wifi is connected so skip provisioning for Wifi Sharing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    return v3

    .line 729
    :cond_1
    const-string/jumbo v1, "WifiApBroadcastReceiver"

    const-string/jumbo v2, "Wifi is not connected so dont skip provisioning for Wifi Sharing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 732
    const v2, 0x1070035

    .line 731
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "mProvisionApp":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 734
    const/4 v1, 0x1

    return v1

    .line 735
    :cond_3
    return v3
.end method

.method private isWifiConnected(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 746
    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 747
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 748
    return v4

    .line 749
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 750
    .local v1, "wifi":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 751
    const-string/jumbo v2, "WifiApBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifi is connected to AP and wifiInfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const/4 v2, 0x1

    return v2

    .line 754
    :cond_1
    return v4
.end method

.method private isWifiSharingEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 739
    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 740
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 741
    const/4 v1, 0x0

    return v1

    .line 742
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiSharingEnabled()Z

    move-result v1

    return v1
.end method

.method private sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V
    .locals 2
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 607
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 609
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 606
    return-void
.end method

.method private setRvfMode(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 702
    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 703
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 704
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x1b

    iput v3, v2, Landroid/os/Message;->what:I

    .line 705
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 706
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v3, "mode"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 707
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 708
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 701
    return-void
.end method

.method private showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "DialogType"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x4

    const/4 v9, -0x1

    .line 618
    const-string/jumbo v6, "WifiApBroadcastReceiver"

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

    .line 619
    const-string/jumbo v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 620
    .local v5, "wm":Landroid/net/wifi/WifiManager;
    const-string/jumbo v6, "extra_type"

    invoke-virtual {p3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 621
    .local v0, "extra_type":I
    const-string/jumbo v6, "req_type"

    invoke-virtual {p3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 623
    .local v1, "req_type":I
    if-eqz v5, :cond_3

    .line 624
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    .line 625
    .local v4, "wifiApState":I
    if-ne p2, v10, :cond_1

    .line 627
    if-nez v1, :cond_0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    .line 629
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 627
    if-eqz v6, :cond_0

    .line 630
    return-void

    .line 631
    :cond_0
    const/16 v6, 0xc

    if-eq v4, v6, :cond_1

    const/16 v6, 0xd

    if-eq v4, v6, :cond_1

    .line 632
    add-int v6, v0, v1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    if-eq v0, v10, :cond_1

    .line 633
    return-void

    .line 636
    :cond_1
    const-string/jumbo v6, "statusbar"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 637
    .local v3, "statusBar":Landroid/app/StatusBarManager;
    if-eqz v3, :cond_2

    .line 638
    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 640
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {v2, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 641
    .local v2, "startDialogIntent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 642
    const-string/jumbo v6, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    const-string/jumbo v6, "wifiap_warning_dialog_type"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    const-string/jumbo v6, "req_type"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    const-string/jumbo v6, "extra_type"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 617
    .end local v2    # "startDialogIntent":Landroid/content/Intent;
    .end local v3    # "statusBar":Landroid/app/StatusBarManager;
    .end local v4    # "wifiApState":I
    :cond_3
    return-void
.end method

.method private startHotspotProvisioningRequest(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "DialogType"    # I

    .prologue
    .line 586
    const-string/jumbo v1, "WifiApBroadcastReceiver"

    const-string/jumbo v2, "startHotspotProvisioningRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 588
    .local v0, "startDialogIntent":Landroid/content/Intent;
    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 589
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 590
    const-string/jumbo v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const-string/jumbo v1, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 592
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 585
    return-void
.end method

.method private startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "DialogType"    # I

    .prologue
    .line 596
    const-string/jumbo v1, "WifiApBroadcastReceiver"

    const-string/jumbo v2, "startHotspotProvisioningRequest for Wifi Sharing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 598
    .local v0, "startDialogIntent":Landroid/content/Intent;
    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 599
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 600
    const-string/jumbo v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    const-string/jumbo v1, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 602
    const-string/jumbo v1, "wifiap_provision_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 603
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 595
    return-void
.end method


# virtual methods
.method clearTimeoutNotification(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 667
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0b0d0d

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 665
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 50
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "action":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v42

    .line 102
    .local v42, "userID":I
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "onReceive: action "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, " userID :"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz v5, :cond_0

    const/16 v46, 0x64

    move/from16 v0, v42

    move/from16 v1, v46

    if-lt v0, v1, :cond_1

    const/16 v46, 0xc8

    move/from16 v0, v42

    move/from16 v1, v46

    if-gt v0, v1, :cond_1

    .line 104
    :cond_0
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "do nothing, action is null or Knox userID:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 108
    :cond_1
    const-string/jumbo v46, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_13

    .line 109
    const-string/jumbo v46, "wifi_state"

    const/16 v47, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 110
    .local v9, "apState":I
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "onreceive WIFI_AP_STATE_CHANGED_ACTION] apState : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    packed-switch v9, :pswitch_data_0

    .line 99
    .end local v9    # "apState":I
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 114
    .restart local v9    # "apState":I
    :pswitch_1
    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 117
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v46

    if-eqz v46, :cond_3

    .line 118
    sget-object v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string/jumbo v47, "<GATE-M> WIFI_HOTSPOT_CHECKED </GATE-M>"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_3
    const-string/jumbo v46, "ATT"

    sget-object v47, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_4

    .line 130
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearTimeoutNotification(Landroid/content/Context;)V

    .line 131
    const/16 v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    .line 133
    :cond_4
    const-string/jumbo v46, "VZW"

    sget-object v47, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_5

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 136
    .local v11, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string/jumbo v46, "wifi_ap_saved_state"

    move-object/from16 v0, v46

    invoke-static {v11, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_5

    .line 137
    const/16 v46, 0x1

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 138
    const-string/jumbo v46, "wifi_ap_saved_state"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_9

    .line 145
    .end local v11    # "cr":Landroid/content/ContentResolver;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    if-nez v46, :cond_6

    .line 146
    const-string/jumbo v46, "SAMSUNG_HOTSPOT"

    const/16 v47, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    .line 149
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string/jumbo v47, "PROVISIONING_RESULT"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v39

    .line 150
    .local v39, "tempProvisonResult":I
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "value of provisioning result is  and flag value "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, "  "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-boolean v48, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v46

    if-eqz v46, :cond_7

    sget-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    if-eqz v46, :cond_a

    .line 184
    :cond_7
    const/16 v46, 0x0

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 187
    :cond_8
    :goto_2
    :pswitch_2
    sget-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    if-nez v46, :cond_9

    .line 188
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/net/wifi/WifiManager;

    .line 189
    .local v45, "wm":Landroid/net/wifi/WifiManager;
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v46

    if-nez v46, :cond_9

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isMobileApON(Landroid/content/Context;)Z

    move-result v46

    if-eqz v46, :cond_9

    .line 190
    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v46

    if-eqz v46, :cond_9

    .line 191
    const/16 v46, 0x0

    invoke-virtual/range {v45 .. v46}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 195
    .end local v45    # "wm":Landroid/net/wifi/WifiManager;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 197
    .local v17, "ed":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v46, "PROVISIONING_RESULT"

    const/16 v47, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    const-string/jumbo v46, "swlan0"

    sput-object v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIface:Ljava/lang/String;

    .line 206
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string/jumbo v47, "wifi_ap_timeout_setting"

    invoke-static/range {v46 .. v47}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v46

    sput v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mTimeoutSetting:I

    .line 207
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "WIFI_AP_TIMEOUT is "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget v48, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mTimeoutSetting:I

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string/jumbo v47, "wifi_ap_wifi_sharing"

    const/16 v48, 0x0

    invoke-static/range {v46 .. v48}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_e

    const-string/jumbo v46, "sharing_on"

    :goto_4
    sput-object v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mWifiSharing:Ljava/lang/String;

    goto/16 :goto_0

    .line 152
    .end local v17    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getRvfMode(Landroid/content/Context;)I

    move-result v46

    if-nez v46, :cond_7

    .line 153
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsDeviceATT:Z

    move/from16 v46, v0

    if-nez v46, :cond_7

    const-string/jumbo v46, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_7

    .line 154
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/net/wifi/WifiManager;

    .line 155
    .restart local v45    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v46

    const/16 v47, 0xd

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_8

    .line 156
    const-string/jumbo v46, "VZW"

    sget-object v47, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_c

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 158
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    const-string/jumbo v46, "vzw_provision_result"

    const/16 v47, -0x1

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    .line 159
    .local v36, "provisionValue":I
    sget-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v46, :cond_b

    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "provisionValue.."

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_b
    packed-switch v36, :pswitch_data_1

    goto/16 :goto_2

    .line 168
    :pswitch_3
    const/16 v46, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 164
    :pswitch_4
    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-virtual/range {v45 .. v47}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 165
    const/16 v46, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 172
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v36    # "provisionValue":I
    :cond_c
    if-nez v39, :cond_d

    .line 173
    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-virtual/range {v45 .. v47}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 174
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Provisioning is failed, start provisioning once again"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/16 v46, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 177
    :cond_d
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Setting the mIsProvisioningResultOk flag  to false"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/16 v46, 0x0

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    goto/16 :goto_2

    .line 208
    .end local v45    # "wm":Landroid/net/wifi/WifiManager;
    .restart local v17    # "ed":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v12

    .line 209
    .local v12, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "WIFI_AP_TIMEOUT is not set. This is used at first time"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string/jumbo v47, "wifi_ap_timeout_setting"

    sget v48, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    invoke-static/range {v46 .. v48}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    sget v46, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    sput v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mTimeoutSetting:I

    goto/16 :goto_3

    .line 215
    .end local v12    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_e
    const-string/jumbo v46, "sharing_off"

    goto/16 :goto_4

    .line 232
    .end local v17    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v39    # "tempProvisonResult":I
    :pswitch_5
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/net/wifi/WifiManager;

    .line 233
    .restart local v45    # "wm":Landroid/net/wifi/WifiManager;
    if-eqz v45, :cond_2

    .line 234
    new-instance v28, Landroid/os/Message;

    invoke-direct/range {v28 .. v28}, Landroid/os/Message;-><init>()V

    .line 235
    .local v28, "msg":Landroid/os/Message;
    const/16 v46, 0x4d

    move/from16 v0, v46

    move-object/from16 v1, v28

    iput v0, v1, Landroid/os/Message;->what:I

    .line 236
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v10, "args":Landroid/os/Bundle;
    const-string/jumbo v46, "bigdata"

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    const-string/jumbo v46, "feature"

    const-string/jumbo v47, "MHSI"

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v25

    .line 241
    .local v25, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    const-string/jumbo v29, "CustomSSID"

    .line 242
    .local v29, "nameOfHotspot":Ljava/lang/String;
    const-string/jumbo v7, "All"

    .line 244
    .local v7, "allowedDevice":Ljava/lang/String;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    move/from16 v46, v0

    const/16 v47, 0x3

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_f

    const-string/jumbo v7, "Only"

    .line 246
    :cond_f
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string/jumbo v47, "Android"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_10

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string/jumbo v47, "Verizon"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_10

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string/jumbo v47, "Samsung"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_10

    .line 247
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string/jumbo v47, "Galaxy"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    .line 246
    if-nez v46, :cond_10

    .line 247
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string/jumbo v47, "SM-"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v46

    .line 246
    if-eqz v46, :cond_11

    .line 247
    :cond_10
    const-string/jumbo v29, "DefaultSSID"

    .line 249
    :cond_11
    const-string/jumbo v27, ""

    .line 250
    .local v27, "mhsData":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 251
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    const-string/jumbo v46, "wifi_ap_wifi_sharing"

    const/16 v47, 0xa

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v46

    const/16 v47, 0xa

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_12

    .line 252
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "Wifi Sharing first time provider value "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, "wifi_ap_wifi_sharing"

    const/16 v49, 0xa

    move-object/from16 v0, v48

    move/from16 v1, v49

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v47, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIface:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v25

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sget v47, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, -0x1

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sget v47, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mTimeoutSetting:I

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 256
    :goto_5
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "Bigdata logging "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string/jumbo v46, "data"

    move-object/from16 v0, v46

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, v28

    iput-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 259
    move-object/from16 v0, v45

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 260
    const/16 v46, 0x0

    sput v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    .line 261
    const/16 v46, -0x1

    sput v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mTimeoutSetting:I

    .line 262
    const-string/jumbo v46, ""

    sput-object v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mWifiSharing:Ljava/lang/String;

    .line 263
    const-string/jumbo v46, ""

    sput-object v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIface:Ljava/lang/String;

    goto/16 :goto_0

    .line 254
    :cond_12
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v47, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIface:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v25

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sget v47, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sget-object v47, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mWifiSharing:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sget v47, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mTimeoutSetting:I

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_5

    .line 267
    .end local v7    # "allowedDevice":Ljava/lang/String;
    .end local v10    # "args":Landroid/os/Bundle;
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v25    # "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v27    # "mhsData":Ljava/lang/String;
    .end local v28    # "msg":Landroid/os/Message;
    .end local v29    # "nameOfHotspot":Ljava/lang/String;
    .end local v45    # "wm":Landroid/net/wifi/WifiManager;
    :pswitch_6
    const/16 v46, 0x0

    sput v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    .line 268
    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->setRvfMode(Landroid/content/Context;I)V

    .line 269
    const/16 v46, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 272
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v46

    if-eqz v46, :cond_2

    .line 273
    sget-object v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string/jumbo v47, "<GATE-M> WIFI_HOTSPOT_UNCHECKED </GATE-M>"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 281
    .end local v9    # "apState":I
    :cond_13
    const-string/jumbo v46, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1f

    .line 282
    const-string/jumbo v46, "wifiap_power_mode_alarm_option"

    const/16 v47, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 284
    .local v31, "option":I
    if-nez v31, :cond_19

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 287
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v46

    if-eqz v46, :cond_14

    const-string/jumbo v46, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_14

    .line 288
    return-void

    .line 290
    :cond_14
    :try_start_2
    const-string/jumbo v46, "wifi_ap_plugged_type"

    move-object/from16 v0, v46

    invoke-static {v11, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v33

    .line 294
    .local v33, "pluggedType":I
    :goto_6
    const-string/jumbo v46, "TMO"

    sget-object v47, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_16

    .line 295
    const-string/jumbo v46, "NEWCO"

    sget-object v47, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    .line 294
    :goto_7
    if-eqz v46, :cond_15

    .line 296
    if-nez v33, :cond_2

    .line 297
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v35

    .line 298
    .local v35, "powermode_value":I
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "ALARM_START : set "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, " sec"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-eqz v35, :cond_17

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    move/from16 v0, v35

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v18, v46, v48

    .line 302
    .local v18, "expireTime":J
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v46, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v46

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v6, "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v46, "wifiap_power_mode_alarm_option"

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    const/16 v46, 0x0

    const/high16 v47, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    .line 306
    .local v32, "pending":Landroid/app/PendingIntent;
    const-string/jumbo v46, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 307
    .local v8, "am":Landroid/app/AlarmManager;
    const/16 v46, 0x0

    move/from16 v0, v46

    move-wide/from16 v1, v18

    move-object/from16 v3, v32

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 309
    const/16 v46, 0x0

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 310
    const/16 v46, 0x1

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 291
    .end local v6    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v18    # "expireTime":J
    .end local v32    # "pending":Landroid/app/PendingIntent;
    .end local v33    # "pluggedType":I
    .end local v35    # "powermode_value":I
    :catch_1
    move-exception v12

    .line 292
    .restart local v12    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v33, 0x0

    .restart local v33    # "pluggedType":I
    goto/16 :goto_6

    .line 294
    .end local v12    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_16
    const/16 v46, 0x1

    goto/16 :goto_7

    .line 312
    .restart local v35    # "powermode_value":I
    :cond_17
    sget-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v46, :cond_18

    .line 313
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v46, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v46

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .restart local v6    # "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v46, "wifiap_power_mode_alarm_option"

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const/16 v46, 0x0

    const/high16 v47, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    .line 317
    .restart local v32    # "pending":Landroid/app/PendingIntent;
    const-string/jumbo v46, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 318
    .restart local v8    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 320
    .end local v6    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v32    # "pending":Landroid/app/PendingIntent;
    :cond_18
    const/16 v46, 0x0

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 323
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v33    # "pluggedType":I
    .end local v35    # "powermode_value":I
    :cond_19
    const/16 v46, 0x4

    move/from16 v0, v31

    move/from16 v1, v46

    if-ne v0, v1, :cond_1a

    .line 324
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "WIFIAP_POWER_MODE_VALUE_CHANGED, mLastClientNum = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget v48, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v46, :cond_2

    .line 326
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "ALARM_START because of WIFIAP_POWER_MODE_VALUE_CHANGED"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 329
    :cond_1a
    const/16 v46, 0x1

    move/from16 v0, v31

    move/from16 v1, v46

    if-ne v0, v1, :cond_1e

    .line 330
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "ALARM_EXPIRE"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 332
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    const/16 v46, 0x1

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 333
    const/16 v46, 0x0

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    .line 336
    const-string/jumbo v46, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/os/PowerManager;

    .line 337
    .local v34, "pm":Landroid/os/PowerManager;
    const-string/jumbo v46, "MobileAPCloseService"

    const/16 v47, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v47

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v24

    .line 338
    .local v24, "mStopService":Landroid/os/PowerManager$WakeLock;
    if-eqz v24, :cond_1b

    .line 340
    :try_start_3
    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 346
    :cond_1b
    :goto_8
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/net/wifi/WifiManager;

    .line 348
    .restart local v45    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v43

    .line 349
    .local v43, "wifiApState":I
    const/16 v44, 0x0

    .line 350
    .local v44, "wifiSavedState":I
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v35

    .line 352
    .restart local v35    # "powermode_value":I
    new-instance v28, Landroid/os/Message;

    invoke-direct/range {v28 .. v28}, Landroid/os/Message;-><init>()V

    .line 353
    .restart local v28    # "msg":Landroid/os/Message;
    const/16 v46, 0x3

    move/from16 v0, v46

    move-object/from16 v1, v28

    iput v0, v1, Landroid/os/Message;->what:I

    .line 354
    const/16 v30, 0x0

    .line 356
    .local v30, "num":I
    :try_start_4
    move-object/from16 v0, v45

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v30

    .line 360
    :goto_9
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "powermode_value = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    if-nez v30, :cond_1d

    const/16 v46, 0xd

    move/from16 v0, v43

    move/from16 v1, v46

    if-ne v0, v1, :cond_1d

    if-eqz v35, :cond_1d

    .line 362
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "--> ap disable"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-virtual/range {v45 .. v47}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 364
    const-string/jumbo v46, "VZW"

    sget-object v47, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1c

    .line 365
    const v46, 0x7f0b0d0f

    const/16 v47, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/widget/Toast;->show()V

    .line 367
    :cond_1c
    const-string/jumbo v46, "ATT"

    sget-object v47, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1d

    .line 368
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showTimeoutNotification(Landroid/content/Context;)V

    .line 386
    :cond_1d
    if-eqz v24, :cond_2

    .line 388
    :try_start_5
    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 389
    const/16 v24, 0x0

    .local v24, "mStopService":Landroid/os/PowerManager$WakeLock;
    goto/16 :goto_0

    .line 341
    .end local v28    # "msg":Landroid/os/Message;
    .end local v30    # "num":I
    .end local v35    # "powermode_value":I
    .end local v43    # "wifiApState":I
    .end local v44    # "wifiSavedState":I
    .end local v45    # "wm":Landroid/net/wifi/WifiManager;
    .local v24, "mStopService":Landroid/os/PowerManager$WakeLock;
    :catch_2
    move-exception v15

    .line 342
    .local v15, "e":Ljava/lang/Throwable;
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 357
    .end local v15    # "e":Ljava/lang/Throwable;
    .restart local v28    # "msg":Landroid/os/Message;
    .restart local v30    # "num":I
    .restart local v35    # "powermode_value":I
    .restart local v43    # "wifiApState":I
    .restart local v44    # "wifiSavedState":I
    .restart local v45    # "wm":Landroid/net/wifi/WifiManager;
    :catch_3
    move-exception v13

    .line 358
    .local v13, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_9

    .line 390
    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v15

    .line 391
    .restart local v15    # "e":Ljava/lang/Throwable;
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "Cannot release wake lock ~~"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 394
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v15    # "e":Ljava/lang/Throwable;
    .end local v24    # "mStopService":Landroid/os/PowerManager$WakeLock;
    .end local v28    # "msg":Landroid/os/Message;
    .end local v30    # "num":I
    .end local v34    # "pm":Landroid/os/PowerManager;
    .end local v35    # "powermode_value":I
    .end local v43    # "wifiApState":I
    .end local v44    # "wifiSavedState":I
    .end local v45    # "wm":Landroid/net/wifi/WifiManager;
    :cond_1e
    const/16 v46, 0x2

    move/from16 v0, v31

    move/from16 v1, v46

    if-ne v0, v1, :cond_2

    .line 395
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "ALARM_STOP"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    sget-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v46, :cond_2

    sget-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v46, :cond_2

    .line 397
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v46, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v46

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .restart local v6    # "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v46, "wifiap_power_mode_alarm_option"

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    const/16 v46, 0x0

    const/high16 v47, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    .line 400
    .restart local v32    # "pending":Landroid/app/PendingIntent;
    const-string/jumbo v46, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 401
    .restart local v8    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 402
    const/16 v46, 0x0

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 405
    .end local v6    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v31    # "option":I
    .end local v32    # "pending":Landroid/app/PendingIntent;
    :cond_1f
    const-string/jumbo v46, "com.samsung.settings.wifi.PLUG_STATE_CHANGED"

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_21

    .line 406
    const-string/jumbo v46, "wifiap_plug_state_changed_option"

    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 407
    .restart local v31    # "option":I
    if-nez v31, :cond_20

    .line 408
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Unplugged"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/net/wifi/WifiManager;

    .line 410
    .restart local v45    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v43

    .line 411
    .restart local v43    # "wifiApState":I
    const/16 v46, 0xd

    move/from16 v0, v43

    move/from16 v1, v46

    if-ne v0, v1, :cond_2

    sget v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v46, :cond_2

    .line 412
    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 415
    .end local v43    # "wifiApState":I
    .end local v45    # "wm":Landroid/net/wifi/WifiManager;
    :cond_20
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Plugged"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v46, :cond_2

    sget-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v46, :cond_2

    .line 417
    const/16 v46, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 420
    .end local v31    # "option":I
    :cond_21
    const-string/jumbo v46, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_29

    .line 421
    const-string/jumbo v46, "NUM"

    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 422
    .local v4, "ClientNum":I
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "ClientNum from WIFI_AP_STA_STATUS_CHANGED_ACTION = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    if-gez v4, :cond_22

    .line 424
    const/4 v4, 0x0

    .line 425
    :cond_22
    sget v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    move/from16 v0, v46

    if-le v4, v0, :cond_23

    .line 426
    sput v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    .line 428
    :cond_23
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "MaxClientNum1 = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget v48, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mMaxClientNum:I

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v46

    if-eqz v46, :cond_24

    .line 432
    sget v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    move/from16 v0, v46

    if-le v4, v0, :cond_27

    .line 433
    sget-object v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string/jumbo v47, "<GATE-M> WIFI_HOTSPOT_CONNECTED </GATE-M>"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_24
    :goto_a
    if-nez v4, :cond_25

    sget-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v46, :cond_28

    .line 442
    :cond_25
    if-lez v4, :cond_26

    .line 443
    const/16 v46, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 445
    :cond_26
    :goto_b
    sput v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    goto/16 :goto_0

    .line 434
    :cond_27
    sget v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    move/from16 v0, v46

    if-ge v4, v0, :cond_24

    .line 435
    sget-object v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string/jumbo v47, "<GATE-M> WIFI_HOTSPOT_DISCONNECTED </GATE-M>"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 441
    :cond_28
    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto :goto_b

    .line 446
    .end local v4    # "ClientNum":I
    :cond_29
    const-string/jumbo v46, "com.samsung.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2a

    .line 447
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearTimeoutNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 448
    :cond_2a
    const-string/jumbo v46, "com.samsung.android.net.wifi.WIFI_AP_DRIVER_STATE_HANGED"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2b

    .line 449
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "WIFI_AP_DRIVER_STATE_HANGED"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/net/wifi/WifiManager;

    .line 451
    .restart local v45    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v46

    const/16 v47, 0xd

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_2

    .line 452
    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-virtual/range {v45 .. v47}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 454
    const-wide/16 v46, 0x5dc

    :try_start_6
    invoke-static/range {v46 .. v47}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5

    .line 458
    :goto_c
    const/16 v46, 0x1

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 459
    const/16 v46, 0x0

    const/16 v47, 0x1

    invoke-virtual/range {v45 .. v47}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 455
    :catch_5
    move-exception v14

    .line 456
    .local v14, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v14}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_c

    .line 461
    .end local v14    # "e":Ljava/lang/InterruptedException;
    .end local v45    # "wm":Landroid/net/wifi/WifiManager;
    :cond_2b
    const-string/jumbo v46, "com.samsung.android.intent.action.WIFI_ENABLE_WARNING"

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2c

    .line 462
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "onreceive WIFI_ENABLE_WARNING"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/16 v46, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 464
    :cond_2c
    const-string/jumbo v46, "com.samsung.android.intent.action.WIFIAP_RESET"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2d

    .line 465
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Received Skip Provision and Reset intent from SoftApStateMachine"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/net/wifi/WifiManager;

    .line 467
    .restart local v45    # "wm":Landroid/net/wifi/WifiManager;
    const/16 v46, 0x1

    sput-boolean v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 468
    new-instance v28, Landroid/os/Message;

    invoke-direct/range {v28 .. v28}, Landroid/os/Message;-><init>()V

    .line 469
    .restart local v28    # "msg":Landroid/os/Message;
    const/16 v46, 0xc5

    move/from16 v0, v46

    move-object/from16 v1, v28

    iput v0, v1, Landroid/os/Message;->what:I

    .line 470
    move-object/from16 v0, v45

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v37

    .local v37, "ret":I
    goto/16 :goto_0

    .line 471
    .end local v28    # "msg":Landroid/os/Message;
    .end local v37    # "ret":I
    .end local v45    # "wm":Landroid/net/wifi/WifiManager;
    :cond_2d
    const-string/jumbo v46, "reset_provider"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2f

    .line 473
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string/jumbo v47, "wifi_ap_wifi_sharing"

    const/16 v48, 0xa

    invoke-static/range {v46 .. v48}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 474
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "WIFI_AP_WIFI_SHARING provider value after putting 10"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v48

    const-string/jumbo v49, "wifi_ap_wifi_sharing"

    invoke-static/range {v48 .. v49}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    if-nez v46, :cond_2e

    .line 476
    const-string/jumbo v46, "SAMSUNG_HOTSPOT"

    const/16 v47, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    .line 477
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 478
    .restart local v17    # "ed":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v46, "wifi_disconnect_do_not_show"

    const/16 v47, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 479
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 480
    .end local v17    # "ed":Landroid/content/SharedPreferences$Editor;
    :catch_6
    move-exception v16

    .line 481
    .local v16, "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "Error in putting off provider value"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 483
    .end local v16    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    :cond_2f
    const-string/jumbo v46, "enable_provider"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_30

    .line 484
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "vzw calling enable method "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-boolean v48, Lcom/android/settings/Utils;->DBG:Z

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    sget-boolean v46, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v46, :cond_2

    .line 486
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    .line 487
    .local v23, "mManager":Landroid/net/wifi/WifiManager;
    const/16 v46, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->enableWifiSharing(Z)Z

    goto/16 :goto_0

    .line 489
    .end local v23    # "mManager":Landroid/net/wifi/WifiManager;
    :cond_30
    const-string/jumbo v46, "disable_provider"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_31

    .line 490
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "vzw calling disable method "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-boolean v48, Lcom/android/settings/Utils;->DBG:Z

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    sget-boolean v46, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v46, :cond_2

    .line 492
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    .line 493
    .restart local v23    # "mManager":Landroid/net/wifi/WifiManager;
    const/16 v46, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->enableWifiSharing(Z)Z

    goto/16 :goto_0

    .line 495
    .end local v23    # "mManager":Landroid/net/wifi/WifiManager;
    :cond_31
    const-string/jumbo v46, "com.samsung.intent.action.START_PROVISIONING"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2

    .line 497
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v22

    .line 498
    .local v22, "isWifiSharingEnabled":Z
    if-eqz v22, :cond_38

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isMobileApON(Landroid/content/Context;)Z

    move-result v46

    if-eqz v46, :cond_38

    .line 499
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    .line 500
    .restart local v23    # "mManager":Landroid/net/wifi/WifiManager;
    const-string/jumbo v46, "VZW"

    sget-object v47, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_37

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    if-nez v46, :cond_32

    .line 502
    const-string/jumbo v46, "SAMSUNG_HOTSPOT"

    const/16 v47, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    .line 504
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string/jumbo v47, "wifi_disconnect_do_not_show"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 505
    .local v21, "isDoNotShowAgain":I
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "for VZW show Wi-fiDisconnect isDoNotShowAgain "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isWifiConnected(Landroid/content/Context;)Z

    move-result v46

    if-nez v46, :cond_36

    .line 507
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_33

    .line 508
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Provisioning failed, mobile ap ON toast"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const v46, 0x7f0b0cf6

    const/16 v47, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v40

    .line 510
    .local v40, "toast":Landroid/widget/Toast;
    invoke-virtual/range {v40 .. v40}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v46

    const v47, 0x102000b

    invoke-virtual/range {v46 .. v47}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 511
    .local v41, "tv":Landroid/widget/TextView;
    const/16 v46, 0x11

    move-object/from16 v0, v41

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 512
    invoke-virtual/range {v40 .. v40}, Landroid/widget/Toast;->show()V

    .line 514
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string/jumbo v47, "wifi_ap_wifi_sharing"

    const/16 v48, 0x0

    invoke-static/range {v46 .. v48}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 515
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "WIFI_AP_WIFI_SHARING provider value after putting 0"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v48

    const-string/jumbo v49, "wifi_ap_wifi_sharing"

    invoke-static/range {v48 .. v49}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    .line 520
    :goto_d
    new-instance v26, Landroid/content/Intent;

    const-string/jumbo v46, "com.samsung.intent.action.UPDATE_OPTIONS_MENU"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    .local v26, "menu_update":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 522
    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 516
    .end local v26    # "menu_update":Landroid/content/Intent;
    :catch_7
    move-exception v16

    .line 517
    .restart local v16    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "Error in putting off provider value"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 523
    .end local v16    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    .end local v40    # "toast":Landroid/widget/Toast;
    .end local v41    # "tv":Landroid/widget/TextView;
    :cond_33
    const/16 v46, 0x1

    move/from16 v0, v21

    move/from16 v1, v46

    if-ne v0, v1, :cond_34

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_34

    .line 524
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Provisioning success, mobile ap ON toast"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const v46, 0x7f0b0cf5

    const/16 v47, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v40

    .line 526
    .restart local v40    # "toast":Landroid/widget/Toast;
    invoke-virtual/range {v40 .. v40}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v46

    const v47, 0x102000b

    invoke-virtual/range {v46 .. v47}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 527
    .restart local v41    # "tv":Landroid/widget/TextView;
    const/16 v46, 0x11

    move-object/from16 v0, v41

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 528
    invoke-virtual/range {v40 .. v40}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 530
    .end local v40    # "toast":Landroid/widget/Toast;
    .end local v41    # "tv":Landroid/widget/TextView;
    :cond_34
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Wi-fi got Disconnected before pop-up appears, Turn OFF MHS"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/net/wifi/WifiManager;

    .line 532
    .restart local v45    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v46

    const/16 v47, 0xd

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_35

    .line 533
    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-virtual/range {v45 .. v47}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 535
    :cond_35
    new-instance v38, Landroid/content/Intent;

    invoke-direct/range {v38 .. v38}, Landroid/content/Intent;-><init>()V

    .line 536
    .local v38, "startDialogIntent":Landroid/content/Intent;
    const-class v46, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 537
    const/high16 v46, 0x10000000

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 538
    const-string/jumbo v46, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const-string/jumbo v46, "wifiap_warning_dialog_type"

    const/16 v47, 0x7

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 543
    .end local v38    # "startDialogIntent":Landroid/content/Intent;
    .end local v45    # "wm":Landroid/net/wifi/WifiManager;
    :cond_36
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_2

    .line 544
    const/16 v46, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 547
    .end local v21    # "isDoNotShowAgain":I
    :cond_37
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v46

    if-eqz v46, :cond_2

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_2

    .line 548
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Start provisioning Wifi Sharing"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/16 v46, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 552
    .end local v23    # "mManager":Landroid/net/wifi/WifiManager;
    :cond_38
    const-string/jumbo v46, "VZW"

    sget-object v47, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_3a

    .line 553
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    .line 554
    .restart local v23    # "mManager":Landroid/net/wifi/WifiManager;
    if-eqz v22, :cond_39

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v46

    const/16 v47, 0x2

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_39

    .line 555
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Wifi Sharing ON but provision failed toast"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const v46, 0x7f0b0cf6

    const/16 v47, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v40

    .line 557
    .restart local v40    # "toast":Landroid/widget/Toast;
    invoke-virtual/range {v40 .. v40}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v46

    const v47, 0x102000b

    invoke-virtual/range {v46 .. v47}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 558
    .restart local v41    # "tv":Landroid/widget/TextView;
    const/16 v46, 0x11

    move-object/from16 v0, v41

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 559
    invoke-virtual/range {v40 .. v40}, Landroid/widget/Toast;->show()V

    .line 561
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string/jumbo v47, "wifi_ap_wifi_sharing"

    const/16 v48, 0x0

    invoke-static/range {v46 .. v48}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 562
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "WIFI_AP_WIFI_SHARING provider value after putting 0"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v48

    const-string/jumbo v49, "wifi_ap_wifi_sharing"

    invoke-static/range {v48 .. v49}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    .line 566
    :goto_e
    new-instance v26, Landroid/content/Intent;

    const-string/jumbo v46, "com.samsung.intent.action.UPDATE_OPTIONS_MENU"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .restart local v26    # "menu_update":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 568
    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 563
    .end local v26    # "menu_update":Landroid/content/Intent;
    :catch_8
    move-exception v16

    .line 564
    .restart local v16    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "Error in putting off provider value"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 570
    .end local v16    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    .end local v40    # "toast":Landroid/widget/Toast;
    .end local v41    # "tv":Landroid/widget/TextView;
    :cond_39
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Showing Wi-Fi Disconnect toast"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v46, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    move-object/from16 v0, v20

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    .local v20, "info_intent":Landroid/content/Intent;
    const-string/jumbo v46, "info_type"

    const/16 v47, 0x1e

    move-object/from16 v0, v20

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 573
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 575
    .end local v20    # "info_intent":Landroid/content/Intent;
    .end local v23    # "mManager":Landroid/net/wifi/WifiManager;
    :cond_3a
    if-nez v22, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isMobileApON(Landroid/content/Context;)Z

    move-result v46

    if-eqz v46, :cond_2

    .line 576
    const-string/jumbo v46, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    .line 577
    .restart local v23    # "mManager":Landroid/net/wifi/WifiManager;
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v46

    if-eqz v46, :cond_2

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getProvisionSuccess()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_2

    .line 578
    const-string/jumbo v46, "WifiApBroadcastReceiver"

    const-string/jumbo v47, "Start Provisioning as Provisioning is needed"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/16 v46, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequestWifiSharing(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 140
    .end local v22    # "isWifiSharingEnabled":Z
    .end local v23    # "mManager":Landroid/net/wifi/WifiManager;
    .restart local v9    # "apState":I
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    :catch_9
    move-exception v16

    .restart local v16    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    goto/16 :goto_1

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 160
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method showTimeoutNotification(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0b0d0d

    const/4 v6, 0x0

    .line 651
    const v1, 0x108008a

    .line 652
    .local v1, "icon":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 654
    .local v4, "title":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 655
    .local v3, "notificationIntent":Landroid/content/Intent;
    invoke-static {p1, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 657
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, v1, v4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 658
    .local v2, "notification":Landroid/app/Notification;
    invoke-virtual {v2, p1, v4, v9, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 660
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v5, :cond_0

    .line 661
    const-string/jumbo v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 662
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 650
    return-void
.end method
