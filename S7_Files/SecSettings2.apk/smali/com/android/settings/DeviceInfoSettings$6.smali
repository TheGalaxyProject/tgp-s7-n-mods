.class Lcom/android/settings/DeviceInfoSettings$6;
.super Landroid/os/Handler;
.source "DeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DeviceInfoSettings;

    .prologue
    .line 2094
    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 2097
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v2}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 2098
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2099
    .local v1, "stateId":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2096
    :cond_1
    :goto_0
    return-void

    .line 2101
    :pswitch_0
    const-string/jumbo v2, "DeviceNameChange"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2102
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v2}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-eqz v2, :cond_5

    .line 2103
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v2}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v0

    .line 2104
    .local v0, "newName":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2105
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v3, "device_name"

    invoke-virtual {v2, v3}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2106
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v2}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 2108
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v2}, Lcom/android/settings/DeviceInfoSettings;->isResumed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2109
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v2}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 2111
    :cond_4
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v2, v0}, Lcom/android/settings/DeviceInfoSettings;->showDialog(Ljava/lang/String;)V

    .line 2112
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v2}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 2116
    .end local v0    # "newName":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v2}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 2099
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
