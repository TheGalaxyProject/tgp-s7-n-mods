.class Lcom/android/server/power/ShutdownDialog$ImageLoadThread;
.super Lcom/android/server/power/ShutdownDialog$RunningCheckable;
.source "ShutdownDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoadThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;
    }
.end annotation


# instance fields
.field private coverOpen:Z

.field private coverStateDirty:Z

.field private mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method static synthetic -get0(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverOpen:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverOpen:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z

    return p1
.end method

.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog$RunningCheckable;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$RunningCheckable;)V

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverOpen:Z

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z

    .line 488
    new-instance v0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;-><init>(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 485
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$ImageLoadThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownDialog;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method

.method private chooseQmg(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)Lcom/android/server/power/LibQmg;
    .locals 3
    .param p1, "currentQmg"    # Lcom/android/server/power/LibQmg;
    .param p2, "normalQmg"    # Lcom/android/server/power/LibQmg;
    .param p3, "coverQmg"    # Lcom/android/server/power/LibQmg;

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverOpen:Z

    .line 586
    .local v0, "coverStateOpen":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z

    .line 587
    if-eqz v0, :cond_1

    if-ne p1, p2, :cond_1

    .line 589
    :cond_0
    return-object p1

    .line 588
    :cond_1
    if-nez v0, :cond_2

    if-eq p1, p3, :cond_0

    .line 591
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->getCurrentFrame()I

    move-result v1

    .line 592
    .local v1, "frameNum":I
    if-eqz v0, :cond_4

    .line 593
    move-object p1, p2

    .line 597
    :cond_3
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/server/power/LibQmg;->setCurrentFrame(I)I

    .line 598
    return-object p1

    .line 594
    :cond_4
    if-nez v0, :cond_3

    .line 595
    move-object p1, p3

    goto :goto_0
.end method

.method private frameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V
    .locals 8
    .param p1, "normalQmg"    # Lcom/android/server/power/LibQmg;
    .param p2, "coverQmg"    # Lcom/android/server/power/LibQmg;

    .prologue
    .line 542
    move-object v3, p1

    .line 543
    .local v3, "qmg":Lcom/android/server/power/LibQmg;
    if-eqz p2, :cond_0

    .line 544
    invoke-direct {p0, p1, p1, p2}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->chooseQmg(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)Lcom/android/server/power/LibQmg;

    move-result-object v3

    .line 547
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 548
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get7(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/power/LibQmg;->getDelayTime()I

    move-result v5

    add-int/lit8 v5, v5, 0x64

    invoke-virtual {v4, v5}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->sendEmptyMessage(I)Z

    .line 549
    const-string/jumbo v4, "ShutdownDialog"

    invoke-virtual {v3}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z

    if-eqz v4, :cond_2

    .line 553
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->chooseQmg(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)Lcom/android/server/power/LibQmg;

    move-result-object v3

    .line 556
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get0(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->-get1(Lcom/android/server/power/ShutdownDialog;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/server/power/LibQmg;->loadFrame(Landroid/graphics/Bitmap;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 561
    .local v2, "len":I
    const-string/jumbo v4, "ShutdownDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "load frame: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    if-ltz v2, :cond_4

    .line 564
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get5(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 565
    :try_start_1
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v6}, Lcom/android/server/power/ShutdownDialog;->-get1(Lcom/android/server/power/ShutdownDialog;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    rem-int/lit8 v6, v6, 0x3

    invoke-static {v4, v6}, Lcom/android/server/power/ShutdownDialog;->-set0(Lcom/android/server/power/ShutdownDialog;I)I

    .line 566
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get1(Lcom/android/server/power/ShutdownDialog;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x3

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v6}, Lcom/android/server/power/ShutdownDialog;->-get2(Lcom/android/server/power/ShutdownDialog;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-ne v4, v6, :cond_3

    .line 568
    :try_start_2
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get5(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_0
    monitor-exit v5

    .line 575
    :cond_4
    if-gtz v2, :cond_1

    .line 576
    .end local v2    # "len":I
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->close()I

    .line 577
    if-eqz p2, :cond_5

    .line 578
    invoke-virtual {p2}, Lcom/android/server/power/LibQmg;->close()I

    .line 580
    :cond_5
    return-void

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "ShutdownDialog"

    const-string/jumbo v5, "qmgLoadFrame return < 0"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 569
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "len":I
    :catch_1
    move-exception v1

    .line 570
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v4, "ShutdownDialog"

    const-string/jumbo v6, "InterruptedException"

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 564
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 502
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get6(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 503
    .local v0, "coverManager":Lcom/samsung/android/cover/CoverManager;
    if-eqz v0, :cond_0

    .line 504
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4, v0}, Lcom/android/server/power/ShutdownDialog;->-wrap1(Lcom/android/server/power/ShutdownDialog;Lcom/samsung/android/cover/CoverManager;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverOpen:Z

    .line 505
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v4}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 508
    :cond_0
    const-string/jumbo v4, "ShutdownDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ImageLoadThread.run(), qmgList.size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v6}, Lcom/android/server/power/ShutdownDialog;->-get13(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get7(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->sendEmptyMessage(I)Z

    .line 512
    :goto_0
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get13(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 513
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get13(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/LibQmg;

    .line 514
    .local v3, "qmg":Lcom/android/server/power/LibQmg;
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get3(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/LibQmg;

    .line 515
    .local v1, "coverQmg":Lcom/android/server/power/LibQmg;
    invoke-direct {p0, v3, v1}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->frameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V

    .line 516
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get13(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 517
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get3(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 518
    const/4 v3, 0x0

    .line 519
    .local v3, "qmg":Lcom/android/server/power/LibQmg;
    const/4 v1, 0x0

    .local v1, "coverQmg":Lcom/android/server/power/LibQmg;
    goto :goto_0

    .line 523
    .end local v1    # "coverQmg":Lcom/android/server/power/LibQmg;
    .end local v3    # "qmg":Lcom/android/server/power/LibQmg;
    :cond_1
    iput-boolean v7, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->running:Z

    .line 524
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "//system/media/shutdownloop.qmg"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    .line 525
    .local v2, "loopFileExists":Z
    :goto_1
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get4(Lcom/android/server/power/ShutdownDialog;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 526
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    const-string/jumbo v5, "//system/media/shutdownloop.qmg"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownDialog;->-wrap0(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z

    .line 527
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get13(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/LibQmg;

    .line 528
    .local v3, "qmg":Lcom/android/server/power/LibQmg;
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get3(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/LibQmg;

    .line 529
    .local v1, "coverQmg":Lcom/android/server/power/LibQmg;
    invoke-direct {p0, v3, v1}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->frameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V

    .line 530
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get13(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 531
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get3(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 532
    const/4 v3, 0x0

    .line 533
    .local v3, "qmg":Lcom/android/server/power/LibQmg;
    const/4 v1, 0x0

    .local v1, "coverQmg":Lcom/android/server/power/LibQmg;
    goto :goto_1

    .line 535
    .end local v1    # "coverQmg":Lcom/android/server/power/LibQmg;
    .end local v3    # "qmg":Lcom/android/server/power/LibQmg;
    :cond_2
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get7(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->sendEmptyMessage(I)Z

    .line 536
    if-eqz v0, :cond_3

    .line 537
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v4}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 501
    :cond_3
    return-void
.end method
