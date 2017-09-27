.class Lcom/android/server/pm/KnoxKeyguardUpdateMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxKeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/pm/KnoxKeyguardUpdateMonitor$1;->this$0:Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v8, -0x80000000

    .line 52
    const-string/jumbo v5, "KnoxKeyguardUpdateMonitor"

    const-string/jumbo v6, "BroadcastReceiver onReceive"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "KnoxKeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BroadcastReceiver onReceive action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string/jumbo v5, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 59
    const-string/jumbo v5, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    :cond_0
    const-string/jumbo v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 67
    const-string/jumbo v5, "KnoxKeyguardUpdateMonitor"

    const-string/jumbo v6, "BroadcastReceiver onReceive BT state is changed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "samsung.knox.trust.action.BT_STATE_CHANGE_INTERNAL"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v2, "btIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.bluetooth.adapter.extra.STATE"

    const-string/jumbo v6, "android.bluetooth.adapter.extra.STATE"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v6, "com.samsung.android.permission.RECEIVE_BT_GEAR"

    invoke-virtual {p1, v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 71
    return-void

    .line 60
    .end local v2    # "btIntent":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 61
    const-string/jumbo v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 62
    return-void

    .line 74
    :cond_2
    const-string/jumbo v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 76
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v3, :cond_3

    .line 77
    return-void

    .line 80
    :cond_3
    const/4 v2, 0x0

    .line 81
    .local v2, "btIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 82
    const-string/jumbo v5, "KnoxKeyguardUpdateMonitor"

    const-string/jumbo v6, "BroadcastReceiver ACTION_ACL_CONNECTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "btIntent":Landroid/content/Intent;
    const-string/jumbo v5, "samsung.knox.trust.action.DEVICE_CONNECTED_INTERNAL"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    :cond_4
    :goto_0
    const-string/jumbo v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 105
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v6, "com.samsung.android.permission.RECEIVE_BT_GEAR"

    invoke-virtual {p1, v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 51
    return-void

    .line 84
    .restart local v2    # "btIntent":Landroid/content/Intent;
    :cond_5
    const-string/jumbo v5, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 85
    const-string/jumbo v5, "KnoxKeyguardUpdateMonitor"

    const-string/jumbo v6, "BroadcastReceiver ACTION_ACL_DISCONNECTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "btIntent":Landroid/content/Intent;
    const-string/jumbo v5, "samsung.knox.trust.action.DEVICE_DISCONNECTED_INTERNAL"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "btIntent":Landroid/content/Intent;
    goto :goto_0

    .line 87
    .local v2, "btIntent":Landroid/content/Intent;
    :cond_6
    const-string/jumbo v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 88
    const-string/jumbo v5, "KnoxKeyguardUpdateMonitor"

    const-string/jumbo v6, "BroadcastReceiver ACTION_BOND_STATE_CHANGED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string/jumbo v5, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 90
    .local v4, "prevBondState":I
    const-string/jumbo v5, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 92
    .local v1, "bondState":I
    const-string/jumbo v5, "KnoxKeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BroadcastReceiver ACTION_BOND_STATE_CHANGED prevBondState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string/jumbo v5, "KnoxKeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BroadcastReceiver ACTION_BOND_STATE_CHANGED bondState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/16 v5, 0xb

    if-ne v4, v5, :cond_7

    const/16 v5, 0xc

    if-ne v1, v5, :cond_7

    .line 96
    const-string/jumbo v5, "KnoxKeyguardUpdateMonitor"

    const-string/jumbo v6, "BroadcastReceiver ACTION_BOND_STATE_CHANGED it is bonded"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "btIntent":Landroid/content/Intent;
    const-string/jumbo v5, "samsung.knox.trust.action.DEVICE_BONDED_STATE_INTERNAL"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v2, "btIntent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 99
    .local v2, "btIntent":Landroid/content/Intent;
    :cond_7
    const-string/jumbo v5, "KnoxKeyguardUpdateMonitor"

    const-string/jumbo v6, "BroadcastReceiver ACTION_BOND_STATE_CHANGED it is NOT bonded. quit"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method
