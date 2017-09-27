.class Lcom/android/settings/print/PrintSettingsFragment$3;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/print/PrintSettingsFragment;

    .prologue
    .line 730
    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 734
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 735
    .local v2, "bSuccess":Ljava/lang/Boolean;
    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    iget-object v6, v6, Lcom/android/settings/print/PrintSettingsFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    .line 737
    .local v5, "stateId":Ljava/lang/String;
    const-string/jumbo v6, "PrintingOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "PrintingOff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 738
    :cond_0
    const-string/jumbo v6, "PrintingOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 740
    .local v1, "bEnable":Ljava/lang/Boolean;
    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get3(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 742
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get3(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SecSettingsSwitchPreference;

    .line 743
    .local v4, "preference":Lcom/android/settings/SecSettingsSwitchPreference;
    if-eqz v4, :cond_3

    .line 744
    invoke-virtual {v4}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 746
    .local v0, "bAlreadyEnabled":Ljava/lang/Boolean;
    if-eq v1, v0, :cond_1

    .line 747
    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v6}, Lcom/android/settings/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v1}, Lcom/android/settings/print/PrintSettingsFragment;->-wrap2(Landroid/content/Context;Landroid/preference/Preference;Ljava/lang/Boolean;)V

    .line 748
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 751
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    iget-object v6, v6, Lcom/android/settings/print/PrintSettingsFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 752
    :cond_2
    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    iget-object v8, v6, Lcom/android/settings/print/PrintSettingsFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "Printing"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "AlreadyOn"

    move-object v7, v6

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "No"

    :goto_1
    invoke-virtual {v8, v9, v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    iget-object v6, v6, Lcom/android/settings/print/PrintSettingsFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "Printing"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    .end local v0    # "bAlreadyEnabled":Ljava/lang/Boolean;
    .end local v1    # "bEnable":Ljava/lang/Boolean;
    .end local v4    # "preference":Lcom/android/settings/SecSettingsSwitchPreference;
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    iget-object v7, v6, Lcom/android/settings/print/PrintSettingsFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    :goto_3
    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 773
    return-void

    .line 752
    .restart local v0    # "bAlreadyEnabled":Ljava/lang/Boolean;
    .restart local v1    # "bEnable":Ljava/lang/Boolean;
    .restart local v4    # "preference":Lcom/android/settings/SecSettingsSwitchPreference;
    :cond_4
    :try_start_1
    const-string/jumbo v6, "AlreadyOff"

    move-object v7, v6

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "Yes"
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 756
    .end local v0    # "bAlreadyEnabled":Ljava/lang/Boolean;
    .end local v4    # "preference":Lcom/android/settings/SecSettingsSwitchPreference;
    :catch_0
    move-exception v3

    .line 757
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v6, "PrintSettingsFragment"

    const-string/jumbo v7, "Unable to get preference "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 760
    .end local v1    # "bEnable":Ljava/lang/Boolean;
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_6
    const-string/jumbo v6, "PrintingDownloadPlugin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 761
    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get1(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/widget/Button;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get1(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Button;->isShown()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 762
    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get1(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Button;->performClick()Z

    .line 763
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 768
    :cond_7
    :goto_4
    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    iget-object v6, v6, Lcom/android/settings/print/PrintSettingsFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 769
    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    iget-object v6, v6, Lcom/android/settings/print/PrintSettingsFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_2

    .line 764
    :cond_8
    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get2(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 765
    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get2(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v7}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 766
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_4

    .line 771
    :cond_9
    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    goto :goto_3
.end method
