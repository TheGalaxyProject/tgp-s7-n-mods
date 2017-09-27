.class public Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;
.super Ljava/lang/Object;
.source "RecentsTvTransitionHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method private startTaskActivity(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/tv/views/TaskCardView;Landroid/app/ActivityOptions;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 14
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "taskView"    # Lcom/android/systemui/recents/tv/views/TaskCardView;
    .param p4, "opts"    # Landroid/app/ActivityOptions;
    .param p5, "animStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 92
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v10

    .line 93
    .local v10, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v10, v1, v3, v4, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    const/4 v12, 0x0

    .line 96
    .local v12, "taskIndexFromFront":I
    invoke-virtual/range {p1 .. p2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v11

    .line 97
    .local v11, "taskIndex":I
    const/4 v1, -0x1

    if-le v11, v1, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    sub-int/2addr v1, v11

    add-int/lit8 v12, v1, -0x1

    .line 100
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;

    invoke-direct {v3, v12}, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 106
    .end local v11    # "taskIndex":I
    .end local v12    # "taskIndexFromFront":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getFocusedThumbnailRect()Landroid/graphics/Rect;

    move-result-object v13

    .line 112
    .local v13, "taskRect":Landroid/graphics/Rect;
    if-eqz v13, :cond_1

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 113
    :cond_1
    return-void

    .line 103
    .end local v13    # "taskRect":Landroid/graphics/Rect;
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;-><init>()V

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    .line 116
    .restart local v13    # "taskRect":Landroid/graphics/Rect;
    :cond_3
    const/4 v7, 0x0

    .line 117
    .local v7, "callback":Landroid/os/IRemoteCallback$Stub;
    if-eqz p5, :cond_4

    .line 118
    new-instance v7, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$3;

    .end local v7    # "callback":Landroid/os/IRemoteCallback$Stub;
    move-object/from16 v0, p5

    invoke-direct {v7, p0, v0}, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$3;-><init>(Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 133
    :cond_4
    :try_start_0
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 134
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x0

    .line 133
    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 135
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 136
    iget v3, v13, Landroid/graphics/Rect;->left:I

    .line 137
    iget v4, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v8, 0x1

    .line 135
    invoke-interface/range {v1 .. v8}, Landroid/view/IWindowManager;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 138
    :catch_0
    move-exception v9

    .line 139
    .local v9, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "RecentsTvTransitionHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to override transition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;Lcom/android/systemui/recents/tv/views/TaskCardView;Landroid/graphics/Rect;I)V
    .locals 7
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "stackView"    # Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;
    .param p4, "taskView"    # Lcom/android/systemui/recents/tv/views/TaskCardView;
    .param p5, "bounds"    # Landroid/graphics/Rect;
    .param p6, "destinationStack"    # I

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    .line 53
    .local v4, "opts":Landroid/app/ActivityOptions;
    if-eqz p5, :cond_1

    .line 54
    invoke-virtual {p5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p5, v0

    .end local p5    # "bounds":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {v4, p5}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    .line 58
    :cond_1
    iget-object v0, p2, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    .line 59
    iget-object v0, p2, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 60
    new-instance v5, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$1;

    invoke-direct {v5, p0, p2}, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$1;-><init>(Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;Lcom/android/systemui/recents/model/Task;)V

    .line 79
    .local v5, "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :goto_0
    if-nez p4, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    .line 82
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;->startTaskActivity(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/tv/views/TaskCardView;Landroid/app/ActivityOptions;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 51
    :goto_1
    return-void

    .line 71
    .end local v5    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_2
    new-instance v5, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$2;-><init>(Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;)V

    .restart local v5    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    goto :goto_0

    .line 84
    :cond_3
    new-instance v6, Lcom/android/systemui/recents/events/activity/LaunchTvTaskStartedEvent;

    invoke-direct {v6, p4}, Lcom/android/systemui/recents/events/activity/LaunchTvTaskStartedEvent;-><init>(Lcom/android/systemui/recents/tv/views/TaskCardView;)V

    .line 85
    .local v6, "launchStartedEvent":Lcom/android/systemui/recents/events/activity/LaunchTvTaskStartedEvent;
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    .line 86
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;->startTaskActivity(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/tv/views/TaskCardView;Landroid/app/ActivityOptions;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    goto :goto_1
.end method
