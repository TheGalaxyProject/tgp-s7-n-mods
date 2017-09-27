.class Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;
.super Ljava/lang/Object;
.source "BatteryInfoSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 227
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "stateId":Ljava/lang/String;
    const-string/jumbo v4, "BatteryStatus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 229
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get1(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 230
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const-string/jumbo v4, "BatteryLevel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 232
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 233
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 234
    :cond_2
    const-string/jumbo v4, "FCCCertification"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 235
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    const-string/jumbo v5, "fcc_id"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 236
    .local v1, "fccId":Landroid/preference/Preference;
    if-eqz v1, :cond_3

    .line 237
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 238
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 241
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 243
    .end local v1    # "fccId":Landroid/preference/Preference;
    :cond_4
    const-string/jumbo v4, "RATED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 244
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    const-string/jumbo v5, "rated_value"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 245
    .local v2, "rated":Landroid/preference/Preference;
    if-eqz v2, :cond_5

    .line 246
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 247
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 250
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 252
    .end local v2    # "rated":Landroid/preference/Preference;
    :cond_6
    const-string/jumbo v4, "BatteryCapacity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 253
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    const-string/jumbo v5, "battery_capacity"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 254
    .local v0, "batteryCapacity":Landroid/preference/Preference;
    if-eqz v0, :cond_7

    .line 255
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v0}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 256
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 259
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
