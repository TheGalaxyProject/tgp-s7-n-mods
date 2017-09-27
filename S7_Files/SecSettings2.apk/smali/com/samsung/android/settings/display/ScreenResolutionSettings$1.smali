.class Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;
.super Ljava/lang/Object;
.source "ScreenResolutionSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/ScreenResolutionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 184
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "stateId":Ljava/lang/String;
    const-string/jumbo v3, "ScreenResolutionApply"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    const/4 v0, -0x1

    .line 188
    .local v0, "progressValue":I
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "screenMode":Ljava/lang/String;
    const-string/jumbo v3, "HD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    const/4 v0, 0x0

    .line 199
    .end local v1    # "screenMode":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 200
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Object"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ScreenResolution"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 202
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 219
    .end local v0    # "progressValue":I
    :cond_1
    :goto_1
    return-void

    .line 193
    .restart local v0    # "progressValue":I
    .restart local v1    # "screenMode":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "FHD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 194
    const/4 v0, 0x1

    goto :goto_0

    .line 195
    :cond_3
    const-string/jumbo v3, "WQHD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    const/4 v0, 0x2

    goto :goto_0

    .line 204
    .end local v1    # "screenMode":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->getProgress()I

    move-result v3

    if-ne v0, v3, :cond_5

    .line 205
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Object"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ScreenResolution"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 207
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    .line 209
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->setProgress(I)V

    .line 210
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 211
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Object"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "ScreenResolution"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 214
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 215
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get2(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_1
.end method
