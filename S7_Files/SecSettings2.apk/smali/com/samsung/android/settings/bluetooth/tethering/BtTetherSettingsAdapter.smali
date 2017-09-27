.class public final Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;
.super Ljava/lang/Object;
.source "BtTetherSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$SwitchCallback;,
        Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$UpdateProxyCallback;
    }
.end annotation


# static fields
.field private static isTetherSwitchChecked:Z

.field private static isTetherSwitchEnabled:Z

.field private static mAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

.field private static mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private static mProxyCb:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$UpdateProxyCallback;

.field private static mSwitchCb:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$SwitchCallback;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->isTetherSwitchEnabled:Z

    .line 39
    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->isTetherSwitchChecked:Z

    .line 37
    return-void
.end method

.method public static connectFromNAP(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 102
    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_0

    .line 103
    const-string/jumbo v0, "BtTetherSettingsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connect from NAP device to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothPan;->connectFromNAP(Landroid/bluetooth/BluetoothDevice;)Z

    .line 100
    :cond_0
    return-void
.end method

.method public static getBluetoothPanProxy()Landroid/bluetooth/BluetoothPan;
    .locals 2

    .prologue
    .line 127
    const-string/jumbo v0, "BtTetherSettingsAdapter"

    const-string/jumbo v1, "getBluetoothPanProxy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object v0
.end method

.method public static getBtTetheredDeviceHistory()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    const-string/jumbo v0, "BtTetherSettingsAdapter"

    const-string/jumbo v1, "getBtTetheredDeviceHistory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->getTetheredDeviceList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    invoke-direct {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    .line 34
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    return-object v0
.end method

.method public static getSwitchChecked()Z
    .locals 3

    .prologue
    .line 85
    const-string/jumbo v0, "BtTetherSettingsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSwitchChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->isTetherSwitchChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->isTetherSwitchChecked:Z

    return v0
.end method

.method public static registerCallback(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$SwitchCallback;)V
    .locals 2
    .param p0, "cb"    # Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$SwitchCallback;

    .prologue
    .line 43
    const-string/jumbo v0, "BtTetherSettingsAdapter"

    const-string/jumbo v1, "registerCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sput-object p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mSwitchCb:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$SwitchCallback;

    .line 42
    return-void
.end method

.method public static registerProxyCallback(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$UpdateProxyCallback;)V
    .locals 0
    .param p0, "cb"    # Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$UpdateProxyCallback;

    .prologue
    .line 110
    sput-object p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mProxyCb:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$UpdateProxyCallback;

    .line 109
    return-void
.end method

.method public static removeBluetoothPanProxy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    const-string/jumbo v0, "BtTetherSettingsAdapter"

    const-string/jumbo v1, "removeBluetoothPanProxy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sput-object v2, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    .line 135
    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mProxyCb:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$UpdateProxyCallback;

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mProxyCb:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$UpdateProxyCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$UpdateProxyCallback;->onUpdatedPanProxy(Z)V

    .line 131
    :cond_0
    return-void
.end method

.method public static setBluetoothPanProxy(Landroid/bluetooth/BluetoothPan;)V
    .locals 2
    .param p0, "proxy"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 118
    const-string/jumbo v0, "BtTetherSettingsAdapter"

    const-string/jumbo v1, "setBluetoothPanProxy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sput-object p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    .line 121
    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mProxyCb:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$UpdateProxyCallback;

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mProxyCb:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$UpdateProxyCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$UpdateProxyCallback;->onUpdatedPanProxy(Z)V

    .line 117
    :cond_0
    return-void
.end method

.method public static setBtTether(Z)V
    .locals 3
    .param p0, "enable"    # Z

    .prologue
    .line 54
    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_0

    .line 55
    const-string/jumbo v0, "BtTetherSettingsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set Bluetooth Tethering : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 52
    :cond_0
    return-void
.end method

.method public static setSwitchChecked(Z)V
    .locals 3
    .param p0, "checked"    # Z

    .prologue
    .line 76
    sput-boolean p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->isTetherSwitchChecked:Z

    .line 78
    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mSwitchCb:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$SwitchCallback;

    if-eqz v0, :cond_0

    .line 79
    const-string/jumbo v0, "BtTetherSettingsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSwitchChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mSwitchCb:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$SwitchCallback;

    invoke-interface {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$SwitchCallback;->onBtTetherSwitchChecked()V

    .line 75
    :cond_0
    return-void
.end method

.method public static unregisterCallback()V
    .locals 2

    .prologue
    .line 48
    const-string/jumbo v0, "BtTetherSettingsAdapter"

    const-string/jumbo v1, "removeCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mSwitchCb:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$SwitchCallback;

    .line 47
    return-void
.end method

.method public static unregisterProxyCallback()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mProxyCb:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$UpdateProxyCallback;

    .line 113
    return-void
.end method


# virtual methods
.method public notifyBluetoothStateChanged(Z)V
    .locals 3
    .param p1, "isStateOn"    # Z

    .prologue
    .line 141
    const-string/jumbo v0, "BtTetherSettingsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyBluetoothStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mSwitchCb:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$SwitchCallback;

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->mSwitchCb:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$SwitchCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$SwitchCallback;->onBtStateChanged(Z)V

    .line 140
    :cond_0
    return-void
.end method
