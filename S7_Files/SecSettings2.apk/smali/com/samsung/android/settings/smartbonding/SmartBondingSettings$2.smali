.class Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;
.super Ljava/lang/Object;
.source "SmartBondingSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 226
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "DownloadBoosterOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->-get0(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster "

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->-get0(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 235
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster "

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 241
    :cond_3
    const-string/jumbo v1, "DownloadBoosterOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->-get0(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 244
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster "

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 248
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->-get0(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 249
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 250
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster "

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 253
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
