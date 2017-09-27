.class public Lcom/samsung/android/settings/wifi/WifiGateMessageManager;
.super Ljava/lang/Object;
.source "WifiGateMessageManager.java"


# instance fields
.field private mPreviousState:Landroid/net/NetworkInfo$DetailedState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;->mPreviousState:Landroid/net/NetworkInfo$DetailedState;

    .line 29
    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public handleStateChangedForGateMessage(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 2
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;->mPreviousState:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_1

    .line 56
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_2

    .line 57
    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M> WIFI_STATUS_CONNECTED </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;->mPreviousState:Landroid/net/NetworkInfo$DetailedState;

    .line 54
    :cond_1
    return-void

    .line 58
    :cond_2
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    .line 59
    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M> WIFI_STATUS_DISCONNECTED </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleWifiStateChangedForGateMassage(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 37
    packed-switch p1, :pswitch_data_0

    .line 36
    :goto_0
    :pswitch_0
    return-void

    .line 41
    :pswitch_1
    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M> WIFI_ON </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 44
    :pswitch_2
    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M> WIFI_DISABLING </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    :pswitch_3
    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M> WIFI_OFF </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
