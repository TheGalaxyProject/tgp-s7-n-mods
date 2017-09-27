.class Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;
.super Ljava/lang/Object;
.source "ToggleMagnifierPreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    .prologue
    .line 856
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 13

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 859
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    .line 861
    .local v5, "stateId":Ljava/lang/String;
    const-string/jumbo v6, "ToggleMagnifierPreferenceFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onStateReceived : stateId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 863
    const-string/jumbo v7, "finger_magnifier"

    .line 862
    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v11, :cond_0

    .line 863
    const/4 v3, 0x1

    .line 864
    .local v3, "newstate":Z
    :goto_0
    const-string/jumbo v6, "MagnifierWindowOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 866
    if-eqz v3, :cond_7

    .line 867
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    const-string/jumbo v8, "Already_On"

    .line 868
    const-string/jumbo v9, "Yes"

    .line 867
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 870
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 871
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 870
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1071
    :goto_1
    return-void

    .line 863
    .end local v3    # "newstate":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "newstate":Z
    goto :goto_0

    .line 864
    :cond_1
    const-string/jumbo v6, "MagnifierWindowOff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 883
    if-nez v3, :cond_9

    .line 884
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    const-string/jumbo v8, "Already_Off"

    .line 885
    const-string/jumbo v9, "Yes"

    .line 884
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 887
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 888
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 887
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    .line 864
    :cond_2
    const-string/jumbo v6, "ZoomPercentageSetMax"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 901
    if-eqz v3, :cond_d

    .line 903
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hover_zoom_value"

    .line 902
    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 904
    .local v0, "currentProgress":I
    if-ne v0, v12, :cond_b

    .line 905
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    .line 906
    const-string/jumbo v8, "Already_maximum"

    const-string/jumbo v9, "Yes"

    .line 905
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 908
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 909
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 908
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    .line 864
    .end local v0    # "currentProgress":I
    :cond_3
    const-string/jumbo v6, "ZoomPercentageSetMin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 929
    if-eqz v3, :cond_10

    .line 931
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hover_zoom_value"

    .line 930
    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 932
    .restart local v0    # "currentProgress":I
    if-nez v0, :cond_e

    .line 933
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    .line 934
    const-string/jumbo v8, "Already_minimum"

    const-string/jumbo v9, "Yes"

    .line 933
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 936
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 937
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 936
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 864
    .end local v0    # "currentProgress":I
    :cond_4
    const-string/jumbo v6, "ZoomPercentageSetIncrease"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 956
    if-eqz v3, :cond_13

    .line 958
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hover_zoom_value"

    .line 957
    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 959
    .restart local v0    # "currentProgress":I
    if-ne v0, v12, :cond_11

    .line 960
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    .line 961
    const-string/jumbo v8, "Already_maximum"

    const-string/jumbo v9, "Yes"

    .line 960
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 963
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 964
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 963
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 864
    .end local v0    # "currentProgress":I
    :cond_5
    const-string/jumbo v6, "ZoomPercentageSetDecrease"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 984
    if-eqz v3, :cond_16

    .line 986
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hover_zoom_value"

    .line 985
    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 987
    .restart local v0    # "currentProgress":I
    if-nez v0, :cond_14

    .line 988
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    .line 989
    const-string/jumbo v8, "Already_minimum"

    const-string/jumbo v9, "Yes"

    .line 988
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 991
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 992
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 991
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 864
    .end local v0    # "currentProgress":I
    :cond_6
    const-string/jumbo v6, "MagnifierSize"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1011
    const/4 v4, 0x0

    .line 1012
    .local v4, "paramSize":I
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_17

    .line 1014
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1030
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1031
    const-string/jumbo v7, "hover_zoom_magnifier_size"

    const/4 v8, 0x2

    .line 1030
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1032
    .local v1, "currentSize":I
    if-ne v1, v4, :cond_18

    .line 1033
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierSize"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1035
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 1036
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1035
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 873
    .end local v1    # "currentSize":I
    .end local v4    # "paramSize":I
    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 874
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    const-string/jumbo v8, "Already_On"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 877
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get3(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 878
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 879
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 878
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 890
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 891
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    const-string/jumbo v8, "Already_Off"

    .line 892
    const-string/jumbo v9, "No"

    .line 891
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 895
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get3(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 896
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 897
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 896
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 912
    .restart local v0    # "currentProgress":I
    :cond_b
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 913
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    .line 914
    const-string/jumbo v8, "Already_maximum"

    const-string/jumbo v9, "No"

    .line 913
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 917
    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    iget-object v6, v6, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v6, v12}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setZoomValue(I)V

    .line 918
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 919
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 918
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 922
    .end local v0    # "currentProgress":I
    :cond_d
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindowState"

    const-string/jumbo v8, "State"

    const-string/jumbo v9, "Off"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 924
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 925
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 924
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 939
    .restart local v0    # "currentProgress":I
    :cond_e
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 940
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    .line 941
    const-string/jumbo v8, "Already_minimum"

    const-string/jumbo v9, "No"

    .line 940
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 944
    :cond_f
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    iget-object v6, v6, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v6, v10}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setZoomValue(I)V

    .line 945
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 946
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 945
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 949
    .end local v0    # "currentProgress":I
    :cond_10
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindowState"

    const-string/jumbo v8, "State"

    const-string/jumbo v9, "Off"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 951
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 952
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 951
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 966
    .restart local v0    # "currentProgress":I
    :cond_11
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 967
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    .line 968
    const-string/jumbo v8, "Already_maximum"

    const-string/jumbo v9, "No"

    .line 967
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 972
    :cond_12
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    iget-object v6, v6, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setZoomValue(I)V

    .line 973
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 974
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 973
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 977
    .end local v0    # "currentProgress":I
    :cond_13
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindowState"

    const-string/jumbo v8, "State"

    const-string/jumbo v9, "Off"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 979
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 980
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 979
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 994
    .restart local v0    # "currentProgress":I
    :cond_14
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 995
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    .line 996
    const-string/jumbo v8, "Already_minimum"

    const-string/jumbo v9, "No"

    .line 995
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 999
    :cond_15
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    iget-object v6, v6, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setZoomValue(I)V

    .line 1000
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 1001
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1000
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1004
    .end local v0    # "currentProgress":I
    :cond_16
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindowState"

    const-string/jumbo v8, "State"

    const-string/jumbo v9, "Off"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1006
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 1007
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1006
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1015
    .restart local v4    # "paramSize":I
    :catch_0
    move-exception v2

    .line 1016
    .local v2, "e":Ljava/lang/NumberFormatException;
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierSize"

    const-string/jumbo v8, "Exists"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1018
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 1019
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1018
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1020
    return-void

    .line 1023
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_17
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierSize"

    const-string/jumbo v8, "Exists"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1025
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 1026
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1025
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1040
    .restart local v1    # "currentSize":I
    :cond_18
    if-lt v4, v11, :cond_19

    const/4 v6, 0x3

    if-le v4, v6, :cond_1a

    .line 1041
    :cond_19
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierSize"

    const-string/jumbo v8, "Exists"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1043
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 1044
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1043
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1048
    :cond_1a
    if-eqz v3, :cond_1c

    .line 1049
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1050
    const-string/jumbo v7, "hover_zoom_magnifier_size"

    .line 1049
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1051
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;->setValue(Ljava/lang/String;)V

    .line 1052
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v7}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1054
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1055
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierSize"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "YesYes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1058
    :cond_1b
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 1059
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1058
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1061
    :cond_1c
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindowState"

    const-string/jumbo v8, "State"

    const-string/jumbo v9, "Off"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1063
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 1064
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1063
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1068
    .end local v1    # "currentSize":I
    .end local v4    # "paramSize":I
    :cond_1d
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1
.end method
