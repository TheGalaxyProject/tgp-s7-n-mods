.class public Lcom/android/settingslib/wifi/WifiStatusTracker;
.super Ljava/lang/Object;
.source "WifiStatusTracker.java"


# static fields
.field private static final CSC_SUPPORT_WIFI_AGGREGATION:Z

.field private static DBG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field public connected:Z

.field public enabled:Z

.field public level:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mIgnoreFirstStickyBroadcastForNetworkStateChanged:Z

.field private mShowConnectedToast:Z

.field private mSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private prevConnected:Z

.field public rssi:I

.field private setWifiActiveNetwork:Z

.field public ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string/jumbo v0, "WifiStatusTracker"

    sput-object v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->TAG:Ljava/lang/String;

    .line 42
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->DBG:Z

    .line 57
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "CscFeature_Wifi_SupportWifiAggregation"

    .line 57
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->CSC_SUPPORT_WIFI_AGGREGATION:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 1
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mIgnoreFirstStickyBroadcastForNetworkStateChanged:Z

    .line 69
    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    .line 64
    return-void
.end method

.method private getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    const/4 v6, 0x0

    .line 146
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 148
    return-object v3

    .line 151
    :cond_0
    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 152
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 153
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 154
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 155
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object v4

    .line 153
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_2
    return-object v6
.end method

.method private showConnectedToast(Ljava/lang/String;)V
    .locals 11
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 162
    if-nez p1, :cond_0

    .line 163
    sget-object v6, Lcom/android/settingslib/wifi/WifiStatusTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failed to show Wi-Fi connected toast. Ssid is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void

    .line 168
    :cond_0
    sget-boolean v6, Lcom/android/settingslib/wifi/WifiStatusTracker;->CSC_SUPPORT_WIFI_AGGREGATION:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "VerizonWiFi"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 169
    sget-boolean v6, Lcom/android/settingslib/wifi/WifiStatusTracker;->DBG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/settingslib/wifi/WifiStatusTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failed to show Wi-Fi connected toast. It\'s aggregation ap"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    return-void

    .line 175
    :cond_2
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-eqz v6, :cond_3

    .line 176
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v6}, Lcom/samsung/android/knox/custom/SystemManager;->getWifiConnectedMessageState()Z

    move-result v6

    if-nez v6, :cond_3

    .line 177
    sget-object v6, Lcom/android/settingslib/wifi/WifiStatusTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Knox Customization: suppressing Wifi connected toast"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void

    .line 184
    :cond_3
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 185
    .local v3, "res":Landroid/content/res/Resources;
    sget v6, Lcom/android/settingslib/R$color;->wifi_connected_toast:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "#ff"

    const-string/jumbo v8, "#"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "colorText":Ljava/lang/String;
    const-string/jumbo v6, "#DEAD00"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 187
    sget v6, Lcom/android/settingslib/R$string;->wifi_setup_title_connected_network:I

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p1, v7, v9

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "connectedText":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    invoke-static {v6, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 161
    .end local v1    # "connectedText":Ljava/lang/String;
    :goto_0
    return-void

    .line 192
    :cond_4
    :try_start_0
    sget v6, Lcom/android/settingslib/R$string;->wifi_setup_title_connected_network:I

    .line 191
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<font color="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "</font>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 191
    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .restart local v1    # "connectedText":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 195
    .local v4, "toast":Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 196
    .local v5, "tv":Landroid/widget/TextView;
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 197
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    .end local v1    # "connectedText":Ljava/lang/String;
    .end local v4    # "toast":Landroid/widget/Toast;
    .end local v5    # "tv":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/util/UnknownFormatConversionException;
    sget-object v6, Lcom/android/settingslib/wifi/WifiStatusTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/UnknownFormatConversionException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    const-string/jumbo v5, "wifi_state"

    .line 84
    const/4 v6, 0x4

    .line 83
    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 84
    const/4 v6, 0x3

    .line 83
    if-ne v5, v6, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    .line 80
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v4

    .line 83
    goto :goto_0

    .line 85
    :cond_2
    const-string/jumbo v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 87
    const-string/jumbo v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 88
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    :cond_3
    iput-boolean v4, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    .line 91
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    if-eqz v3, :cond_6

    .line 93
    const-string/jumbo v3, "wifiInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 94
    const-string/jumbo v3, "wifiInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiInfo;

    move-object v1, v3

    .line 96
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    :goto_2
    if-eqz v1, :cond_5

    .line 97
    invoke-direct {p0, v1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    goto :goto_1

    .line 95
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_4
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    goto :goto_2

    .line 99
    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_5
    iput-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    goto :goto_1

    .line 101
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_6
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    if-nez v3, :cond_0

    .line 102
    iput-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    goto :goto_1

    .line 104
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_7
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 105
    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v5, :cond_8

    return-void

    .line 106
    :cond_8
    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 107
    .restart local v2    # "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v3, :cond_d

    .line 108
    iput-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->setWifiActiveNetwork:Z

    .line 113
    :goto_3
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->setWifiActiveNetwork:Z

    if-eqz v3, :cond_f

    .line 115
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 116
    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_e

    .line 117
    invoke-direct {p0, v1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    .line 118
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    if-eqz v3, :cond_9

    const-string/jumbo v3, "<unknown ssid>"

    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 119
    :cond_9
    iput-boolean v4, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->setWifiActiveNetwork:Z

    .line 129
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_a
    :goto_4
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mIgnoreFirstStickyBroadcastForNetworkStateChanged:Z

    if-eqz v3, :cond_10

    .line 130
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->setWifiActiveNetwork:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/settingslib/wifi/WifiStatusTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Current process is restarted. Ignore to show Wi-Fi connected toast"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_b
    iput-boolean v4, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mIgnoreFirstStickyBroadcastForNetworkStateChanged:Z

    .line 137
    :cond_c
    :goto_5
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->setWifiActiveNetwork:Z

    iput-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->prevConnected:Z

    goto/16 :goto_1

    .line 110
    :cond_d
    iput-boolean v4, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->setWifiActiveNetwork:Z

    goto :goto_3

    .line 122
    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_e
    iput-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    goto :goto_4

    .line 124
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_f
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->setWifiActiveNetwork:Z

    if-nez v3, :cond_a

    .line 125
    iput-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    goto :goto_4

    .line 132
    :cond_10
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->prevConnected:Z

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->setWifiActiveNetwork:Z

    if-eqz v3, :cond_11

    .line 133
    sget-boolean v3, Lcom/android/settingslib/wifi/WifiStatusTracker;->DBG:Z

    if-eqz v3, :cond_c

    sget-object v3, Lcom/android/settingslib/wifi/WifiStatusTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "already to show connected toast"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 134
    :cond_11
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->setWifiActiveNetwork:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mShowConnectedToast:Z

    if-eqz v3, :cond_c

    .line 135
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settingslib/wifi/WifiStatusTracker;->showConnectedToast(Ljava/lang/String;)V

    goto :goto_5

    .line 138
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_12
    const-string/jumbo v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    const-string/jumbo v3, "newRssi"

    const/16 v4, -0xc8

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    .line 141
    iget v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v3

    iput v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    goto/16 :goto_1
.end method
