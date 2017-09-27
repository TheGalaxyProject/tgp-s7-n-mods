.class Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;
.super Ljava/lang/Object;
.source "NearbyScanning.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nearbyscan/NearbyScanning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    .prologue
    .line 185
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "NearbyDeviceScanningOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get2(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "NearbyDeviceScanning"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "NearbyDeviceScanning"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get2(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 194
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "NearbyDeviceScanning"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "NearbyDeviceScanning"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 200
    :cond_3
    const-string/jumbo v1, "NearbyDeviceScanningOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get2(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 202
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "NearbyDeviceScanning"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "NearbyDeviceScanning"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 206
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get2(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 207
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 208
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "NearbyDeviceScanning"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "NearbyDeviceScanning"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 211
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->-get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
