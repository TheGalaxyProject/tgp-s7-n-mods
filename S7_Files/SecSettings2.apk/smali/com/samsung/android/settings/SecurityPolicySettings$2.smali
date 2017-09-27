.class Lcom/samsung/android/settings/SecurityPolicySettings$2;
.super Ljava/lang/Object;
.source "SecurityPolicySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SecurityPolicySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SecurityPolicySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecurityPolicySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/SecurityPolicySettings;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    .prologue
    .line 350
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "SecurityPolicyUpdatesNow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 352
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get1(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 357
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SecurityPolicyUpdates"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 359
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 361
    :cond_3
    const-string/jumbo v1, "SecurityAutoUpdateOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 362
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 364
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 366
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 368
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SecurityPolicyUpdates"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SecurityPolicyUpdates"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 372
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 373
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 374
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SecurityPolicyUpdates"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SecurityPolicyUpdates"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 377
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 380
    :cond_7
    const-string/jumbo v1, "SecurityAutoUpdateOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 383
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 385
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_9

    .line 387
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SecurityPolicyUpdates"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SecurityPolicyUpdates"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 391
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get0(Lcom/samsung/android/settings/SecurityPolicySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 392
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 393
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SecurityPolicyUpdates"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SecurityPolicyUpdates"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 396
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$2;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/SecurityPolicySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
