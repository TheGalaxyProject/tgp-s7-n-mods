.class Lcom/samsung/android/settings/WirelessSettings$7;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/WirelessSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/WirelessSettings;

    .prologue
    .line 1408
    iput-object p1, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 3

    .prologue
    .line 1412
    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 1413
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "NearbyDeviceScanning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1414
    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v2, "nearby_scanning_setting_category"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1415
    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1416
    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1417
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1432
    :cond_1
    :goto_0
    return-void

    .line 1418
    :cond_2
    const-string/jumbo v1, "Printing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1419
    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v2, "print_settings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1420
    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1421
    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1422
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1423
    :cond_4
    const-string/jumbo v1, "MirrorLinkSetting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1424
    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v2, "mirror_link_settings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1425
    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1426
    :cond_5
    const-string/jumbo v1, "DownloadBooster"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1427
    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v2, "smart_bonding_settings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1428
    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1429
    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1430
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$7;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
