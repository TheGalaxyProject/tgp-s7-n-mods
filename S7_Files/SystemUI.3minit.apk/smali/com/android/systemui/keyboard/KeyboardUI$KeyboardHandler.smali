.class final Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;
.super Landroid/os/Handler;
.source "KeyboardUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyboard/KeyboardUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyboardHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyboard/KeyboardUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/keyboard/KeyboardUI;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 452
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 451
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 457
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 456
    :goto_0
    :pswitch_0
    return-void

    .line 459
    :pswitch_1
    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v8}, Lcom/android/systemui/keyboard/KeyboardUI;->-wrap2(Lcom/android/systemui/keyboard/KeyboardUI;)V

    goto :goto_0

    .line 463
    :pswitch_2
    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-virtual {v8}, Lcom/android/systemui/keyboard/KeyboardUI;->onBootCompletedInternal()V

    goto :goto_0

    .line 467
    :pswitch_3
    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v8}, Lcom/android/systemui/keyboard/KeyboardUI;->-wrap8(Lcom/android/systemui/keyboard/KeyboardUI;)V

    goto :goto_0

    .line 471
    :pswitch_4
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v5, :cond_0

    .line 472
    .local v5, "enable":Z
    :goto_1
    if-eqz v5, :cond_1

    .line 473
    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v8}, Lcom/android/systemui/keyboard/KeyboardUI;->-get2(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->enable()Z

    goto :goto_0

    .line 471
    .end local v5    # "enable":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 475
    .restart local v5    # "enable":Z
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    const/16 v9, 0x8

    invoke-static {v8, v9}, Lcom/android/systemui/keyboard/KeyboardUI;->-set1(Lcom/android/systemui/keyboard/KeyboardUI;I)I

    goto :goto_0

    .line 480
    .end local v5    # "enable":Z
    :pswitch_5
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 481
    .local v7, "scanAttempt":I
    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v8, v7}, Lcom/android/systemui/keyboard/KeyboardUI;->-wrap1(Lcom/android/systemui/keyboard/KeyboardUI;I)V

    goto :goto_0

    .line 485
    .end local v7    # "scanAttempt":I
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 486
    .local v0, "bluetoothState":I
    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v8, v0}, Lcom/android/systemui/keyboard/KeyboardUI;->-wrap4(Lcom/android/systemui/keyboard/KeyboardUI;I)V

    goto :goto_0

    .line 490
    .end local v0    # "bluetoothState":I
    :pswitch_7
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 491
    .local v4, "d":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 492
    .local v1, "bondState":I
    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v8, v4, v1}, Lcom/android/systemui/keyboard/KeyboardUI;->-wrap6(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_0

    .line 496
    .end local v1    # "bondState":I
    .end local v4    # "d":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :pswitch_8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 497
    .local v3, "d":Landroid/bluetooth/BluetoothDevice;
    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v8, v3}, Lcom/android/systemui/keyboard/KeyboardUI;->-wrap0(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 498
    .local v2, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v8, v2}, Lcom/android/systemui/keyboard/KeyboardUI;->-wrap5(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 503
    .end local v2    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local v3    # "d":Landroid/bluetooth/BluetoothDevice;
    :pswitch_9
    iget-object v8, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v8}, Lcom/android/systemui/keyboard/KeyboardUI;->-wrap3(Lcom/android/systemui/keyboard/KeyboardUI;)V

    goto :goto_0

    .line 507
    :pswitch_a
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/util/Pair;

    .line 508
    .local v6, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/Context;Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-static {v10, v8, v9, v11}, Lcom/android/systemui/keyboard/KeyboardUI;->-wrap7(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method
