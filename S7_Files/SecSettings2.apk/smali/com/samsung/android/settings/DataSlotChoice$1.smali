.class Lcom/samsung/android/settings/DataSlotChoice$1;
.super Landroid/content/BroadcastReceiver;
.source "DataSlotChoice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/DataSlotChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DataSlotChoice;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DataSlotChoice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/DataSlotChoice;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 571
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, "intentAction":Ljava/lang/String;
    const-string/jumbo v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 573
    const-string/jumbo v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 572
    if-nez v6, :cond_0

    .line 574
    const-string/jumbo v6, "ACTION_CARD_STATUS_CHANGED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 572
    if-eqz v6, :cond_3

    .line 575
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {p1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/DataSlotChoice;->-set0(Lcom/samsung/android/settings/DataSlotChoice;Z)Z

    .line 578
    const-string/jumbo v6, "gsm.sim.currentcardstatus"

    const-string/jumbo v7, "9"

    .line 577
    invoke-static {v6, v8, v7}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "cardStatus1":Ljava/lang/String;
    const-string/jumbo v6, "gsm.sim.currentcardstatus"

    const-string/jumbo v7, "9"

    .line 579
    invoke-static {v6, v9, v7}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, "cardStatus2":Ljava/lang/String;
    const-string/jumbo v6, "gsm.sim.state"

    const-string/jumbo v7, "UNKNOWN"

    .line 581
    invoke-static {v6, v8, v7}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 584
    .local v4, "simState1":Ljava/lang/String;
    const-string/jumbo v6, "gsm.sim.state"

    const-string/jumbo v7, "UNKNOWN"

    .line 583
    invoke-static {v6, v9, v7}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 587
    .local v5, "simState2":Ljava/lang/String;
    const-string/jumbo v6, "DataSlotChoice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive: action - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 588
    const-string/jumbo v8, ", mMobileData = "

    .line 587
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 588
    iget-object v8, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v8}, Lcom/samsung/android/settings/DataSlotChoice;->-wrap0(Lcom/samsung/android/settings/DataSlotChoice;)Z

    move-result v8

    .line 587
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 589
    const-string/jumbo v8, ", SIM_STATE = "

    .line 587
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 590
    const-string/jumbo v8, ", CURRENT_SIM_STATE = "

    .line 587
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 591
    const-string/jumbo v8, ", SIM_STATE2 = "

    .line 587
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 592
    const-string/jumbo v8, ", CURRENT_SIM_STATE2 = "

    .line 587
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 593
    const-string/jumbo v8, ", isAirPlaneMode = "

    .line 587
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 593
    iget-object v8, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v8}, Lcom/samsung/android/settings/DataSlotChoice;->-get0(Lcom/samsung/android/settings/DataSlotChoice;)Z

    move-result v8

    .line 587
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-wrap0(Lcom/samsung/android/settings/DataSlotChoice;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 596
    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-get3(Lcom/samsung/android/settings/DataSlotChoice;)Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    .line 600
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-wrap3(Lcom/samsung/android/settings/DataSlotChoice;)V

    .line 570
    .end local v0    # "cardStatus1":Ljava/lang/String;
    .end local v1    # "cardStatus2":Ljava/lang/String;
    .end local v4    # "simState1":Ljava/lang/String;
    .end local v5    # "simState2":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 598
    .restart local v0    # "cardStatus1":Ljava/lang/String;
    .restart local v1    # "cardStatus2":Ljava/lang/String;
    .restart local v4    # "simState1":Ljava/lang/String;
    .restart local v5    # "simState2":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-get3(Lcom/samsung/android/settings/DataSlotChoice;)Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 601
    .end local v0    # "cardStatus1":Ljava/lang/String;
    .end local v1    # "cardStatus2":Ljava/lang/String;
    .end local v4    # "simState1":Ljava/lang/String;
    .end local v5    # "simState2":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 602
    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-get1(Lcom/samsung/android/settings/DataSlotChoice;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-get1(Lcom/samsung/android/settings/DataSlotChoice;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 603
    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-get1(Lcom/samsung/android/settings/DataSlotChoice;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_1

    .line 605
    :cond_4
    const-string/jumbo v6, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 607
    const-string/jumbo v6, "phone"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 608
    .local v3, "simSlot":I
    const-string/jumbo v6, "DataSlotChoice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DATA_CONNECTION_CHANGE_SUCCESS simSlot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-get4(Lcom/samsung/android/settings/DataSlotChoice;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v3, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 611
    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-get3(Lcom/samsung/android/settings/DataSlotChoice;)Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 612
    .end local v3    # "simSlot":I
    :cond_5
    const-string/jumbo v6, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 614
    const-string/jumbo v6, "phone"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 615
    .restart local v3    # "simSlot":I
    const-string/jumbo v6, "DataSlotChoice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED simSlot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-get4(Lcom/samsung/android/settings/DataSlotChoice;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v3, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 618
    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-get3(Lcom/samsung/android/settings/DataSlotChoice;)Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method
