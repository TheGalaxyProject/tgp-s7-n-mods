.class Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "CheckBluetoothStateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$2;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "CheckBluetoothStateActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mKeyGuardReceiver onReceive :: action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string/jumbo v5, "com.samsung.intent.action.BLUETOOTH_KEYGUARD_UNLOCK"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 130
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$2;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-get4(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    .line 131
    .local v1, "bluetoothState":I
    const/16 v5, 0xa

    if-ne v1, v5, :cond_1

    .line 132
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$2;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->-wrap1(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    .line 125
    .end local v1    # "bluetoothState":I
    :cond_0
    :goto_0
    return-void

    .line 133
    .restart local v1    # "bluetoothState":I
    :cond_1
    const/16 v5, 0xc

    if-ne v1, v5, :cond_0

    .line 134
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$2$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$2$1;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$2;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 144
    .local v4, "t":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 146
    .end local v1    # "bluetoothState":I
    .end local v4    # "t":Ljava/lang/Thread;
    :cond_2
    const-string/jumbo v5, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    const-string/jumbo v5, "showing"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 148
    .local v3, "showing":Z
    const-string/jumbo v5, "bouncerShowing"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 150
    .local v2, "bouncerShowing":Z
    const-string/jumbo v5, "CheckBluetoothStateActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "keyguard onReceive :: showing = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", bouncerShowing = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-nez v2, :cond_0

    if-eqz v3, :cond_0

    .line 152
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$2;->this$0:Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    goto :goto_0
.end method
