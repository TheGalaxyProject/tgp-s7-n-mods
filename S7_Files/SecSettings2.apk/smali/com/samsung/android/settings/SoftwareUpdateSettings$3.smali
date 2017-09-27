.class Lcom/samsung/android/settings/SoftwareUpdateSettings$3;
.super Ljava/lang/Object;
.source "SoftwareUpdateSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SoftwareUpdateSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SoftwareUpdateSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/SoftwareUpdateSettings;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0xc

    const/16 v10, 0xb

    .line 679
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    .line 680
    .local v5, "stateId":Ljava/lang/String;
    const-string/jumbo v6, "DownloadUpdatesManually"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 682
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get3(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/Preference;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 683
    const-string/jumbo v6, "SoftwareUpdateSettings"

    const-string/jumbo v7, "DownloadUpdatesManually menu is disabled."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get3(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 687
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 688
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 689
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 691
    :cond_3
    const-string/jumbo v6, "DownloadUpdatesAutomaticallyOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 693
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isNoNeedAutoDownloadMenu(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get4(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 697
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get4(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_6

    .line 699
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get4(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 700
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 701
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "SoftwareUpdateSet"

    const-string/jumbo v8, "AutomaticAlreadyON"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 704
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 694
    :cond_5
    const-string/jumbo v6, "SoftwareUpdateSettings"

    const-string/jumbo v7, "DownloadUpdatesAutomatically menu is disabled."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 707
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "SoftwareUpdateSet"

    const-string/jumbo v8, "AutomaticAlreadyON"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 709
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 712
    :cond_7
    const-string/jumbo v6, "DownloadUpdatesAutomaticallyOff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 714
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isNoNeedAutoDownloadMenu(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get4(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 718
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get4(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 720
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get4(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 721
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 722
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "SoftwareUpdateSet"

    const-string/jumbo v8, "AutomaticAlreadyOFF"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 725
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 715
    :cond_9
    const-string/jumbo v6, "SoftwareUpdateSettings"

    const-string/jumbo v7, "DownloadUpdatesAutomatically menu is disabled."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 728
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "SoftwareUpdateSet"

    const-string/jumbo v8, "AutomaticAlreadyOFF"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 730
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 733
    :cond_b
    const-string/jumbo v6, "ScheduledSoftwareUpdatesOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 735
    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-wrap0()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get2(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 739
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get2(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_e

    .line 741
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get2(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 742
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 743
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScheduleSoftwareUpdate"

    const-string/jumbo v8, "AlreadyON"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 746
    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 736
    :cond_d
    const-string/jumbo v6, "SoftwareUpdateSettings"

    const-string/jumbo v7, "Schedule software update menu is disabled."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 749
    :cond_e
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScheduleSoftwareUpdate"

    const-string/jumbo v8, "AlreadyON"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 751
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 754
    :cond_f
    const-string/jumbo v6, "ScheduledSoftwareUpdatesOff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 756
    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-wrap0()Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get2(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 760
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get2(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 762
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get2(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 763
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 764
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScheduleSoftwareUpdate"

    const-string/jumbo v8, "AlreadyOFF"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 767
    :cond_10
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 757
    :cond_11
    const-string/jumbo v6, "SoftwareUpdateSettings"

    const-string/jumbo v7, "Schedule software update menu is disabled."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 770
    :cond_12
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScheduleSoftwareUpdate"

    const-string/jumbo v8, "AlreadyOFF"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 772
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 775
    :cond_13
    const-string/jumbo v6, "ScheduledSoftwareUpdatesTime"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 777
    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-wrap0()Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get2(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 781
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-get2(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_15

    .line 782
    const-string/jumbo v6, "SoftwareUpdateSettings"

    const-string/jumbo v7, "Schedule update is off. Need to turn on first"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScheduleSoftwareUpdate"

    const-string/jumbo v8, "AlreadyON"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 786
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 778
    :cond_14
    const-string/jumbo v6, "SoftwareUpdateSettings"

    const-string/jumbo v7, "Schedule software update menu is disabled."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 788
    :cond_15
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v3

    .line 789
    .local v3, "scheduleTime":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 791
    const-string/jumbo v6, "SoftwareUpdateSettings"

    const-string/jumbo v7, "scheduleTime parameter is empty or null."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScheduledSoftwareUpdatesTime"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "NO"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 794
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 797
    :cond_16
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "HH:mm"

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 798
    .local v4, "st":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .line 801
    .local v2, "scheduleDate":Ljava/util/Date;
    :try_start_0
    const-string/jumbo v6, "SoftwareUpdateSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "get parameter : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 806
    .end local v2    # "scheduleDate":Ljava/util/Date;
    :goto_1
    if-nez v2, :cond_17

    .line 807
    const-string/jumbo v6, "SoftwareUpdateSettings"

    const-string/jumbo v7, "scheduleDate is null."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScheduledSoftwareUpdatesTime"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 810
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 803
    .restart local v2    # "scheduleDate":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 804
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 812
    .end local v1    # "e":Ljava/text/ParseException;
    .end local v2    # "scheduleDate":Ljava/util/Date;
    :cond_17
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 813
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 814
    const-string/jumbo v6, "SoftwareUpdateSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "schedule time is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v6, v12, v7, v8}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V

    .line 816
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 817
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "ScheduledSoftwareUpdatesTime"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "SoftwareUpdate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 820
    :cond_18
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
