.class Lcom/android/systemui/stackdivider/DividerPanel$1;
.super Landroid/content/BroadcastReceiver;
.source "DividerPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerPanel;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/DividerPanel;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerPanel$1;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    const-string/jumbo v13, "com.samsung.android.intent.action.POPUP_GUIDE_SNAP_TARGET_FULLSCREEN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerPanel$1;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-static {v13}, Lcom/android/systemui/stackdivider/DividerPanel;->-get6(Lcom/android/systemui/stackdivider/DividerPanel;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerPanel$1;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    iget-object v13, v13, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_2

    .line 87
    return-void

    .line 89
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    .line 90
    .local v8, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    .line 91
    .local v7, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v7, :cond_5

    .line 92
    iget v13, v7, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeStack(I)Z

    move-result v13

    if-nez v13, :cond_4

    .line 93
    iget v13, v7, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isFreeformStack(I)Z

    move-result v2

    .line 94
    :goto_1
    if-eqz v7, :cond_6

    iget v13, v7, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    if-nez v13, :cond_6

    const/4 v12, 0x1

    .line 95
    .local v12, "unResizeableTask":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerPanel$1;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-static {v13}, Lcom/android/systemui/stackdivider/DividerPanel;->-get2(Lcom/android/systemui/stackdivider/DividerPanel;)Z

    move-result v13

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerPanel$1;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-static {v13}, Lcom/android/systemui/stackdivider/DividerPanel;->-get0(Lcom/android/systemui/stackdivider/DividerPanel;)Z

    move-result v13

    if-nez v13, :cond_3

    if-nez v2, :cond_3

    if-nez v12, :cond_3

    if-nez v7, :cond_8

    .line 96
    :cond_3
    const-string/jumbo v14, "SnapView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "divider visible "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/stackdivider/DividerPanel$1;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-static {v15}, Lcom/android/systemui/stackdivider/DividerPanel;->-get2(Lcom/android/systemui/stackdivider/DividerPanel;)Z

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, " minimized "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/stackdivider/DividerPanel$1;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-static {v15}, Lcom/android/systemui/stackdivider/DividerPanel;->-get0(Lcom/android/systemui/stackdivider/DividerPanel;)Z

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 97
    if-nez v7, :cond_7

    const-string/jumbo v13, " no running task "

    .line 96
    :goto_3
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void

    .line 92
    .end local v12    # "unResizeableTask":Z
    :cond_4
    const/4 v2, 0x1

    .local v2, "isRunningHomeOrFreeFormStack":Z
    goto :goto_1

    .line 91
    .end local v2    # "isRunningHomeOrFreeFormStack":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "isRunningHomeOrFreeFormStack":Z
    goto :goto_1

    .line 94
    .end local v2    # "isRunningHomeOrFreeFormStack":Z
    :cond_6
    const/4 v12, 0x0

    .restart local v12    # "unResizeableTask":Z
    goto :goto_2

    .line 97
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, " tid "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v0, v7, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    .line 101
    :cond_8
    const/4 v10, 0x1

    .line 102
    .local v10, "statusbarHidden":Z
    const/4 v3, 0x0

    .line 104
    .local v3, "navibarHidden":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerPanel$1;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    iget-object v1, v13, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/systemui/SystemUIApplication;

    .line 105
    .local v1, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v13, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v13}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 106
    .local v9, "statusBar":Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-virtual {v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 107
    .local v5, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerPanel$1;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    iget-object v13, v13, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 109
    .local v6, "res":Landroid/content/res/Resources;
    if-eqz v9, :cond_a

    .line 110
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v11

    .line 111
    .local v11, "sv":Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v4

    .line 112
    .local v4, "nv":Lcom/android/systemui/statusbar/phone/NavigationBarView;
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->isShown()Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v10, 0x0

    .line 113
    :cond_9
    :goto_4
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isShown()Z

    move-result v13

    if-eqz v13, :cond_e

    const/4 v3, 0x0

    .line 115
    .end local v4    # "nv":Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .end local v11    # "sv":Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    :cond_a
    :goto_5
    if-nez v10, :cond_b

    .line 116
    const v13, 0x1050017

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v5, Landroid/graphics/Rect;->top:I

    .line 118
    :cond_b
    if-nez v3, :cond_c

    .line 119
    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    const v14, 0x1050018

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    sub-int/2addr v13, v14

    iput v13, v5, Landroid/graphics/Rect;->bottom:I

    .line 122
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerPanel$1;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-static {v13}, Lcom/android/systemui/stackdivider/DividerPanel;->-get5(Lcom/android/systemui/stackdivider/DividerPanel;)Lcom/android/systemui/stackdivider/DividerSnapView;

    move-result-object v13

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/stackdivider/DividerPanel$1;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-static {v13}, Lcom/android/systemui/stackdivider/DividerPanel;->-get5(Lcom/android/systemui/stackdivider/DividerPanel;)Lcom/android/systemui/stackdivider/DividerSnapView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/stackdivider/DividerSnapView;->getVisibility()I

    move-result v13

    if-nez v13, :cond_f

    .line 123
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v13

    new-instance v14, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;)V

    invoke-virtual {v13, v14}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_0

    .line 112
    .restart local v4    # "nv":Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .restart local v11    # "sv":Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    :cond_d
    const/4 v10, 0x1

    goto :goto_4

    .line 113
    :cond_e
    const/4 v3, 0x1

    goto :goto_5

    .line 125
    .end local v4    # "nv":Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .end local v11    # "sv":Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    :cond_f
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v13

    new-instance v14, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    const/4 v15, 0x1

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-direct {v14, v15, v0, v5}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;)V

    invoke-virtual {v13, v14}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_0
.end method
