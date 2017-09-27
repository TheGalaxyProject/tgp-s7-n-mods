.class Lcom/samsung/android/settings/PrivacyResetSettings$2;
.super Ljava/lang/Object;
.source "PrivacyResetSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/PrivacyResetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/PrivacyResetSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/PrivacyResetSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/PrivacyResetSettings;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    .prologue
    .line 402
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, "stateId":Ljava/lang/String;
    const-string/jumbo v4, "ResetSettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 404
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get3(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 405
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get3(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 406
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 407
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 408
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 485
    :cond_1
    :goto_0
    return-void

    .line 411
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 413
    :cond_3
    const-string/jumbo v4, "ResetNetworkSettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 414
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    const-string/jumbo v5, "network_reset"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 415
    .local v2, "networkReset":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_5

    .line 416
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get3(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 417
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 418
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 419
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 422
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 424
    .end local v2    # "networkReset":Landroid/preference/PreferenceScreen;
    :cond_6
    const-string/jumbo v4, "FactoryDataReset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 425
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 426
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 427
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 428
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 429
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 430
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 433
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 435
    :cond_9
    const-string/jumbo v4, "AutoRestartOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string/jumbo v4, "AutoRestartOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 436
    :cond_a
    invoke-static {}, Lcom/samsung/android/settings/PrivacyResetSettings;->-wrap0()Z

    move-result v4

    if-nez v4, :cond_10

    .line 437
    const-string/jumbo v4, "AutoRestartOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 438
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get4(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_c

    .line 439
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get4(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/SecSettingsSwitchPreference;->performClick()V

    .line 440
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 441
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "Autorestart"

    const-string/jumbo v6, "AlreadyON"

    const-string/jumbo v7, "No"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 444
    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 447
    :cond_c
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "Autorestart"

    const-string/jumbo v6, "AlreadyON"

    const-string/jumbo v7, "Yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 449
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 452
    :cond_d
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get4(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 453
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get4(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/SecSettingsSwitchPreference;->performClick()V

    .line 454
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 455
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "Autorestart"

    const-string/jumbo v6, "AlreadyOFF"

    const-string/jumbo v7, "No"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 458
    :cond_e
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 461
    :cond_f
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "Autorestart"

    const-string/jumbo v6, "AlreadyOFF"

    const-string/jumbo v7, "Yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 463
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 468
    :cond_10
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 470
    :cond_11
    const-string/jumbo v4, "AutoRestart"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 471
    invoke-static {}, Lcom/samsung/android/settings/PrivacyResetSettings;->-wrap0()Z

    move-result v4

    if-nez v4, :cond_12

    .line 472
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.sm.ACTION_AUTO_RESET_SETTING"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    .local v1, "mIntent":Landroid/content/Intent;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/PrivacyResetSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 477
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 482
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_12
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    iget-object v4, v4, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
