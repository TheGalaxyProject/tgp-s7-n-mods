.class public Lcom/android/systemui/recents/tv/RecentsTvActivity;
.super Landroid/app/Activity;
.source "RecentsTvActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/tv/RecentsTvActivity$1;,
        Lcom/android/systemui/recents/tv/RecentsTvActivity$2;,
        Lcom/android/systemui/recents/tv/RecentsTvActivity$3;,
        Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;
    }
.end annotation


# instance fields
.field private mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;

.field private mFinishedOnStartup:Z

.field private mHomeRecentsEnterExitAnimationHolder:Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;

.field private mIgnoreAltTabRelease:Z

.field private mLaunchedFromHome:Z

.field private mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

.field private final mPipListener:Lcom/android/systemui/tv/pip/PipManager$Listener;

.field private final mPipManager:Lcom/android/systemui/tv/pip/PipManager;

.field private mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

.field private final mPipRecentsOverlayManagerCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

.field private mPipView:Landroid/view/View;

.field private final mPipViewFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

.field private mTalkBackEnabled:Z

.field private mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

.field private mTaskStackViewAdapter:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/tv/RecentsTvActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTalkBackEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/tv/RecentsTvActivity;)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/tv/RecentsTvActivity;)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackViewAdapter:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->updatePipUI()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    .line 94
    new-instance v0, Lcom/android/systemui/recents/tv/RecentsTvActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity$1;-><init>(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipListener:Lcom/android/systemui/tv/pip/PipManager$Listener;

    .line 124
    new-instance v0, Lcom/android/systemui/recents/tv/RecentsTvActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity$2;-><init>(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V

    .line 123
    iput-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManagerCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    .line 147
    new-instance v0, Lcom/android/systemui/recents/tv/RecentsTvActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity$3;-><init>(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V

    .line 146
    iput-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipViewFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 71
    return-void
.end method

.method private updatePipUI()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->removePipRecentsOverlayView()V

    .line 587
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->startFocusLossAnimation()V

    .line 584
    :goto_0
    return-void

    .line 589
    :cond_0
    const-string/jumbo v0, "RecentsTvActivity"

    const-string/jumbo v1, "An activity entered PIP mode while Recents is shown"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateRecentsTasks()V
    .locals 15

    .prologue
    .line 184
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    .line 185
    .local v4, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v6

    .line 186
    .local v6, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    if-nez v6, :cond_0

    .line 187
    invoke-virtual {v4, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v6

    .line 190
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 191
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v2

    .line 192
    .local v2, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v12

    if-nez v12, :cond_1

    .line 193
    iget-boolean v12, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    :goto_0
    const/4 v13, -0x1

    invoke-virtual {v4, v6, v13, v12}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getNumberOfVisibleTasks(Landroid/content/Context;)I

    move-result v5

    .line 197
    .local v5, "numVisibleTasks":I
    iget-boolean v12, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    iput-boolean v12, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mLaunchedFromHome:Z

    .line 198
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v7

    .line 199
    .local v7, "stack":Lcom/android/systemui/recents/model/TaskStack;
    new-instance v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 200
    .local v3, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iget v12, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iput v12, v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 201
    iput v5, v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 202
    iput v5, v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 203
    invoke-virtual {v4, p0, v6, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 205
    invoke-virtual {v7}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 206
    .local v8, "stackTasks":Ljava/util/List;
    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 207
    iget-object v12, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackViewAdapter:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    if-nez v12, :cond_4

    .line 208
    new-instance v12, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    invoke-direct {v12, v8}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;-><init>(Ljava/util/List;)V

    iput-object v12, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackViewAdapter:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    .line 209
    iget-object v12, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    .line 210
    iget-object v13, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackViewAdapter:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    .line 209
    invoke-virtual {v12, v13}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->setTaskStackViewAdapter(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    move-result-object v12

    iput-object v12, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    .line 211
    new-instance v12, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    iget-object v14, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    .line 211
    invoke-direct {v12, v13, v14}, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;)V

    iput-object v12, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mHomeRecentsEnterExitAnimationHolder:Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;

    .line 216
    :goto_1
    iget-object v12, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    invoke-virtual {v12, v7}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->init(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 218
    iget v12, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    .line 219
    invoke-virtual {v7}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v11

    .line 220
    .local v11, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 221
    .local v10, "taskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v10, :cond_2

    .line 222
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/model/Task;

    .line 223
    .local v9, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v12, v9, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v12, v12, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v13, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    if-ne v12, v13, :cond_5

    .line 224
    const/4 v12, 0x1

    iput-boolean v12, v9, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 183
    .end local v1    # "i":I
    .end local v9    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v10    # "taskCount":I
    .end local v11    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_2
    return-void

    .line 193
    .end local v3    # "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .end local v5    # "numVisibleTasks":I
    .end local v7    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v8    # "stackTasks":Ljava/util/List;
    :cond_3
    const/4 v12, 0x1

    goto :goto_0

    .line 214
    .restart local v3    # "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .restart local v5    # "numVisibleTasks":I
    .restart local v7    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v8    # "stackTasks":Ljava/util/List;
    :cond_4
    iget-object v12, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackViewAdapter:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    invoke-virtual {v12, v8}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->setNewStackTasks(Ljava/util/List;)V

    goto :goto_1

    .line 221
    .restart local v1    # "i":I
    .restart local v9    # "t":Lcom/android/systemui/recents/model/Task;
    .restart local v10    # "taskCount":I
    .restart local v11    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method dismissRecentsToFocusedTaskOrHome()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 245
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 246
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->launchFocusedTask()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 250
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->dismissRecentsToHome(Z)V

    .line 251
    return v2

    .line 253
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method dismissRecentsToHome(Z)V
    .locals 3
    .param p1, "animateTaskViews"    # Z

    .prologue
    .line 257
    new-instance v0, Lcom/android/systemui/recents/tv/RecentsTvActivity$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity$4;-><init>(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V

    .line 265
    .local v0, "closeSystemWindows":Ljava/lang/Runnable;
    new-instance v1, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;-><init>(Z)V

    .line 266
    .local v1, "dismissEvent":Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;
    iget-object v2, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 267
    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 269
    iget-object v2, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    if-eqz p1, :cond_0

    .line 270
    iget-object v2, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mHomeRecentsEnterExitAnimationHolder:Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->startExitAnimation(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V

    .line 256
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 273
    iget-object v2, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;

    invoke-virtual {v2}, Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;->run()V

    goto :goto_0
.end method

.method dismissRecentsToLaunchTargetTaskOrHome(Z)Z
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 232
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 233
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->launchPreviousTask(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const/4 v1, 0x1

    return v1

    .line 239
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->dismissRecentsToHome(Z)V

    .line 241
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 499
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 497
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    .prologue
    .line 527
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 528
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 529
    .local v1, "launchToTaskId":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 530
    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;->launchTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;->launchTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-eq v1, v3, :cond_1

    .line 531
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 532
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget v3, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->cancelWindowTransition(I)V

    .line 533
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->getTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->cancelThumbnailTransition(I)V

    .line 526
    .end local v2    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/HideRecentsEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    .prologue
    .line 514
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromAltTab:Z

    if-eqz v0, :cond_1

    .line 516
    iget-boolean v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mIgnoreAltTabRelease:Z

    if-nez v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->dismissRecentsToFocusedTaskOrHome()Z

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromHomeKey:Z

    if-eqz v0, :cond_0

    .line 520
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->dismissRecentsToHome(Z)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;

    .prologue
    .line 558
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->dismissRecentsToHome(Z)V

    .line 556
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    .prologue
    const/4 v2, 0x1

    .line 505
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 506
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->dismissRecentsToHome(Z)V

    .line 504
    :goto_0
    return-void

    .line 509
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->dismissRecentsToLaunchTargetTaskOrHome(Z)Z

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    .prologue
    const/4 v1, 0x0

    .line 548
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->showEmptyView()V

    .line 550
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->requestFocus(Z)V

    .line 547
    :goto_0
    return-void

    .line 552
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->dismissRecentsToHome(Z)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    .prologue
    .line 539
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 540
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V

    .line 543
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 544
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->removeTask(I)V

    .line 537
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 289
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 290
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mFinishedOnStartup:Z

    .line 294
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 295
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-nez v3, :cond_0

    .line 296
    iput-boolean v6, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mFinishedOnStartup:Z

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->finish()V

    .line 298
    return-void

    .line 300
    :cond_0
    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/tv/pip/PipManager;->getPipRecentsOverlayManager()Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    .line 303
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, p0, v5}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 305
    new-instance v4, Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-direct {v4}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    .line 306
    iget-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v4, p0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->register(Landroid/content/Context;)V

    .line 309
    const v4, 0x7f040121

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->setContentView(I)V

    .line 311
    const v4, 0x7f130330

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/tv/views/RecentsTvView;

    iput-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    .line 312
    iget-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    const/16 v5, 0x700

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->setSystemUiVisibility(I)V

    .line 316
    const v4, 0x7f130332

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipView:Landroid/view/View;

    .line 317
    iget-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipViewFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 319
    iget-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v4}, Lcom/android/systemui/tv/pip/PipManager;->getRecentsFocusedPipBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 320
    .local v2, "pipBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 321
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 322
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 323
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 324
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 325
    iget-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    iget-object v5, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManagerCallback:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    invoke-virtual {v4, v5}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->setCallback(Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 333
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 334
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.HOME"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const/high16 v4, 0x10200000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 337
    const-string/jumbo v4, "com.android.systemui.recents.tv.RecentsTvActivity.RECENTS_HOME_INTENT_EXTRA"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    new-instance v4, Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;-><init>(Lcom/android/systemui/recents/tv/RecentsTvActivity;Landroid/content/Intent;)V

    iput-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;

    .line 340
    iget-object v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v5, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipListener:Lcom/android/systemui/tv/pip/PipManager$Listener;

    invoke-virtual {v4, v5}, Lcom/android/systemui/tv/pip/PipManager;->addListener(Lcom/android/systemui/tv/pip/PipManager$Listener;)V

    .line 288
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 455
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipListener:Lcom/android/systemui/tv/pip/PipManager$Listener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->removeListener(Lcom/android/systemui/tv/pip/PipManager$Listener;)V

    .line 459
    iget-boolean v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mFinishedOnStartup:Z

    if-eqz v0, :cond_0

    .line 460
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->unregister()V

    .line 466
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 454
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    .prologue
    .line 351
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 352
    iget-boolean v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mLaunchedFromHome:Z

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mHomeRecentsEnterExitAnimationHolder:Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;

    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v1}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->startEnterAnimation(Z)V

    .line 355
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 350
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 479
    sparse-switch p1, :sswitch_data_0

    .line 488
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 482
    :sswitch_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 483
    const/4 v0, 0x1

    return v0

    .line 479
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 345
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 346
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->setIntent(Landroid/content/Intent;)V

    .line 344
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 430
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 431
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->onRecentsPaused()V

    .line 429
    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 566
    iget-boolean v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mLaunchedFromHome:Z

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mHomeRecentsEnterExitAnimationHolder:Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;

    .line 568
    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v1}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v1

    .line 567
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->setEnterFromHomeStartingAnimationValues(Z)V

    .line 575
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    new-instance v1, Lcom/android/systemui/recents/tv/RecentsTvActivity$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity$6;-><init>(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->post(Ljava/lang/Runnable;)Z

    .line 581
    const/4 v0, 0x1

    return v0

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mHomeRecentsEnterExitAnimationHolder:Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;

    .line 571
    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v1}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v1

    .line 570
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->setEnterFromAppStartingAnimationValues(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const v9, 0x7f130333

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 360
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 361
    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-virtual {v7}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->onRecentsResumed()V

    .line 363
    invoke-direct {p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->updateRecentsTasks()V

    .line 368
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 369
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v2

    .line 370
    .local v2, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v7, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v7, :cond_4

    .line 371
    iget-boolean v7, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v7, :cond_3

    move v4, v6

    .line 372
    .local v4, "wasLaunchedByAm":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 373
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    invoke-direct {v8}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;-><init>()V

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 377
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 378
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    invoke-direct {v8, p0, v5}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 379
    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v7

    if-le v7, v5, :cond_1

    iget-boolean v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mLaunchedFromHome:Z

    if-eqz v7, :cond_5

    .line 384
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v7, v6}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->setSelectedPosition(I)V

    .line 386
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mRecentsView:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 388
    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 389
    .local v1, "dismissPlaceholder":Landroid/view/View;
    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTalkBackEnabled:Z

    .line 390
    iget-boolean v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTalkBackEnabled:Z

    if-eqz v7, :cond_2

    .line 391
    const v7, 0x7f130331

    invoke-virtual {v1, v7}, Landroid/view/View;->setAccessibilityTraversalBefore(I)V

    .line 392
    invoke-virtual {v1, v9}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    .line 393
    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v7, v9}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->setAccessibilityTraversalAfter(I)V

    .line 394
    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    const v8, 0x7f130332

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->setAccessibilityTraversalBefore(I)V

    .line 395
    new-instance v7, Lcom/android/systemui/recents/tv/RecentsTvActivity$5;

    invoke-direct {v7, p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity$5;-><init>(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v7}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 412
    iget-boolean v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTalkBackEnabled:Z

    if-eqz v7, :cond_6

    .line 415
    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 421
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    iget-object v8, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackViewAdapter:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    invoke-virtual {v8}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->getItemCount()I

    move-result v8

    if-lez v8, :cond_7

    :goto_3
    invoke-virtual {v7, v5}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->requestFocus(Z)V

    .line 359
    :goto_4
    return-void

    .end local v1    # "dismissPlaceholder":Landroid/view/View;
    .end local v3    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local v4    # "wasLaunchedByAm":Z
    :cond_3
    move v4, v5

    .line 371
    goto/16 :goto_0

    :cond_4
    move v4, v6

    .line 370
    goto/16 :goto_0

    .line 382
    .restart local v3    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .restart local v4    # "wasLaunchedByAm":Z
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v7, v5}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->setSelectedPosition(I)V

    goto :goto_1

    .line 417
    .restart local v1    # "dismissPlaceholder":Landroid/view/View;
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_7
    move v5, v6

    .line 421
    goto :goto_3

    .line 423
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v5, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-virtual {v5}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->removePipRecentsOverlayView()V

    goto :goto_4
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 436
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 438
    iput-boolean v4, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mIgnoreAltTabRelease:Z

    .line 440
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 445
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 446
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 447
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->reset()V

    .line 450
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->finish()V

    .line 435
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 471
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 472
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    .line 470
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 493
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/UserInteractionEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 492
    return-void
.end method

.method public requestPipControlsFocus()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 599
    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v1}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 600
    return-void

    .line 603
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackHorizontalGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->startFocusLossAnimation()V

    .line 604
    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    iget-object v2, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity;->mTaskStackViewAdapter:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->getItemCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->requestFocus(Z)V

    .line 598
    return-void
.end method
