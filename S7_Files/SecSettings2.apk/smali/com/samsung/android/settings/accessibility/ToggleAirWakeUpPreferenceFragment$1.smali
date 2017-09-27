.class Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ToggleAirWakeUpPreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    .prologue
    .line 158
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "EasyScreenTrunOnOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "EasyScreenState"

    const-string/jumbo v3, "Already_on"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "EasyScreenTurnOn"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 167
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "EasyScreenState"

    const-string/jumbo v3, "Already_on"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "EasyScreenTurnOn"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 173
    :cond_3
    const-string/jumbo v1, "EasyScreenTrunOnOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 175
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "EasyScreenState"

    const-string/jumbo v3, "Already_off"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "EasyScreenTurnOn"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 179
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 180
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 181
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "EasyScreenState"

    const-string/jumbo v3, "Already_off"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "EasyScreenTurnOn"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 184
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
