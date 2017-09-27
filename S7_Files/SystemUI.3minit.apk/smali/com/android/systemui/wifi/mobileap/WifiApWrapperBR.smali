.class public Lcom/android/systemui/wifi/mobileap/WifiApWrapperBR;
.super Landroid/content/BroadcastReceiver;
.source "WifiApWrapperBR.java"


# static fields
.field private static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/wifi/mobileap/WifiApWrapperBR;->DBG:Z

    .line 24
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/android/systemui/wifi/mobileap/WifiApWrapperBR;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "DialogType"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    const-string/jumbo v6, "WifiApWrapperBR"

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

    .line 63
    const-string/jumbo v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 64
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    const-string/jumbo v6, "extra_type"

    const/4 v7, -0x1

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 65
    .local v0, "extra_type":I
    const-string/jumbo v6, "req_type"

    const/4 v7, -0x1

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 66
    .local v2, "req_type":I
    if-eqz v1, :cond_5

    .line 67
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    .line 68
    .local v5, "wifiApState":I
    const/4 v6, 0x5

    if-ne p2, v6, :cond_1

    .line 69
    const/16 v6, 0xc

    if-eq v5, v6, :cond_0

    .line 70
    const/16 v6, 0xd

    if-ne v5, v6, :cond_3

    .line 71
    :cond_0
    return-void

    .line 73
    :cond_1
    const/16 v6, 0xc

    if-eq v5, v6, :cond_2

    .line 74
    const/16 v6, 0xd

    if-eq v5, v6, :cond_2

    .line 75
    return-void

    .line 77
    :cond_2
    const-string/jumbo v6, "WifiApWrapperBR"

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

    .line 78
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 82
    :cond_3
    const-string/jumbo v6, "statusbar"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .line 83
    .local v4, "statusBar":Landroid/app/StatusBarManager;
    if-eqz v4, :cond_4

    .line 84
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 86
    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v3, "startDialogIntent":Landroid/content/Intent;
    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    const-string/jumbo v6, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string/jumbo v6, "wifiap_warning_dialog_type"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    const-string/jumbo v6, "req_type"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string/jumbo v6, "extra_type"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    .end local v3    # "startDialogIntent":Landroid/content/Intent;
    .end local v4    # "statusBar":Landroid/app/StatusBarManager;
    .end local v5    # "wifiApState":I
    :cond_5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 29
    const-string/jumbo v4, "WifiApWrapperBR"

    const-string/jumbo v5, "action is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void

    .line 33
    :cond_0
    const-string/jumbo v5, "com.samsung.android.intent.action.WIFI_AP_ENABLE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 34
    const-string/jumbo v5, "WifiApWrapperBR"

    const-string/jumbo v6, "onReceive: WIFIAP_ENABLE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string/jumbo v5, "TMO"

    sget-object v6, Lcom/android/systemui/wifi/mobileap/WifiApWrapperBR;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "NEWCO"

    sget-object v6, Lcom/android/systemui/wifi/mobileap/WifiApWrapperBR;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "USC"

    sget-object v6, Lcom/android/systemui/wifi/mobileap/WifiApWrapperBR;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_0
    if-nez v5, :cond_2

    .line 36
    const-string/jumbo v4, "WifiApWrapperBR"

    const-string/jumbo v5, "onReceive: do nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void

    :cond_1
    move v5, v1

    .line 35
    goto :goto_0

    .line 40
    :cond_2
    const-string/jumbo v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 41
    .local v3, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .line 42
    .local v2, "wifiApState":I
    const/16 v5, 0xc

    if-eq v2, v5, :cond_3

    .line 43
    const/16 v5, 0xa

    if-ne v2, v5, :cond_4

    .line 44
    :cond_3
    const-string/jumbo v4, "WifiApWrapperBR"

    const-string/jumbo v5, " ~ing do nothing , return"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void

    .line 46
    :cond_4
    const/16 v5, 0xd

    if-ne v2, v5, :cond_5

    .line 47
    const-string/jumbo v5, "WifiApWrapperBR"

    const-string/jumbo v6, " Enabled, trun off "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {v3, v7, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 49
    return-void

    .line 50
    :cond_5
    const/16 v5, 0xb

    if-eq v2, v5, :cond_6

    const/16 v5, 0xe

    if-ne v2, v5, :cond_9

    .line 51
    :cond_6
    const-string/jumbo v5, "WifiApWrapperBR"

    const-string/jumbo v6, " Disabled, try to turn on"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    .line 53
    .local v1, "isAirplaneMode":Z
    :goto_1
    if-eqz v1, :cond_8

    .line 54
    const v5, 0x7f0f04fa

    invoke-static {p1, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 55
    return-void

    .end local v1    # "isAirplaneMode":Z
    :cond_7
    move v1, v4

    .line 52
    goto :goto_1

    .line 57
    .restart local v1    # "isAirplaneMode":Z
    :cond_8
    const/4 v4, 0x5

    invoke-direct {p0, p1, v4, p2}, Lcom/android/systemui/wifi/mobileap/WifiApWrapperBR;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 26
    .end local v1    # "isAirplaneMode":Z
    .end local v2    # "wifiApState":I
    .end local v3    # "wm":Landroid/net/wifi/WifiManager;
    :cond_9
    return-void
.end method
