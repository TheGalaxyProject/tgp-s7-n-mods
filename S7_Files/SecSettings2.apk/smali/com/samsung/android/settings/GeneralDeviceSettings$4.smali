.class Lcom/samsung/android/settings/GeneralDeviceSettings$4;
.super Ljava/lang/Object;
.source "GeneralDeviceSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/GeneralDeviceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/GeneralDeviceSettings;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 11

    .prologue
    .line 530
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v6

    .line 531
    .local v6, "stateId":Ljava/lang/String;
    const-string/jumbo v7, "LanguageAndInput"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 532
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    .line 533
    const-string/jumbo v8, "device_info_language_settings"

    .line 532
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 534
    .local v3, "languageSettingPref":Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 535
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 614
    .end local v3    # "languageSettingPref":Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    const-string/jumbo v7, "DateAndTime"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 537
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    .line 538
    const-string/jumbo v8, "device_info_date_time_settings"

    .line 537
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 539
    .local v1, "dateTimeSettingPref":Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 540
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 541
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 542
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 543
    .end local v1    # "dateTimeSettingPref":Landroid/preference/PreferenceScreen;
    :cond_3
    const-string/jumbo v7, "ReportDiagnosticInfoOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 544
    const-string/jumbo v7, "ReportDiagnosticInfoOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 543
    if-eqz v7, :cond_a

    .line 545
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->-get0(Lcom/samsung/android/settings/GeneralDeviceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 546
    .local v2, "isChecked":Z
    const-string/jumbo v7, "ReportDiagnosticInfoOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 547
    if-eqz v2, :cond_5

    .line 549
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "ReportDiagnosticInfo"

    const-string/jumbo v9, "AlreadyON"

    const-string/jumbo v10, "YES"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 551
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 552
    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 551
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 554
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 555
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "ReportDiagnosticInfo"

    const-string/jumbo v9, "AlreadyON"

    const-string/jumbo v10, "NO"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 558
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->-get0(Lcom/samsung/android/settings/GeneralDeviceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 559
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 560
    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 559
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 563
    :cond_7
    if-eqz v2, :cond_9

    .line 564
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 565
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "ReportDiagnosticInfo"

    const-string/jumbo v9, "AlreadyOFF"

    const-string/jumbo v10, "NO"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 568
    :cond_8
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->-get0(Lcom/samsung/android/settings/GeneralDeviceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 569
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 570
    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 569
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 573
    :cond_9
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "ReportDiagnosticInfo"

    const-string/jumbo v9, "AlreadyOFF"

    const-string/jumbo v10, "YES"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 575
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 576
    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 575
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 579
    .end local v2    # "isChecked":Z
    :cond_a
    const-string/jumbo v7, "MarketingInformation"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 580
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    .line 581
    const-string/jumbo v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAMSUNG_MARKETING_INFO"

    .line 580
    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 582
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    .line 583
    const-string/jumbo v8, "CscFeature_Common_ConfigMarketInfoVariation"

    .line 582
    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 584
    const-string/jumbo v8, "Disable"

    .line 582
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 580
    if-eqz v7, :cond_c

    .line 586
    :cond_b
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "MarketingInformation"

    const-string/jumbo v9, "Present"

    const-string/jumbo v10, "No"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 588
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 590
    :cond_c
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    .line 591
    const-string/jumbo v8, "marketing_information"

    .line 590
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    .line 592
    .local v4, "marketingInfoPref":Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 593
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 594
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "MarketingInformation"

    const-string/jumbo v9, "Present"

    const-string/jumbo v10, "Yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 597
    :cond_d
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 599
    .end local v4    # "marketingInfoPref":Landroid/preference/PreferenceScreen;
    :cond_e
    const-string/jumbo v7, "Reset"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 600
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    .line 601
    const-string/jumbo v8, "reset_preference"

    .line 600
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 602
    .local v5, "resetPref":Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 603
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 604
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 605
    :cond_f
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 606
    .end local v5    # "resetPref":Landroid/preference/PreferenceScreen;
    :cond_10
    const-string/jumbo v7, "SamsungAdvertisingID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 607
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    .line 608
    const-string/jumbo v8, "samsung_ad_id"

    .line 607
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 609
    .local v0, "advertisingPreference":Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 610
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 611
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 612
    :cond_11
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;->this$0:Lcom/samsung/android/settings/GeneralDeviceSettings;

    iget-object v7, v7, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
