.class Lcom/android/settings/personalvibration/SelectPatternDialog$1;
.super Ljava/lang/Object;
.source "SelectPatternDialog.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalvibration/SelectPatternDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/personalvibration/SelectPatternDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/personalvibration/SelectPatternDialog;

    .prologue
    .line 777
    iput-object p1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 780
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v7

    .line 782
    .local v7, "stateId":Ljava/lang/String;
    const-string/jumbo v0, "Vibrationpattern"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v6

    .line 785
    .local v6, "recipientId":Ljava/lang/String;
    const/4 v3, -0x1

    .line 786
    .local v3, "position":I
    const-string/jumbo v0, "basic call"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 787
    const/4 v3, 0x0

    .line 798
    :cond_0
    :goto_0
    const/4 v0, -0x1

    if-ne v3, v0, :cond_6

    .line 799
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "VibrationPattern"

    const-string/jumbo v2, "Match"

    const-string/jumbo v4, "no"

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "Vibrationpattern"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 820
    .end local v3    # "position":I
    .end local v6    # "recipientId":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 788
    .restart local v3    # "position":I
    .restart local v6    # "recipientId":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "heartbeat"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 789
    const/4 v3, 0x1

    goto :goto_0

    .line 790
    :cond_3
    const-string/jumbo v0, "ticktock"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 791
    const/4 v3, 0x2

    goto :goto_0

    .line 792
    :cond_4
    const-string/jumbo v0, "waltz"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 793
    const/4 v3, 0x3

    goto :goto_0

    .line 794
    :cond_5
    const-string/jumbo v0, "zig-zig-zig"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    const/4 v3, 0x4

    goto :goto_0

    .line 803
    :cond_6
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    iget v0, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    if-ne v3, v0, :cond_7

    .line 804
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "VibrationPattern"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v4, "yes"

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "VibrationPattern"

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "Vibrationpattern"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    .line 809
    :cond_7
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get1(Lcom/android/settings/personalvibration/SelectPatternDialog;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 810
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    const-wide/16 v4, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/personalvibration/SelectPatternDialog;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 811
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 812
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "VibrationPattern"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v4, "no"

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "VibrationPattern"

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "Vibrationpattern"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 816
    :cond_8
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1
.end method
