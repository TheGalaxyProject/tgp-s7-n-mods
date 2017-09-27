.class Lcom/android/settings/location/LocationSettings$5;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/location/LocationSettings;

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 732
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "LocationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateReceived : stateId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-wrap0(Lcom/android/settings/location/LocationSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 738
    .local v0, "mode":I
    const-string/jumbo v2, "LocationOn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 739
    if-nez v0, :cond_2

    .line 740
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 741
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Location"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Location"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 744
    :cond_0
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get3(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v3}, Lcom/android/settings/location/LocationSettings;->-get6(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->onSwitchChanged(Landroid/widget/Switch;Z)V

    .line 745
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 779
    :cond_1
    :goto_0
    return-void

    .line 748
    :cond_2
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Location"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Location"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 750
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 752
    :cond_3
    const-string/jumbo v2, "LocationOff"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 753
    if-eqz v0, :cond_5

    .line 754
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 755
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Location"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Location"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 758
    :cond_4
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get3(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v3}, Lcom/android/settings/location/LocationSettings;->-get6(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->onSwitchChanged(Landroid/widget/Switch;Z)V

    .line 759
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 762
    :cond_5
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Location"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Location"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 764
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 766
    :cond_6
    const-string/jumbo v2, "LocatingMethod"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 767
    if-eqz v0, :cond_7

    .line 770
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get2(Lcom/android/settings/location/LocationSettings;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v3}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 771
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 774
    :cond_7
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "LocatingMethod"

    const-string/jumbo v4, "Valid"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "LocatingMethod"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 776
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings$5;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettings;->-get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
