.class Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;
.super Landroid/os/Handler;
.source "VibrationIntensitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/VibrationIntensitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 315
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    .line 316
    :cond_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 318
    .local v5, "stateId":Ljava/lang/String;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 314
    :goto_0
    return-void

    .line 320
    :pswitch_0
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getInitFinish()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 321
    const-string/jumbo v9, "VibrationIncommingCall"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "VibrationIncomingCall"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 324
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 329
    .local v7, "vibrationIncommingCallPrm":I
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v9

    mul-int/2addr v9, v7

    div-int/lit8 v4, v9, 0x64

    .line 330
    .local v4, "mPercentValue":I
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-ne v9, v4, :cond_3

    .line 331
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 334
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 395
    .end local v4    # "mPercentValue":I
    .end local v7    # "vibrationIncommingCallPrm":I
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 327
    return-void

    .line 336
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "mPercentValue":I
    .restart local v7    # "vibrationIncommingCallPrm":I
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v4, v10, v11}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 337
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 340
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    .line 342
    .end local v4    # "mPercentValue":I
    .end local v7    # "vibrationIncommingCallPrm":I
    :cond_4
    const-string/jumbo v9, "VibrationIncommingCallUp"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string/jumbo v9, "VibrationIncomingCallUp"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 343
    :cond_5
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    .line 344
    iget-object v10, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getMax()I

    move-result v10

    .line 343
    if-ne v9, v10, :cond_6

    .line 345
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 347
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 349
    :cond_6
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x16

    invoke-direct {v1, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 350
    .local v1, "event":Landroid/view/KeyEvent;
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    const/16 v10, 0x16

    invoke-direct {v2, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 351
    .local v2, "event2":Landroid/view/KeyEvent;
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 352
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 353
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 355
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 357
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v2    # "event2":Landroid/view/KeyEvent;
    :cond_7
    const-string/jumbo v9, "VibrationIncommingCallDown"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, "VibrationIncomingCallDown"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 358
    :cond_8
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-nez v9, :cond_9

    .line 359
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 361
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 363
    :cond_9
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x15

    invoke-direct {v1, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 364
    .restart local v1    # "event":Landroid/view/KeyEvent;
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    const/16 v10, 0x15

    invoke-direct {v2, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 365
    .restart local v2    # "event2":Landroid/view/KeyEvent;
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 366
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 367
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 369
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 371
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v2    # "event2":Landroid/view/KeyEvent;
    :cond_a
    const-string/jumbo v9, "VibrationIncommingCallMax"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "VibrationIncomingCallMax"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 372
    :cond_b
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    .line 373
    .local v3, "mMaxVolume":I
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-ne v9, v3, :cond_c

    .line 374
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 376
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 378
    :cond_c
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v3, v10, v11}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 379
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 381
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 383
    .end local v3    # "mMaxVolume":I
    :cond_d
    const-string/jumbo v9, "VibrationIncommingCallMin"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string/jumbo v9, "VibrationIncomingCallMin"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 384
    :cond_e
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-nez v9, :cond_f

    .line 385
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 387
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 389
    :cond_f
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 390
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationIncomingCall"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 392
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 397
    :cond_10
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x64

    invoke-virtual {v9, p1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 401
    :pswitch_1
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getInitFinish()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 402
    const-string/jumbo v9, "VibrationNotification"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 405
    :try_start_1
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 410
    .local v8, "vibrationNotificationPrm":I
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v9

    mul-int/2addr v9, v8

    div-int/lit8 v4, v9, 0x64

    .line 411
    .restart local v4    # "mPercentValue":I
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-ne v9, v4, :cond_12

    .line 412
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 415
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 476
    .end local v4    # "mPercentValue":I
    .end local v8    # "vibrationNotificationPrm":I
    :cond_11
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 406
    :catch_1
    move-exception v0

    .line 407
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 408
    return-void

    .line 417
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "mPercentValue":I
    .restart local v8    # "vibrationNotificationPrm":I
    :cond_12
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v4, v10, v11}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 418
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 421
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_2

    .line 423
    .end local v4    # "mPercentValue":I
    .end local v8    # "vibrationNotificationPrm":I
    :cond_13
    const-string/jumbo v9, "VibrationNotificationsUp"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 424
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    .line 425
    iget-object v10, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getMax()I

    move-result v10

    .line 424
    if-ne v9, v10, :cond_14

    .line 426
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 428
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_2

    .line 430
    :cond_14
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x16

    invoke-direct {v1, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 431
    .restart local v1    # "event":Landroid/view/KeyEvent;
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    const/16 v10, 0x16

    invoke-direct {v2, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 432
    .restart local v2    # "event2":Landroid/view/KeyEvent;
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 433
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 434
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 436
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_2

    .line 438
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v2    # "event2":Landroid/view/KeyEvent;
    :cond_15
    const-string/jumbo v9, "VibrationNotificationDown"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 439
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-nez v9, :cond_16

    .line 440
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 442
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_2

    .line 444
    :cond_16
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x15

    invoke-direct {v1, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 445
    .restart local v1    # "event":Landroid/view/KeyEvent;
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    const/16 v10, 0x15

    invoke-direct {v2, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 446
    .restart local v2    # "event2":Landroid/view/KeyEvent;
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 447
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 448
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 450
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_2

    .line 452
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v2    # "event2":Landroid/view/KeyEvent;
    :cond_17
    const-string/jumbo v9, "VibrationNotificationMax"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 453
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    .line 454
    .restart local v3    # "mMaxVolume":I
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-ne v9, v3, :cond_18

    .line 455
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 457
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_2

    .line 459
    :cond_18
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v3, v10, v11}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 460
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 462
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_2

    .line 464
    .end local v3    # "mMaxVolume":I
    :cond_19
    const-string/jumbo v9, "VibrationNotificationMin"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 465
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-nez v9, :cond_1a

    .line 466
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 468
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_2

    .line 470
    :cond_1a
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 471
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationNotification"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 473
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_2

    .line 478
    :cond_1b
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x64

    invoke-virtual {v9, p1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 482
    :pswitch_2
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getInitFinish()Z

    move-result v9

    if-eqz v9, :cond_26

    .line 483
    const-string/jumbo v9, "VibrationFeedback"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 486
    :try_start_2
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    .line 491
    .local v6, "vibrationFeedbackPrm":I
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v9

    mul-int/2addr v9, v6

    div-int/lit8 v4, v9, 0x64

    .line 492
    .restart local v4    # "mPercentValue":I
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-ne v9, v4, :cond_1d

    .line 493
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 496
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 557
    .end local v4    # "mPercentValue":I
    .end local v6    # "vibrationFeedbackPrm":I
    :cond_1c
    :goto_3
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 487
    :catch_2
    move-exception v0

    .line 488
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 489
    return-void

    .line 498
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "mPercentValue":I
    .restart local v6    # "vibrationFeedbackPrm":I
    :cond_1d
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v4, v10, v11}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 499
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Level"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 502
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_3

    .line 504
    .end local v4    # "mPercentValue":I
    .end local v6    # "vibrationFeedbackPrm":I
    :cond_1e
    const-string/jumbo v9, "VibrationFeedbackUp"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 505
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    .line 506
    iget-object v10, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getMax()I

    move-result v10

    .line 505
    if-ne v9, v10, :cond_1f

    .line 507
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 509
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 511
    :cond_1f
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x16

    invoke-direct {v1, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 512
    .restart local v1    # "event":Landroid/view/KeyEvent;
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    const/16 v10, 0x16

    invoke-direct {v2, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 513
    .restart local v2    # "event2":Landroid/view/KeyEvent;
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 514
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 515
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 517
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 519
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v2    # "event2":Landroid/view/KeyEvent;
    :cond_20
    const-string/jumbo v9, "VibrationFeedbackDown"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 520
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-nez v9, :cond_21

    .line 521
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 523
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 525
    :cond_21
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x15

    invoke-direct {v1, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 526
    .restart local v1    # "event":Landroid/view/KeyEvent;
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    const/16 v10, 0x15

    invoke-direct {v2, v9, v10}, Landroid/view/KeyEvent;-><init>(II)V

    .line 527
    .restart local v2    # "event2":Landroid/view/KeyEvent;
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 528
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 529
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 531
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 533
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v2    # "event2":Landroid/view/KeyEvent;
    :cond_22
    const-string/jumbo v9, "VibrationFeedbackMax"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 534
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    .line 535
    .restart local v3    # "mMaxVolume":I
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-ne v9, v3, :cond_23

    .line 536
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 538
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 540
    :cond_23
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v3, v10, v11}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 541
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 543
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 545
    .end local v3    # "mMaxVolume":I
    :cond_24
    const-string/jumbo v9, "VibrationFeedbackMin"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 546
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    if-nez v9, :cond_25

    .line 547
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 549
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 551
    :cond_25
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    .line 552
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VibrationFeedback"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Vibrationintensity"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 554
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_3

    .line 559
    :cond_26
    iget-object v9, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v9}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x64

    invoke-virtual {v9, p1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
