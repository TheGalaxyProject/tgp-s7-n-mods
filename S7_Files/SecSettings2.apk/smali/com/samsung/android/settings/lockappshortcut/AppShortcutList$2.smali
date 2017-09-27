.class Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;
.super Ljava/lang/Object;
.source "AppShortcutList.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 507
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    .line 510
    .local v2, "stateId":Ljava/lang/String;
    const-string/jumbo v3, "LeftShortcutsOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "RightShortcutsOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 511
    :cond_0
    const-string/jumbo v3, "LeftShortcutsOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 512
    const-string/jumbo v1, "LeftShortcuts"

    .line 513
    .local v1, "nlgStateId":Ljava/lang/String;
    const-string/jumbo v0, "LeftShortcut"

    .line 518
    .local v0, "nlgParamName":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get4(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 519
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v3, v0, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 521
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 565
    .end local v0    # "nlgParamName":Ljava/lang/String;
    .end local v1    # "nlgStateId":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 515
    :cond_2
    const-string/jumbo v1, "RightShortcuts"

    .line 516
    .restart local v1    # "nlgStateId":Ljava/lang/String;
    const-string/jumbo v0, "RightShortcut"

    .restart local v0    # "nlgParamName":Ljava/lang/String;
    goto :goto_0

    .line 523
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get4(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 524
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 525
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v3, v0, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 528
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    .line 530
    .end local v0    # "nlgParamName":Ljava/lang/String;
    .end local v1    # "nlgStateId":Ljava/lang/String;
    :cond_5
    const-string/jumbo v3, "LeftShortcutsOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "RightShortcutsOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 531
    :cond_6
    const-string/jumbo v3, "LeftShortcutsOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 532
    const-string/jumbo v1, "LeftShortcuts"

    .line 533
    .restart local v1    # "nlgStateId":Ljava/lang/String;
    const-string/jumbo v0, "LeftShortcut"

    .line 538
    .restart local v0    # "nlgParamName":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get4(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 539
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get4(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 540
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 541
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v3, v0, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 544
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 535
    .end local v0    # "nlgParamName":Ljava/lang/String;
    .end local v1    # "nlgStateId":Ljava/lang/String;
    :cond_8
    const-string/jumbo v1, "RightShortcuts"

    .line 536
    .restart local v1    # "nlgStateId":Ljava/lang/String;
    const-string/jumbo v0, "RightShortcut"

    .restart local v0    # "nlgParamName":Ljava/lang/String;
    goto :goto_2

    .line 546
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v3, v0, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 548
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 550
    .end local v0    # "nlgParamName":Ljava/lang/String;
    .end local v1    # "nlgStateId":Ljava/lang/String;
    :cond_a
    const-string/jumbo v3, "LeftShortcutsChange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 551
    const-string/jumbo v3, "RightShortcutsChange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 550
    if-eqz v3, :cond_1

    .line 552
    :cond_b
    const-string/jumbo v3, "LeftShortcutsChange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 553
    const-string/jumbo v1, "LeftShortcuts"

    .line 557
    .restart local v1    # "nlgStateId":Ljava/lang/String;
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v3

    if-lez v3, :cond_d

    .line 558
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    goto/16 :goto_1

    .line 555
    .end local v1    # "nlgStateId":Ljava/lang/String;
    :cond_c
    const-string/jumbo v1, "RightShortcuts"

    .restart local v1    # "nlgStateId":Ljava/lang/String;
    goto :goto_3

    .line 560
    :cond_d
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AppName"

    const-string/jumbo v5, "exist"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 562
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1
.end method
