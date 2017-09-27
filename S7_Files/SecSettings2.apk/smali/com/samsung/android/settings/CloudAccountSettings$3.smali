.class Lcom/samsung/android/settings/CloudAccountSettings$3;
.super Ljava/lang/Object;
.source "CloudAccountSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/CloudAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/CloudAccountSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/CloudAccountSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/CloudAccountSettings;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 4

    .prologue
    .line 410
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "Users"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 413
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    const-string/jumbo v3, "user_preference"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 414
    .local v0, "preference":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 415
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/CloudAccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 416
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 418
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 442
    .end local v0    # "preference":Landroid/preference/PreferenceScreen;
    :cond_1
    :goto_0
    return-void

    .line 420
    .restart local v0    # "preference":Landroid/preference/PreferenceScreen;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 422
    .end local v0    # "preference":Landroid/preference/PreferenceScreen;
    :cond_3
    const-string/jumbo v2, "BackupAndReset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 423
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    const-string/jumbo v3, "privacy_preference"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 424
    .restart local v0    # "preference":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 425
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/CloudAccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 426
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 427
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "CloudAndAccounts"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 428
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 430
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 432
    .end local v0    # "preference":Landroid/preference/PreferenceScreen;
    :cond_6
    const-string/jumbo v2, "SmartSwitch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 433
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 434
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/CloudAccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 435
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 436
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "CloudAndAccounts"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 437
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 439
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings$3;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
