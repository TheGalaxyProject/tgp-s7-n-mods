.class Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;
.super Ljava/lang/Object;
.source "SmartNetworkSwitchSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/SmartNetworkSwitchSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 382
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, " SmartNetworkSwitchSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mEmCallback, stateId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string/jumbo v1, "SmartNetworkSwitchOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 385
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get2(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get3(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 391
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 392
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 395
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 397
    :cond_3
    const-string/jumbo v1, "SmartNetworkSwitchOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 398
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get2(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 399
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get3(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 400
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 401
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 404
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 406
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 411
    :cond_6
    const-string/jumbo v1, "SmartNetworkSwitchAggressiveOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 412
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get2(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 413
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get0(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 414
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitchAggressive"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 418
    :cond_7
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 419
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitchAggressive"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 422
    :cond_8
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-virtual {v1, v6}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->radioButtonClicked(Z)V

    .line 423
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 426
    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 430
    :cond_a
    const-string/jumbo v1, "SmartNetworkSwitchAggressiveOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get2(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 432
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get0(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 433
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 434
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitchAggressive"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 437
    :cond_b
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-virtual {v1, v5}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->radioButtonClicked(Z)V

    .line 438
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 440
    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitchAggressive"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 445
    :cond_d
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
