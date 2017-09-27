.class Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;
.super Ljava/lang/Object;
.source "MirrorLink.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/mirrorlink/MirrorLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    .prologue
    .line 741
    iput-object p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 4

    .prologue
    .line 745
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "MirrorLinkSettingOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 747
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 749
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 753
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 755
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/preference/SwitchPreference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 756
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 759
    :cond_3
    const-string/jumbo v1, "MirrorLinkSettingOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 762
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 764
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    .line 766
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 768
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/preference/SwitchPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 769
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
