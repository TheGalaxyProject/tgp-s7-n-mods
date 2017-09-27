.class Lcom/samsung/android/settings/NewModePreview$6;
.super Ljava/lang/Object;
.source "NewModePreview.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/NewModePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/NewModePreview;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/NewModePreview;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/NewModePreview;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 457
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v7

    .line 459
    .local v7, "stateId":Ljava/lang/String;
    const-string/jumbo v0, "ScreenModeApply"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 460
    const/4 v3, -0x1

    .line 461
    .local v3, "itemValue":I
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, " "

    const-string/jumbo v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 465
    .local v6, "screenMode":Ljava/lang/String;
    const-string/jumbo v0, "Adaptivedisplay"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    const/4 v3, 0x0

    .line 475
    .end local v6    # "screenMode":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v0, -0x1

    if-ne v3, v0, :cond_5

    .line 476
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Object"

    const-string/jumbo v2, "valid"

    const-string/jumbo v4, "No"

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "ScreenMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 508
    .end local v3    # "itemValue":I
    :cond_1
    :goto_1
    return-void

    .line 467
    .restart local v3    # "itemValue":I
    .restart local v6    # "screenMode":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "AMOLEDcinema"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 468
    const/4 v3, 0x1

    goto :goto_0

    .line 469
    :cond_3
    const-string/jumbo v0, "AMOLEDphoto"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 470
    const/4 v3, 0x2

    goto :goto_0

    .line 471
    :cond_4
    const-string/jumbo v0, "Basic"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const/4 v3, 0x3

    goto :goto_0

    .line 480
    .end local v6    # "screenMode":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v0}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    if-ne v3, v0, :cond_6

    .line 481
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Object"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "ScreenMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    .line 485
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v0}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 486
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    const-wide/16 v4, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/NewModePreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 487
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 488
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Object"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v4, "No"

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "ScreenMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 491
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 492
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v0}, Lcom/samsung/android/settings/NewModePreview;->finish()V

    goto/16 :goto_1

    .line 495
    .end local v3    # "itemValue":I
    :cond_8
    const-string/jumbo v0, "ColorBalance"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 502
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 503
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 505
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v0, v0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1
.end method
