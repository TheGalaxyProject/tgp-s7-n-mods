.class Lcom/android/systemui/tv/pip/PipManager$5;
.super Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/pip/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tv/pip/PipManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/tv/pip/PipManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/tv/pip/PipManager;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPinned()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 589
    const/4 v2, 0x0

    .line 591
    .local v2, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v3}, Lcom/android/systemui/tv/pip/PipManager;->-get1(Lcom/android/systemui/tv/pip/PipManager;)Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    .line 592
    .local v2, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-nez v2, :cond_0

    .line 593
    const-string/jumbo v3, "PipManager"

    const-string/jumbo v4, "Cannot find pinned stack"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    return-void

    .line 596
    .end local v2    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "PipManager"

    const-string/jumbo v4, "getStackInfo failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    return-void

    .line 601
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v5, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    invoke-static {v3, v4}, Lcom/android/systemui/tv/pip/PipManager;->-set3(Lcom/android/systemui/tv/pip/PipManager;I)I

    .line 602
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    .line 603
    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    iget-object v5, v2, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    .line 602
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/tv/pip/PipManager;->-set2(Lcom/android/systemui/tv/pip/PipManager;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 605
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v3, v7}, Lcom/android/systemui/tv/pip/PipManager;->-set4(Lcom/android/systemui/tv/pip/PipManager;I)I

    .line 606
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4}, Lcom/android/systemui/tv/pip/PipManager;->-get5(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/tv/pip/PipManager;->-set0(Lcom/android/systemui/tv/pip/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 607
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v3}, Lcom/android/systemui/tv/pip/PipManager;->-wrap3(Lcom/android/systemui/tv/pip/PipManager;)V

    .line 608
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v3}, Lcom/android/systemui/tv/pip/PipManager;->-get4(Lcom/android/systemui/tv/pip/PipManager;)Landroid/media/session/MediaSessionManager;

    move-result-object v3

    .line 609
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4}, Lcom/android/systemui/tv/pip/PipManager;->-get0(Lcom/android/systemui/tv/pip/PipManager;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    move-result-object v4

    .line 608
    invoke-virtual {v3, v4, v6}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    .line 610
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v4}, Lcom/android/systemui/tv/pip/PipManager;->-get4(Lcom/android/systemui/tv/pip/PipManager;)Landroid/media/session/MediaSessionManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/tv/pip/PipManager;->-wrap6(Lcom/android/systemui/tv/pip/PipManager;Ljava/util/List;)V

    .line 611
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v3}, Lcom/android/systemui/tv/pip/PipManager;->-get6(Lcom/android/systemui/tv/pip/PipManager;)Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->isRecentsShown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 614
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    .line 616
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v3}, Lcom/android/systemui/tv/pip/PipManager;->-get3(Lcom/android/systemui/tv/pip/PipManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 617
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v3}, Lcom/android/systemui/tv/pip/PipManager;->-get3(Lcom/android/systemui/tv/pip/PipManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/tv/pip/PipManager$Listener;

    invoke-interface {v3}, Lcom/android/systemui/tv/pip/PipManager$Listener;->onPipEntered()V

    .line 616
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 619
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v3, v7}, Lcom/android/systemui/tv/pip/PipManager;->-wrap7(Lcom/android/systemui/tv/pip/PipManager;Z)V

    .line 587
    return-void
.end method

.method public onPinnedActivityRestartAttempt()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->movePipToFullscreen()V

    .line 623
    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipManager;->-get9(Lcom/android/systemui/tv/pip/PipManager;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 630
    :goto_0
    return-void

    .line 634
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipManager;->-get6(Lcom/android/systemui/tv/pip/PipManager;)Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->isRecentsShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipManager;->-wrap5(Lcom/android/systemui/tv/pip/PipManager;)V

    goto :goto_0

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v1}, Lcom/android/systemui/tv/pip/PipManager;->-get9(Lcom/android/systemui/tv/pip/PipManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    goto :goto_0

    .line 645
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipManager;->-get6(Lcom/android/systemui/tv/pip/PipManager;)Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->addPipRecentsOverlayView()V

    goto :goto_0

    .line 648
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipManager;->-wrap4(Lcom/android/systemui/tv/pip/PipManager;)V

    goto :goto_0

    .line 632
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onTaskStackChanged()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 539
    iget-object v7, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v7}, Lcom/android/systemui/tv/pip/PipManager;->-get9(Lcom/android/systemui/tv/pip/PipManager;)I

    move-result v7

    if-eqz v7, :cond_3

    .line 540
    const/4 v2, 0x0

    .line 542
    .local v2, "hasPip":Z
    const/4 v5, 0x0

    .line 544
    .local v5, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v7}, Lcom/android/systemui/tv/pip/PipManager;->-get1(Lcom/android/systemui/tv/pip/PipManager;)Landroid/app/IActivityManager;

    move-result-object v7

    const/4 v8, 0x4

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v5

    .line 545
    .local v5, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-nez v5, :cond_0

    .line 546
    const-string/jumbo v7, "PipManager"

    const-string/jumbo v8, "There is no pinned stack"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v7, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/tv/pip/PipManager;->-wrap1(Lcom/android/systemui/tv/pip/PipManager;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    return-void

    .line 550
    .end local v5    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :catch_0
    move-exception v1

    .line 551
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "PipManager"

    const-string/jumbo v8, "getStackInfo failed"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    return-void

    .line 554
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v5    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_0
    iget-object v7, v5, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v7, v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 555
    iget-object v7, v5, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    aget v7, v7, v3

    iget-object v8, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v8}, Lcom/android/systemui/tv/pip/PipManager;->-get7(Lcom/android/systemui/tv/pip/PipManager;)I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 557
    const/4 v2, 0x1

    .line 561
    :cond_1
    if-nez v2, :cond_3

    .line 563
    iget-object v7, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v7, v9}, Lcom/android/systemui/tv/pip/PipManager;->-wrap1(Lcom/android/systemui/tv/pip/PipManager;Z)V

    .line 564
    return-void

    .line 554
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 567
    .end local v2    # "hasPip":Z
    .end local v3    # "i":I
    .end local v5    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v7}, Lcom/android/systemui/tv/pip/PipManager;->-get9(Lcom/android/systemui/tv/pip/PipManager;)I

    move-result v7

    if-ne v7, v9, :cond_6

    .line 569
    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v7}, Lcom/android/systemui/tv/pip/PipManager;->-get1(Lcom/android/systemui/tv/pip/PipManager;)Landroid/app/IActivityManager;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    move-result-object v4

    .line 570
    .local v4, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 571
    :cond_4
    return-void

    .line 573
    :cond_5
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 574
    .local v6, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {v7}, Lcom/android/systemui/tv/pip/PipManager;->-wrap0(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 575
    iget-object v7, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v7}, Lcom/android/systemui/tv/pip/PipManager;->-get8(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;

    move-result-object v0

    .line 576
    .local v0, "bounds":Landroid/graphics/Rect;
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v7}, Lcom/android/systemui/tv/pip/PipManager;->-get5(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;

    move-result-object v7

    if-eq v7, v0, :cond_6

    .line 577
    iget-object v7, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v7, v0}, Lcom/android/systemui/tv/pip/PipManager;->-set1(Lcom/android/systemui/tv/pip/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 578
    iget-object v7, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    .line 538
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v6    # "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_6
    :goto_2
    return-void

    .line 575
    .restart local v4    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v6    # "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/tv/pip/PipManager$5;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v7}, Lcom/android/systemui/tv/pip/PipManager;->-get2(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .restart local v0    # "bounds":Landroid/graphics/Rect;
    goto :goto_1

    .line 580
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v6    # "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :catch_1
    move-exception v1

    .line 581
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "PipManager"

    const-string/jumbo v8, "Failed to detect top activity"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
