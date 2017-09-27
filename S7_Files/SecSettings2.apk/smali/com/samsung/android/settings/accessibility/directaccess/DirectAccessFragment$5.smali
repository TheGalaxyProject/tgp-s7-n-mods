.class Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;
.super Ljava/lang/Object;
.source "DirectAccessFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 614
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, "stateId":Ljava/lang/String;
    const-string/jumbo v3, "DirectAccessOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 617
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 618
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 619
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 620
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccessState"

    const-string/jumbo v5, "Already_on"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 623
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 727
    :cond_1
    :goto_0
    return-void

    .line 625
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccessState"

    const-string/jumbo v5, "Already_on"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 627
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 629
    :cond_3
    const-string/jumbo v3, "DirectAccessOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 630
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 631
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 632
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 633
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccessState"

    const-string/jumbo v5, "Already_off"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 636
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 638
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccessState"

    const-string/jumbo v5, "Already_off"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 640
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 642
    :cond_6
    const-string/jumbo v3, "DirectAccessOptionsOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 643
    const-string/jumbo v3, "DirectAccessOptionsOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 642
    if-eqz v3, :cond_1

    .line 644
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 645
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccessState"

    const-string/jumbo v5, ""

    const-string/jumbo v6, "Off"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 647
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 648
    return-void

    .line 650
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v3

    if-eqz v3, :cond_19

    .line 651
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "optionName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 653
    .local v1, "preference":Landroid/preference/SwitchPreference;
    const-string/jumbo v3, "Accessibility"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 655
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get1(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .line 688
    .end local v1    # "preference":Landroid/preference/SwitchPreference;
    :cond_9
    :goto_1
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 689
    const-string/jumbo v3, "DirectAccessOptionsOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 690
    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_14

    .line 691
    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 692
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 693
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Option"

    const-string/jumbo v5, "Already_on"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 696
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 653
    .restart local v1    # "preference":Landroid/preference/SwitchPreference;
    :cond_b
    const-string/jumbo v3, "Talkback"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 658
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get9(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .local v1, "preference":Landroid/preference/SwitchPreference;
    goto :goto_1

    .line 653
    .local v1, "preference":Landroid/preference/SwitchPreference;
    :cond_c
    const-string/jumbo v3, "Voice Assistant"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 661
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get8(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .local v1, "preference":Landroid/preference/SwitchPreference;
    goto :goto_1

    .line 653
    .local v1, "preference":Landroid/preference/SwitchPreference;
    :cond_d
    const-string/jumbo v3, "Universal switch"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 664
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get10(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .local v1, "preference":Landroid/preference/SwitchPreference;
    goto :goto_1

    .line 653
    .local v1, "preference":Landroid/preference/SwitchPreference;
    :cond_e
    const-string/jumbo v3, "Magnifier window"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 667
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get5(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .local v1, "preference":Landroid/preference/SwitchPreference;
    goto/16 :goto_1

    .line 653
    .local v1, "preference":Landroid/preference/SwitchPreference;
    :cond_f
    const-string/jumbo v3, "Negative colors"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 670
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get6(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .local v1, "preference":Landroid/preference/SwitchPreference;
    goto/16 :goto_1

    .line 653
    .local v1, "preference":Landroid/preference/SwitchPreference;
    :cond_10
    const-string/jumbo v3, "Greyscale"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 673
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get4(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .local v1, "preference":Landroid/preference/SwitchPreference;
    goto/16 :goto_1

    .line 653
    .local v1, "preference":Landroid/preference/SwitchPreference;
    :cond_11
    const-string/jumbo v3, "Color adjustment"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 676
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get2(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .local v1, "preference":Landroid/preference/SwitchPreference;
    goto/16 :goto_1

    .line 653
    .local v1, "preference":Landroid/preference/SwitchPreference;
    :cond_12
    const-string/jumbo v3, "Interaction control"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 679
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get0(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .local v1, "preference":Landroid/preference/SwitchPreference;
    goto/16 :goto_1

    .line 653
    .local v1, "preference":Landroid/preference/SwitchPreference;
    :cond_13
    const-string/jumbo v3, "Page Reader"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 682
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get7(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .local v1, "preference":Landroid/preference/SwitchPreference;
    goto/16 :goto_1

    .line 698
    .end local v1    # "preference":Landroid/preference/SwitchPreference;
    :cond_14
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Option"

    const-string/jumbo v5, "Already_on"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 700
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 702
    :cond_15
    const-string/jumbo v3, "DirectAccessOptionsOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 703
    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 704
    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 705
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 706
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Option"

    const-string/jumbo v5, "Already_off"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 709
    :cond_16
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 711
    :cond_17
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Option"

    const-string/jumbo v5, "Already_off"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 713
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 717
    :cond_18
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Option"

    const-string/jumbo v5, "Exists"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 719
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 722
    .end local v0    # "optionName":Ljava/lang/String;
    :cond_19
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Option"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DirectAccess"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 724
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
