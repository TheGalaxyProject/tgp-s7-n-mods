.class Lcom/samsung/android/settings/notification/SoundSettings$14;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/SoundSettings;

    .prologue
    .line 1663
    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 9

    .prologue
    .line 1667
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    .line 1669
    .local v4, "stateId":Ljava/lang/String;
    const-string/jumbo v5, "SoundMode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "Sound mode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1670
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v3

    .line 1671
    .local v3, "recipientId":Ljava/lang/String;
    const/4 v1, -0x1

    .line 1672
    .local v1, "position":I
    const-string/jumbo v5, "Mute"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1673
    const/4 v1, 0x0

    .line 1679
    :cond_1
    :goto_0
    const/4 v5, -0x1

    if-ne v1, v5, :cond_5

    .line 1680
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundMode"

    const-string/jumbo v7, "Match"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1682
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1952
    .end local v1    # "position":I
    .end local v3    # "recipientId":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 1674
    .restart local v1    # "position":I
    .restart local v3    # "recipientId":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "Vibrate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1675
    const/4 v1, 0x1

    goto :goto_0

    .line 1676
    :cond_4
    const-string/jumbo v5, "Sound"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1677
    const/4 v1, 0x2

    goto :goto_0

    .line 1684
    :cond_5
    rsub-int/lit8 v0, v1, 0x2

    .line 1685
    .local v0, "entryPosition":I
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundSettings;->-get1()Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v5

    if-ne v1, v5, :cond_6

    .line 1686
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundMode"

    const-string/jumbo v7, "AlreadySelected"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1688
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/notification/SoundSettings;->-get15(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/SecDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v0

    .line 1687
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1690
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    .line 1692
    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundSettings;->-get1()Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 1693
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1694
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundMode"

    const-string/jumbo v7, "AlreadySelected"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1696
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/notification/SoundSettings;->-get15(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/SecDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v0

    .line 1695
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1699
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1702
    .end local v0    # "entryPosition":I
    .end local v1    # "position":I
    .end local v3    # "recipientId":Ljava/lang/String;
    :cond_8
    const-string/jumbo v5, "VibrateWhileRingingOn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1703
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1705
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1707
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1709
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    .line 1710
    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1709
    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1712
    :cond_a
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1713
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    .line 1714
    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1713
    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1717
    :cond_b
    const-string/jumbo v5, "VibrateWhileRingingOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1718
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_c

    .line 1720
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1722
    :cond_c
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1724
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    .line 1725
    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1724
    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1727
    :cond_d
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1728
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    .line 1729
    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1728
    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1732
    :cond_e
    const-string/jumbo v5, "VolumeSetting"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1733
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v6, "volume_setting"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1734
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1735
    :cond_f
    const-string/jumbo v5, "Vibrationintensity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1736
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v6, "vibration_feedback_intensity"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1737
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1738
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1739
    :cond_10
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1740
    :cond_11
    const-string/jumbo v5, "Ringtone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1741
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get12(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/DefaultRingtonePreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1742
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1743
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1744
    :cond_12
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1745
    :cond_13
    const-string/jumbo v5, "Vibrationpattern"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1746
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get3(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1747
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1748
    :cond_14
    const-string/jumbo v5, "NotificationSounds"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1749
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get16(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1750
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1751
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1752
    :cond_15
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1753
    :cond_16
    const-string/jumbo v5, "DoNotDisturb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1754
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get20(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1755
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1756
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1757
    :cond_17
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1758
    :cond_18
    const-string/jumbo v5, "TouchSoundsOn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1759
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get17(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1760
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "TouchSounds "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1762
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1764
    :cond_19
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get17(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1765
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1766
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "TouchSounds "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1769
    :cond_1a
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1771
    :cond_1b
    const-string/jumbo v5, "TouchSoundsOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1772
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get17(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 1773
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "TouchSounds "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1775
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1777
    :cond_1c
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get17(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1778
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1779
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "TouchSounds "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1782
    :cond_1d
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1784
    :cond_1e
    const-string/jumbo v5, "ScreenLockSoundsOn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1785
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get13(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1786
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1787
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "ScreenlockSounds "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1790
    :cond_1f
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1792
    :cond_20
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get13(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1793
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1794
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "ScreenlockSounds "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1797
    :cond_21
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1799
    :cond_22
    const-string/jumbo v5, "ScreenLockSoundsOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1800
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get13(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_23

    .line 1801
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "ScreenlockSounds "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1803
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1805
    :cond_23
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get13(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1806
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1807
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "ScreenlockSounds "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1810
    :cond_24
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1812
    :cond_25
    const-string/jumbo v5, "ChargingSoundsOn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1813
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    .line 1814
    const-string/jumbo v6, "charging_sounds"

    .line 1813
    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 1815
    .local v2, "preference":Landroid/preference/SwitchPreference;
    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1816
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "ChargingSounds "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1818
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1820
    :cond_26
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1821
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1822
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "ChargingSounds "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1825
    :cond_27
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1827
    .end local v2    # "preference":Landroid/preference/SwitchPreference;
    :cond_28
    const-string/jumbo v5, "ChargingSoundsOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1828
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    .line 1829
    const-string/jumbo v6, "charging_sounds"

    .line 1828
    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 1830
    .restart local v2    # "preference":Landroid/preference/SwitchPreference;
    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_29

    .line 1831
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "ChargingSounds "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1833
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1835
    :cond_29
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1836
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1837
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "ChargingSounds "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1840
    :cond_2a
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1842
    .end local v2    # "preference":Landroid/preference/SwitchPreference;
    :cond_2b
    const-string/jumbo v5, "VibrationFeedbackOn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1843
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1844
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "VibrationFeedback "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1846
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1848
    :cond_2c
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1849
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1850
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "VibrationFeedback "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1853
    :cond_2d
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1855
    :cond_2e
    const-string/jumbo v5, "VibrationFeedbackOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1856
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2f

    .line 1857
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "VibrationFeedback "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1859
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1861
    :cond_2f
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1862
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1863
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "VibrationFeedback "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1866
    :cond_30
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1868
    :cond_31
    const-string/jumbo v5, "DialingKeypadTonesOn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1869
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get4(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1870
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "DialingkeypadTones "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1872
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1874
    :cond_32
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get4(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1875
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1876
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "DialingkeypadTones "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1879
    :cond_33
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1881
    :cond_34
    const-string/jumbo v5, "DialingKeypadTonesOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1882
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get4(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_35

    .line 1883
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "DialingkeypadTones "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1885
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1887
    :cond_35
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get4(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1888
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1889
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "DialingkeypadTones "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1892
    :cond_36
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1894
    :cond_37
    const-string/jumbo v5, "KeyboardSoundOn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 1895
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get7(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1896
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "KeyboardSounds "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1898
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1900
    :cond_38
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get7(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1901
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 1902
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "KeyboardSounds "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1905
    :cond_39
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1907
    :cond_3a
    const-string/jumbo v5, "KeyboardSoundOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1908
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get7(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 1909
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "KeyboardSounds "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1911
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1913
    :cond_3b
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get7(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1914
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 1915
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "KeyboardSounds "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1918
    :cond_3c
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1920
    :cond_3d
    const-string/jumbo v5, "KeyboardVibrationOn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1921
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get8(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1922
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "KeyboardVibration "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1924
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1926
    :cond_3e
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get8(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1927
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1928
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "KeyboardVibration "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1931
    :cond_3f
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1933
    :cond_40
    const-string/jumbo v5, "KeyboardVibrationOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 1934
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get8(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_41

    .line 1935
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "KeyboardVibration "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1937
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1939
    :cond_41
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get8(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1940
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 1941
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "KeyboardVibration "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1944
    :cond_42
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1946
    :cond_43
    const-string/jumbo v5, "SoundQualityAndEffects"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1947
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get14(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1948
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 1949
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1950
    :cond_44
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1
.end method
