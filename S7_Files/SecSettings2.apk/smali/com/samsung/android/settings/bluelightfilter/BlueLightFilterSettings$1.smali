.class Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;
.super Ljava/lang/Object;
.source "BlueLightFilterSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 18

    .prologue
    .line 530
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v12

    .line 531
    .local v12, "stateId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-wrap0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "blue_light_filter_opacity"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 533
    .local v8, "opacity_currentValue":I
    const-string/jumbo v13, "BlueLightFilterControl"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 534
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v13

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v13

    if-nez v13, :cond_1

    .line 535
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    const-string/jumbo v15, "ON"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Display"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 548
    .local v3, "OpacityValue":I
    if-ltz v3, :cond_2

    const/16 v13, 0x64

    if-le v3, v13, :cond_3

    .line 549
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "Valid"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 542
    .end local v3    # "OpacityValue":I
    :catch_0
    move-exception v4

    .line 543
    .local v4, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "Valid"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 546
    return-void

    .line 553
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "OpacityValue":I
    :cond_3
    div-int/lit8 v2, v3, 0xa

    .line 555
    .local v2, "OpacityLevel":I
    const-string/jumbo v13, "BlueLightFilterSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "opacity_currentValue"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    if-ne v2, v8, :cond_4

    .line 557
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "Yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 563
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    .line 565
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 566
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 570
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 574
    .end local v2    # "OpacityLevel":I
    .end local v3    # "OpacityValue":I
    :cond_6
    const-string/jumbo v13, "BlueLightFilterControlUp"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 575
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v13

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v13

    if-nez v13, :cond_7

    .line 576
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    const-string/jumbo v15, "ON"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Display"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 580
    :cond_7
    const-string/jumbo v13, "BlueLightFilterSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "opacity_currentValue"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/16 v13, 0xa

    if-ne v8, v13, :cond_8

    .line 582
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Opacity"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "Yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 586
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 587
    if-ltz v8, :cond_9

    const/16 v13, 0xa

    if-le v8, v13, :cond_a

    .line 588
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 589
    return-void

    .line 591
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    .line 592
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 593
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Opacity"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 596
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 599
    :cond_c
    const-string/jumbo v13, "BlueLightFilterControlDown"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 600
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v13

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v13

    if-nez v13, :cond_d

    .line 601
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    const-string/jumbo v15, "ON"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Display"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 605
    :cond_d
    if-nez v8, :cond_e

    .line 606
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Opacity"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "Yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 610
    :cond_e
    add-int/lit8 v8, v8, -0x1

    .line 611
    if-ltz v8, :cond_f

    const/16 v13, 0xa

    if-le v8, v13, :cond_10

    .line 612
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 613
    return-void

    .line 615
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    .line 616
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 617
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Opacity"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 620
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 623
    :cond_12
    const-string/jumbo v13, "BlueLightFilterControlMax"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 624
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v13

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v13

    if-nez v13, :cond_13

    .line 625
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    const-string/jumbo v15, "ON"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Display"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 629
    :cond_13
    const/16 v13, 0xa

    if-ne v8, v13, :cond_14

    .line 630
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Opacity"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "Yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 634
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v13

    const/16 v14, 0xa

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    .line 635
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 636
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Opacity"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 639
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 642
    :cond_16
    const-string/jumbo v13, "BlueLightFilterControlMin"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 643
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v13

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v13

    if-nez v13, :cond_17

    .line 644
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    const-string/jumbo v15, "ON"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Display"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 648
    :cond_17
    if-nez v8, :cond_18

    .line 649
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Opacity"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "Yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 653
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    .line 654
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_19

    .line 655
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Opacity"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 658
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 661
    :cond_1a
    const-string/jumbo v13, "BlueLightFilterScheduleSunsetToSunrise"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 662
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get2(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v13

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v13

    if-nez v13, :cond_1b

    .line 663
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Schedule"

    const-string/jumbo v15, "AlreadyOn"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 667
    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 668
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "SunsetToSunrise"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "Yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 672
    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-virtual {v14}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 674
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "SunsetToSunrise"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 677
    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 680
    :cond_1e
    const-string/jumbo v13, "BlueLightFilterScheduleCustom"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 681
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get2(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v13

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v13

    if-nez v13, :cond_1f

    .line 682
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Schedule"

    const-string/jumbo v15, "AlreadyOn"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 686
    :cond_1f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get4(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->isChecked()Z

    move-result v13

    if-nez v13, :cond_20

    .line 687
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Schedule"

    const-string/jumbo v15, "Selected"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 691
    :cond_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v10

    .line 692
    .local v10, "startTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v6

    .line 693
    .local v6, "endTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get4(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-virtual {v14}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 694
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v13, "HH:MM"

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v9, v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 695
    .local v9, "st":Ljava/text/SimpleDateFormat;
    const/4 v11, 0x0

    .line 696
    .local v11, "start_date":Ljava/util/Date;
    const/4 v7, 0x0

    .line 699
    .local v7, "end_date":Ljava/util/Date;
    :try_start_1
    const-string/jumbo v13, "BlueLightFilterSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "start time calendar.getTime()"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 701
    .local v11, "start_date":Ljava/util/Date;
    invoke-virtual {v9, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 705
    .end local v7    # "end_date":Ljava/util/Date;
    .end local v11    # "start_date":Ljava/util/Date;
    :goto_1
    if-eqz v11, :cond_21

    if-nez v7, :cond_22

    .line 706
    :cond_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Schedule"

    const-string/jumbo v15, "Valid"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 702
    .restart local v7    # "end_date":Ljava/util/Date;
    :catch_1
    move-exception v5

    .line 703
    .local v5, "e":Ljava/text/ParseException;
    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 710
    .end local v5    # "e":Ljava/text/ParseException;
    .end local v7    # "end_date":Ljava/util/Date;
    :cond_22
    const-string/jumbo v13, "BlueLightFilterSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "start time is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/util/Date;->getHours()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/util/Date;->getMinutes()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-set0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;I)I

    .line 712
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-virtual {v11}, Ljava/util/Date;->getHours()I

    move-result v14

    invoke-virtual {v11}, Ljava/util/Date;->getMinutes()I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V

    .line 714
    const-string/jumbo v13, "BlueLightFilterSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "end time is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/util/Date;->getMinutes()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-set0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;I)I

    .line 716
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v14

    invoke-virtual {v7}, Ljava/util/Date;->getMinutes()I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V

    .line 717
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_23

    .line 718
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Schedule"

    const-string/jumbo v15, "Valid"

    const-string/jumbo v16, "Yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 721
    :cond_23
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
