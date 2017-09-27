.class public final Lcom/android/settings/bluetooth/BluetoothPairingRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v12, -0x80000000

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 47
    const-string/jumbo v9, "BluetoothPairingRequest"

    const-string/jumbo v10, "onReceive :: Intent.getAction() is return null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 50
    :cond_0
    const-string/jumbo v9, "BluetoothPairingRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onReceive :: getAction = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string/jumbo v9, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 55
    const-string/jumbo v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 56
    .local v4, "device":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v9, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 58
    .local v8, "type":I
    if-eqz v4, :cond_1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v9

    const/16 v10, 0xc

    if-ne v9, v10, :cond_2

    .line 59
    :cond_1
    const-string/jumbo v9, "BluetoothPairingRequest"

    const-string/jumbo v10, "onReceive :: mDevice is null or mDevice bonded already."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    .line 63
    :cond_2
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v2

    .line 64
    .local v2, "bluetoothManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    if-nez v2, :cond_3

    .line 65
    const-string/jumbo v9, "BluetoothPairingRequest"

    const-string/jumbo v10, "onReceive :: bluetoothManager is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void

    .line 69
    :cond_3
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    .line 70
    .local v1, "bluetoothAdapter":Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    if-nez v1, :cond_4

    .line 71
    const-string/jumbo v9, "BluetoothPairingRequest"

    const-string/jumbo v10, "onReceive :: BluetoothAdapter not supported by system"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void

    .line 73
    :cond_4
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_5

    .line 74
    const-string/jumbo v9, "BluetoothPairingRequest"

    const-string/jumbo v10, "onReceive :: BluetoothAdapter is not enabled"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    .line 76
    return-void

    .line 79
    :cond_5
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v5, "pairingIntent":Landroid/content/Intent;
    const-class v9, Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v5, p1, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 81
    const-string/jumbo v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v5, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    const-string/jumbo v9, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    const/4 v9, 0x2

    if-eq v8, v9, :cond_6

    .line 84
    const/4 v9, 0x4

    if-ne v8, v9, :cond_7

    .line 86
    :cond_6
    const-string/jumbo v9, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 87
    .local v6, "pairingKey":I
    if-ne v6, v12, :cond_a

    .line 88
    const-string/jumbo v9, "BluetoothPairingRequest"

    const-string/jumbo v10, "received Invalid Passkey or pin received, will cancel bond process"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 90
    return-void

    .line 85
    .end local v6    # "pairingKey":I
    :cond_7
    const/4 v9, 0x5

    if-eq v8, v9, :cond_6

    .line 94
    :goto_0
    const-string/jumbo v9, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    const-string/jumbo v9, "phone"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 99
    .local v7, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    .line 100
    .local v3, "call_State":I
    if-nez v3, :cond_8

    .line 101
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->makeNotiSound(Landroid/content/Context;)V

    .line 103
    :cond_8
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    .end local v1    # "bluetoothAdapter":Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .end local v2    # "bluetoothManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .end local v3    # "call_State":I
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "pairingIntent":Landroid/content/Intent;
    .end local v7    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v8    # "type":I
    :cond_9
    return-void

    .line 92
    .restart local v1    # "bluetoothAdapter":Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .restart local v2    # "bluetoothManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .restart local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v5    # "pairingIntent":Landroid/content/Intent;
    .restart local v6    # "pairingKey":I
    .restart local v8    # "type":I
    :cond_a
    const-string/jumbo v9, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method
