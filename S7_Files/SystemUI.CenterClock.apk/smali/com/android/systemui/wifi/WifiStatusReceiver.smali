.class public Lcom/android/systemui/wifi/WifiStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusReceiver.java"


# static fields
.field static final CSC_EAP_METHOD:Ljava/lang/String;

.field static final CSC_ENABLE_WIFI_CONNECTION_TYPE:Z

.field private static final CSC_VENDOR_NOTI_STYLE:Ljava/lang/String;

.field static final CSC_WIFI_ERRORCODE:Z

.field static final DEBUG:Z

.field private static mShownConnectedToast:Z

.field public static sShowOnceFlag:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/wifi/WifiStatusReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    .line 65
    sput-boolean v1, Lcom/android/systemui/wifi/WifiStatusReceiver;->sShowOnceFlag:Z

    .line 66
    sput-boolean v1, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShownConnectedToast:Z

    .line 69
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    .line 69
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_WIFI_ERRORCODE:Z

    .line 71
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "CscFeature_Wifi_EapMethodSetting"

    .line 71
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_EAP_METHOD:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "CscFeature_Wifi_EnableMenuConnectionType"

    .line 73
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_ENABLE_WIFI_CONNECTION_TYPE:Z

    .line 75
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 76
    const-string/jumbo v1, "CscFeature_Wifi_ConfigWifiNotificationStyle"

    .line 75
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_VENDOR_NOTI_STYLE:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static enableToShowWifiPickerDialog(Z)V
    .locals 3
    .param p0, "flag"    # Z

    .prologue
    .line 472
    sget-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiStatusReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Want to show AP LIST:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    sput-boolean p0, Lcom/android/systemui/wifi/WifiStatusReceiver;->sShowOnceFlag:Z

    .line 471
    return-void
.end method

.method public static getConfiguredNetworks(Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .locals 8
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v6, "retConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v3, -0x1

    .line 400
    .local v3, "lastGetNetworkId":I
    const/16 v4, 0x3c

    .local v4, "loopLimit":I
    move v5, v4

    .line 401
    .end local v4    # "loopLimit":I
    .local v5, "loopLimit":I
    :goto_0
    add-int/lit8 v4, v5, -0x1

    .end local v5    # "loopLimit":I
    .restart local v4    # "loopLimit":I
    if-lez v5, :cond_1

    .line 402
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiManager;->semGetConfiguredNetworks(I)Ljava/util/List;

    move-result-object v2

    .line 403
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 404
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 405
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    move v5, v4

    .end local v4    # "loopLimit":I
    .restart local v5    # "loopLimit":I
    goto :goto_0

    .line 412
    .end local v1    # "config$iterator":Ljava/util/Iterator;
    .end local v2    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v5    # "loopLimit":I
    .restart local v4    # "loopLimit":I
    :cond_1
    return-object v6
.end method

.method private static isSameSecurity(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p0, "result"    # Landroid/net/wifi/ScanResult;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 486
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    :cond_0
    return v3

    .line 490
    :cond_1
    return v2

    .line 491
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 492
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 493
    return v3

    .line 495
    :cond_3
    return v2

    .line 496
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 497
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_5

    .line 498
    return v3

    .line 500
    :cond_5
    return v2

    .line 504
    :cond_6
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-nez v0, :cond_7

    .line 505
    return v3

    .line 507
    :cond_7
    return v2
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 477
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 478
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 479
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 480
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 482
    :cond_0
    return-object p0
.end method

.method private startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 429
    sget-boolean v1, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiStatusReceiver"

    const-string/jumbo v2, "SystemUI Call AP LIST dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, "startDialogIntent":Landroid/content/Intent;
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 440
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 428
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 42
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "action":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    .line 82
    sget-boolean v38, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v38, :cond_0

    const-string/jumbo v38, "WifiStatusReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "action: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    const-string/jumbo v38, "com.samsung.android.net.wifi.SHOW_AP_LIST_DIALOG"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2

    .line 85
    sget-boolean v38, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v38, :cond_1

    const-string/jumbo v38, "WifiStatusReceiver"

    const-string/jumbo v39, "ACTION CAME : com.samsung.android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    const-string/jumbo v38, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_12

    .line 96
    const-string/jumbo v38, "info_type"

    const/16 v39, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 98
    .local v21, "msgId":I
    sparse-switch v21, :sswitch_data_0

    goto :goto_0

    .line 100
    :sswitch_0
    const v38, 0x7f0f0349

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 103
    :sswitch_1
    const v38, 0x7f0f034a

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v32

    .line 104
    .local v32, "toastAlert":Landroid/widget/Toast;
    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 105
    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 108
    .end local v32    # "toastAlert":Landroid/widget/Toast;
    :sswitch_2
    const v38, 0x7f0f034b

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 111
    :sswitch_3
    const v38, 0x7f0f034c

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 114
    :sswitch_4
    const v38, 0x7f0f034d

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 117
    :sswitch_5
    const v38, 0x7f0f034e

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 121
    :sswitch_6
    const v38, 0x7f0f034f

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 126
    :sswitch_7
    sget-boolean v38, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_WIFI_ERRORCODE:Z

    if-eqz v38, :cond_e

    .line 127
    const-string/jumbo v38, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 128
    .local v19, "message":Ljava/lang/String;
    const-string/jumbo v38, "ssid"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 129
    .local v29, "ssid":Ljava/lang/String;
    const-string/jumbo v38, "WifiStatusReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "SHOW EAP SIM MESSAGE ACTION: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-nez v19, :cond_3

    return-void

    .line 131
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v38

    const-string/jumbo v39, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual/range {v38 .. v39}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_6

    .line 132
    const-string/jumbo v38, "General failure"

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_5

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0f0351

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 137
    :cond_4
    :goto_1
    const/16 v38, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 134
    :cond_5
    const-string/jumbo v38, "Not subscribed to the requested service"

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_4

    if-eqz v29, :cond_4

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aput-object v29, v39, v40

    const v40, 0x7f0f0354

    move-object/from16 v0, v38

    move/from16 v1, v40

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto :goto_1

    .line 139
    :cond_6
    const/16 v17, 0x1

    .line 140
    .local v17, "isVzwMessage":Z
    const-string/jumbo v38, "There is a problem connecting you to Verizon Wi-Fi Access"

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0f0355

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 157
    :goto_2
    if-eqz v17, :cond_1

    .line 158
    const/16 v38, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 142
    :cond_7
    const-string/jumbo v38, "There is a problem with your Verizon Wi-Fi Access account"

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_8

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0f0356

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    .line 144
    :cond_8
    const-string/jumbo v38, "You are not subscribed to Verizon Wi-Fi Access"

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_9

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0f0357

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    .line 146
    :cond_9
    const-string/jumbo v38, "You can\'t connect to Verizon Wi-Fi Access from outside the Verizon coverage area"

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_a

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0f0358

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    .line 148
    :cond_a
    const-string/jumbo v38, "There is a problem with your Verizon Wi-Fi Access account2"

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_b

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0f0356

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    .line 150
    :cond_b
    const-string/jumbo v38, "You are already connected to Verizon Wi-Fi Access"

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_c

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0f0359

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    .line 152
    :cond_c
    const-string/jumbo v38, "Verizon Wi-Fi Access is not available from your location"

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_d

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0f035a

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    .line 155
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 161
    .end local v17    # "isVzwMessage":Z
    .end local v19    # "message":Ljava/lang/String;
    .end local v29    # "ssid":Ljava/lang/String;
    :cond_e
    sget-object v38, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_EAP_METHOD:Ljava/lang/String;

    const-string/jumbo v39, "AKA"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1

    .line 162
    const-string/jumbo v38, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 163
    .restart local v19    # "message":Ljava/lang/String;
    const-string/jumbo v38, "WifiStatusReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "onReceive, message of received: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-nez v19, :cond_f

    return-void

    .line 166
    :cond_f
    const-string/jumbo v38, "KTT"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v39

    const-string/jumbo v40, "CscFeature_Wifi_ConfigAuthMsgDisplayPolicy"

    invoke-virtual/range {v39 .. v40}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0f0350

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_10

    .line 168
    return-void

    .line 169
    :cond_10
    const-string/jumbo v38, "General failure KT_AKA"

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_1

    .line 170
    const/16 v38, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 177
    .end local v19    # "message":Ljava/lang/String;
    :sswitch_8
    const v38, 0x7f0f035e

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v31

    .line 178
    .local v31, "toast":Landroid/widget/Toast;
    invoke-virtual/range {v31 .. v31}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v38

    const v39, 0x102000b

    invoke-virtual/range {v38 .. v39}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 179
    .local v33, "tv":Landroid/widget/TextView;
    const/16 v38, 0x11

    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 180
    invoke-virtual/range {v31 .. v31}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 184
    .end local v31    # "toast":Landroid/widget/Toast;
    .end local v33    # "tv":Landroid/widget/TextView;
    :sswitch_9
    const-string/jumbo v38, "ssid"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 185
    .restart local v29    # "ssid":Ljava/lang/String;
    if-eqz v29, :cond_1

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 187
    .local v25, "res":Landroid/content/res/Resources;
    const v38, 0x7f0b0021

    move-object/from16 v0, v25

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    const-string/jumbo v39, "#ff"

    const-string/jumbo v40, "#"

    invoke-virtual/range {v38 .. v40}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, "colorText":Ljava/lang/String;
    const-string/jumbo v38, "#DEAD00"

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_11

    .line 189
    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput-object v29, v38, v39

    const v39, 0x7f0f0348

    move-object/from16 v0, v25

    move/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 190
    .local v20, "msg":Ljava/lang/String;
    const/16 v38, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 193
    .end local v20    # "msg":Ljava/lang/String;
    :cond_11
    const/16 v38, 0x1

    :try_start_0
    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    .line 195
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "<font color="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, ">"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static/range {v29 .. v29}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, "</font>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    aput-object v39, v38, v40

    .line 194
    const v39, 0x7f0f0348

    .line 193
    move-object/from16 v0, v25

    move/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 196
    .restart local v20    # "msg":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v31

    .line 197
    .restart local v31    # "toast":Landroid/widget/Toast;
    invoke-virtual/range {v31 .. v31}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v38

    const v39, 0x102000b

    invoke-virtual/range {v38 .. v39}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 198
    .restart local v33    # "tv":Landroid/widget/TextView;
    const/16 v38, 0x11

    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 199
    invoke-virtual/range {v31 .. v31}, Landroid/widget/Toast;->show()V

    .line 200
    const-string/jumbo v38, "WifiStatusReceiver"

    const-string/jumbo v39, "Show NETWORK_NOT_FOUND Toast"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 201
    .end local v20    # "msg":Ljava/lang/String;
    .end local v31    # "toast":Landroid/widget/Toast;
    .end local v33    # "tv":Landroid/widget/TextView;
    :catch_0
    move-exception v14

    .line 202
    .local v14, "e":Ljava/util/UnknownFormatConversionException;
    const-string/jumbo v38, "WifiStatusReceiver"

    invoke-virtual {v14}, Ljava/util/UnknownFormatConversionException;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 212
    .end local v6    # "colorText":Ljava/lang/String;
    .end local v14    # "e":Ljava/util/UnknownFormatConversionException;
    .end local v21    # "msgId":I
    .end local v25    # "res":Landroid/content/res/Resources;
    .end local v29    # "ssid":Ljava/lang/String;
    :cond_12
    const-string/jumbo v38, "KTT"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v39

    const-string/jumbo v40, "CscFeature_Wifi_ConfigAuthMsgDisplayPolicy"

    invoke-virtual/range {v39 .. v40}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_17

    .line 213
    const-string/jumbo v38, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    .line 212
    if-eqz v38, :cond_17

    .line 214
    const-string/jumbo v38, "ERROR_NOTIFICATION"

    const/16 v39, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 215
    .local v15, "err":I
    const/16 v19, 0x0

    .line 217
    .local v19, "message":Ljava/lang/String;
    if-nez v15, :cond_13

    .line 219
    return-void

    .line 220
    :cond_13
    const/16 v38, 0x4

    move/from16 v0, v38

    if-ne v15, v0, :cond_14

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0f035c

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 231
    .local v19, "message":Ljava/lang/String;
    :goto_3
    const/16 v38, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 222
    .local v19, "message":Ljava/lang/String;
    :cond_14
    const/16 v38, 0x5

    move/from16 v0, v38

    if-ne v15, v0, :cond_15

    .line 223
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0f0353

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .local v19, "message":Ljava/lang/String;
    goto :goto_3

    .line 224
    .local v19, "message":Ljava/lang/String;
    :cond_15
    const/16 v38, 0x6

    move/from16 v0, v38

    if-ne v15, v0, :cond_16

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0f035b

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 226
    .local v19, "message":Ljava/lang/String;
    return-void

    .line 228
    .local v19, "message":Ljava/lang/String;
    :cond_16
    return-void

    .line 232
    .end local v15    # "err":I
    .end local v19    # "message":Ljava/lang/String;
    :cond_17
    const-string/jumbo v38, "com.samsung.intent.action.BCS_REQUEST"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1c

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 234
    .local v12, "data":Landroid/os/Bundle;
    if-nez v12, :cond_18

    .line 235
    const-string/jumbo v38, "WifiStatusReceiver"

    const-string/jumbo v39, "there is no extras"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void

    .line 238
    :cond_18
    const-string/jumbo v38, "command"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 239
    .local v7, "command":Ljava/lang/String;
    if-eqz v7, :cond_19

    .line 241
    const-string/jumbo v38, " "

    const-string/jumbo v39, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 243
    :cond_19
    const-string/jumbo v38, "AT+WIFIVALUE"

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1

    .line 244
    const-string/jumbo v38, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/net/wifi/WifiManager;

    .line 245
    .local v35, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v37

    .line 246
    .local v37, "wifiState":I
    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_1a

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1b

    .line 248
    :cond_1a
    new-instance v38, Landroid/content/Intent;

    const-string/jumbo v39, "com.samsung.intent.action.BCS_RESPONSE"

    invoke-direct/range {v38 .. v39}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v39, "response"

    const-string/jumbo v40, "ON"

    invoke-virtual/range {v38 .. v40}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v38

    .line 247
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 251
    :cond_1b
    new-instance v38, Landroid/content/Intent;

    const-string/jumbo v39, "com.samsung.intent.action.BCS_RESPONSE"

    invoke-direct/range {v38 .. v39}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v39, "response"

    const-string/jumbo v40, "OFF"

    invoke-virtual/range {v38 .. v40}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v38

    .line 250
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 254
    .end local v7    # "command":Ljava/lang/String;
    .end local v12    # "data":Landroid/os/Bundle;
    .end local v35    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v37    # "wifiState":I
    :cond_1c
    const-string/jumbo v38, "android.net.wifi.SCAN_RESULTS"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_1d

    .line 255
    const-string/jumbo v38, "com.sec.android.wifi.scan.result"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    .line 254
    if-eqz v38, :cond_2b

    .line 256
    :cond_1d
    sget-boolean v38, Lcom/android/systemui/wifi/WifiStatusReceiver;->sShowOnceFlag:Z

    if-eqz v38, :cond_1

    .line 257
    const/16 v38, 0x0

    sput-boolean v38, Lcom/android/systemui/wifi/WifiStatusReceiver;->sShowOnceFlag:Z

    .line 258
    const-string/jumbo v38, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/net/wifi/WifiManager;

    .line 261
    .restart local v35    # "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v36

    .line 262
    .local v36, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v36, :cond_1e

    invoke-virtual/range {v36 .. v36}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v38

    if-eqz v38, :cond_1e

    .line 263
    return-void

    .line 266
    :cond_1e
    const/4 v10, 0x0

    .line 267
    .local v10, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v28

    .line 269
    .local v28, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v38

    if-eqz v38, :cond_1f

    .line 270
    invoke-static/range {v35 .. v35}, Lcom/android/systemui/wifi/WifiStatusReceiver;->getConfiguredNetworks(Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v10

    .line 275
    .end local v10    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1f
    const/16 v30, 0x0

    .line 277
    .local v30, "ssid_count":I
    if-nez v10, :cond_22

    .line 278
    const-string/jumbo v38, "WifiStatusReceiver"

    const-string/jumbo v39, "constructAccessPoints config is null"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_20
    :goto_4
    const-string/jumbo v38, "WifiStatusReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "SCAN_RESULTS_AVAILABLE_ACTION RECEIVED : sShowOnceFlag - true, ssid_count - "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v38

    if-eqz v38, :cond_29

    sget-boolean v38, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_ENABLE_WIFI_CONNECTION_TYPE:Z

    if-eqz v38, :cond_29

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string/jumbo v39, "wifi_cmcc_manual"

    const/16 v40, 0x0

    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    .line 301
    .local v34, "wifiConnectionType":I
    const-string/jumbo v38, "WifiStatusReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "wifiConnectionType is"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-eq v0, v1, :cond_21

    if-eqz v30, :cond_28

    if-nez v34, :cond_28

    :cond_21
    return-void

    .line 280
    .end local v34    # "wifiConnectionType":I
    :cond_22
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "config$iterator":Ljava/util/Iterator;
    :cond_23
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_20

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 281
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v8, :cond_24

    .line 282
    const-string/jumbo v38, "WifiStatusReceiver"

    const-string/jumbo v39, "constructAccessPoints config is null"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 285
    :cond_24
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v38, v0

    if-nez v38, :cond_27

    const-string/jumbo v29, ""

    .line 286
    .restart local v29    # "ssid":Ljava/lang/String;
    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "result$iterator":Ljava/util/Iterator;
    :cond_25
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_26

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/ScanResult;

    .line 287
    .local v26, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 289
    .local v18, "mScanSSid":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_25

    move-object/from16 v0, v26

    invoke-static {v0, v8}, Lcom/android/systemui/wifi/WifiStatusReceiver;->isSameSecurity(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v38

    if-eqz v38, :cond_25

    .line 290
    add-int/lit8 v30, v30, 0x1

    .line 294
    .end local v18    # "mScanSSid":Ljava/lang/String;
    .end local v26    # "result":Landroid/net/wifi/ScanResult;
    :cond_26
    if-eqz v30, :cond_23

    goto/16 :goto_4

    .line 285
    .end local v27    # "result$iterator":Ljava/util/Iterator;
    .end local v29    # "ssid":Ljava/lang/String;
    :cond_27
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/systemui/wifi/WifiStatusReceiver;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .restart local v29    # "ssid":Ljava/lang/String;
    goto :goto_6

    .line 303
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "config$iterator":Ljava/util/Iterator;
    .end local v29    # "ssid":Ljava/lang/String;
    .restart local v34    # "wifiConnectionType":I
    :cond_28
    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 304
    .end local v34    # "wifiConnectionType":I
    :cond_29
    if-nez v30, :cond_1

    .line 305
    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v38

    if-eqz v38, :cond_2a

    .line 306
    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 308
    :cond_2a
    const/16 v38, 0x1

    sput-boolean v38, Lcom/android/systemui/wifi/WifiStatusReceiver;->sShowOnceFlag:Z

    .line 309
    const-string/jumbo v38, "WifiStatusReceiver"

    const-string/jumbo v39, "!wifiManager.isWifiEnabled(), sShowOnceFlag = true"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 313
    .end local v28    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v30    # "ssid_count":I
    .end local v35    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v36    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_2b
    const-string/jumbo v38, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2d

    .line 314
    const-string/jumbo v38, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/net/wifi/WifiManager;

    .line 315
    .restart local v35    # "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v38

    if-eqz v38, :cond_1

    .line 316
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v38

    if-eqz v38, :cond_1

    .line 317
    const-string/jumbo v38, "WifiStatusReceiver"

    const-string/jumbo v39, "Factory Mode is ON. Turn off Wi-Fi"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/16 v38, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 319
    const-string/jumbo v38, "ATT"

    sget-object v39, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_VENDOR_NOTI_STYLE:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2c

    .line 320
    const-string/jumbo v38, "WifiStatusReceiver"

    const-string/jumbo v39, "Factory Mode is ON. Disabled internet service check"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    .line 322
    const-string/jumbo v39, "wifi_watchdog_poor_network_test_enabled"

    const/16 v40, 0x0

    .line 321
    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 324
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0f0360

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 325
    .local v16, "errMsg":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v38

    const/16 v39, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 330
    .end local v16    # "errMsg":Ljava/lang/String;
    .end local v35    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2d
    const-string/jumbo v38, "ACTION_AGGREGATION_DELAY"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_30

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v38

    const-string/jumbo v39, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual/range {v38 .. v39}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_30

    .line 331
    const-string/jumbo v38, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/net/wifi/WifiManager;

    .line 332
    .restart local v35    # "wifiManager":Landroid/net/wifi/WifiManager;
    const/16 v29, 0x0

    .line 333
    .local v29, "ssid":Ljava/lang/String;
    if-eqz v35, :cond_2e

    .line 334
    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v29

    .line 335
    .end local v29    # "ssid":Ljava/lang/String;
    :cond_2e
    if-eqz v29, :cond_1

    .line 336
    const-string/jumbo v38, "ro.build.scafe.cream"

    invoke-static/range {v38 .. v38}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string/jumbo v39, "white"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_2f

    .line 337
    new-instance v11, Landroid/view/ContextThemeWrapper;

    const v38, 0x103012b

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-direct {v11, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local p1    # "context":Landroid/content/Context;
    .local v11, "context":Landroid/content/Context;
    move-object/from16 p1, v11

    .line 339
    .end local v11    # "context":Landroid/content/Context;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0b0021

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    const-string/jumbo v39, "#ff"

    const-string/jumbo v40, "#"

    invoke-virtual/range {v38 .. v40}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 340
    .restart local v6    # "colorText":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    .line 342
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "<font color="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ">"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static/range {v29 .. v29}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, "</font>"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x0

    aput-object v40, v39, v41

    .line 341
    const v40, 0x7f0f009c

    .line 340
    move-object/from16 v0, v38

    move/from16 v1, v40

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 343
    .restart local v20    # "msg":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v38

    const/16 v39, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v31

    .line 344
    .restart local v31    # "toast":Landroid/widget/Toast;
    invoke-virtual/range {v31 .. v31}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v38

    const v39, 0x102000b

    invoke-virtual/range {v38 .. v39}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 345
    .restart local v33    # "tv":Landroid/widget/TextView;
    const/16 v38, 0x11

    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 346
    invoke-virtual/range {v31 .. v31}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 349
    .end local v6    # "colorText":Ljava/lang/String;
    .end local v20    # "msg":Ljava/lang/String;
    .end local v31    # "toast":Landroid/widget/Toast;
    .end local v33    # "tv":Landroid/widget/TextView;
    .end local v35    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_30
    const-string/jumbo v38, "ACTION_AGGREGATION_DISCONNECT"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_31

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v38

    const-string/jumbo v39, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual/range {v38 .. v39}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_31

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0f035d

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 351
    .restart local v20    # "msg":Ljava/lang/String;
    const/16 v38, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v31

    .line 352
    .restart local v31    # "toast":Landroid/widget/Toast;
    invoke-virtual/range {v31 .. v31}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 355
    .end local v20    # "msg":Ljava/lang/String;
    .end local v31    # "toast":Landroid/widget/Toast;
    :cond_31
    const-string/jumbo v38, "com.samsung.android.net.wifi.SHOW_SCC_DIALOG"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1

    .line 356
    const-string/jumbo v38, "netid"

    const/16 v39, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 357
    .local v22, "netId":I
    const-string/jumbo v38, "wifip2p"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 358
    .local v24, "p2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v23

    .line 359
    .local v23, "p2pChannel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    new-instance v38, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0f035f

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 359
    invoke-virtual/range {v38 .. v39}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    .line 361
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0f0042

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    new-instance v40, Lcom/android/systemui/wifi/WifiStatusReceiver$1;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, v23

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/wifi/WifiStatusReceiver$1;-><init>(Lcom/android/systemui/wifi/WifiStatusReceiver;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)V

    .line 359
    invoke-virtual/range {v38 .. v40}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    .line 382
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0f0017

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    new-instance v40, Lcom/android/systemui/wifi/WifiStatusReceiver$2;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/wifi/WifiStatusReceiver$2;-><init>(Lcom/android/systemui/wifi/WifiStatusReceiver;)V

    .line 359
    invoke-virtual/range {v38 .. v40}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    .line 388
    .local v13, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v38

    const/16 v39, 0x7d8

    invoke-virtual/range {v38 .. v39}, Landroid/view/Window;->setType(I)V

    .line 389
    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0xa -> :sswitch_6
        0x14 -> :sswitch_7
        0x1e -> :sswitch_8
        0x32 -> :sswitch_9
    .end sparse-switch
.end method
