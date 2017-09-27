.class public Lcom/android/systemui/recents/tv/views/RecentsTvView;
.super Landroid/widget/FrameLayout;
.source "RecentsTvView.java"


# instance fields
.field private mAwaitingFirstLayout:Z

.field private mDismissPlaceholder:Landroid/view/View;

.field private mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mStack:Lcom/android/systemui/recents/model/TaskStack;

.field private mSystemInsets:Landroid/graphics/Rect;

.field private mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

.field private mTransitionHelper:Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/tv/views/RecentsTvView;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/tv/views/RecentsTvView;)Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/tv/views/RecentsTvView;)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/tv/views/RecentsTvView;)Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTransitionHelper:Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/tv/views/RecentsTvView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/tv/views/RecentsTvView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/tv/views/RecentsTvView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mAwaitingFirstLayout:Z

    .line 60
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mSystemInsets:Landroid/graphics/Rect;

    .line 62
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mHandler:Landroid/os/Handler;

    .line 79
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->setWillNotDraw(Z)V

    .line 81
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 82
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04012a

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mEmptyView:Landroid/view/View;

    .line 83
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->addView(Landroid/view/View;)V

    .line 85
    new-instance v1, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;

    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTransitionHelper:Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;

    .line 76
    return-void
.end method

.method private launchTaskFomRecents(Lcom/android/systemui/recents/model/Task;Z)V
    .locals 9
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "animate"    # Z

    .prologue
    const/4 v5, 0x0

    .line 145
    if-nez p2, :cond_0

    .line 146
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    .line 147
    .local v8, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v8, v0, v1, v2, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z

    .line 148
    return-void

    .line 150
    .end local v8    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->requestFocus()Z

    .line 151
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v7

    .line 152
    .local v7, "focusedTask":Lcom/android/systemui/recents/model/Task;
    if-eqz v7, :cond_2

    if-eq p1, v7, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 156
    :cond_1
    new-instance v0, Lcom/android/systemui/recents/tv/views/RecentsTvView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/tv/views/RecentsTvView$1;-><init>(Lcom/android/systemui/recents/tv/views/RecentsTvView;Lcom/android/systemui/recents/model/Task;)V

    iput-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 177
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 178
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    .line 179
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->getPositionOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    .line 178
    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->setSelectedPositionSmooth(I)V

    .line 144
    :goto_0
    return-void

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTransitionHelper:Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;

    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v3, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    .line 183
    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/tv/views/TaskCardView;

    move-result-object v4

    .line 184
    const/4 v6, -0x1

    move-object v2, p1

    .line 182
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;->launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;Lcom/android/systemui/recents/tv/views/TaskCardView;Landroid/graphics/Rect;I)V

    goto :goto_0
.end method


# virtual methods
.method public hideEmptyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->setVisibility(I)V

    .line 205
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mDismissPlaceholder:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :cond_0
    return-void
.end method

.method public init(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 3
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 99
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 100
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 101
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iput-object p1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 103
    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->init(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 105
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->hideEmptyView()V

    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->requestLayout()V

    .line 98
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->showEmptyView()V

    goto :goto_0
.end method

.method public launchFocusedTask()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 116
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 118
    .local v0, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->launchTaskFomRecents(Lcom/android/systemui/recents/model/Task;Z)V

    .line 120
    return v2

    .line 123
    .end local v0    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public launchPreviousTask(Z)Z
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 128
    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    .line 130
    .local v0, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 131
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v1, :cond_0

    .line 132
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->launchTaskFomRecents(Lcom/android/systemui/recents/model/Task;Z)V

    .line 133
    const/4 v2, 0x1

    return v2

    .line 136
    .end local v0    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->requestLayout()V

    .line 233
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 219
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 220
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 218
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    .prologue
    .line 245
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 243
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTransitionHelper:Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;

    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    .line 240
    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;->taskView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    iget-object v5, p1, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;->targetTaskBounds:Landroid/graphics/Rect;

    iget v6, p1, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;->targetTaskStack:I

    .line 239
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;->launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;Lcom/android/systemui/recents/tv/views/TaskCardView;Landroid/graphics/Rect;I)V

    .line 238
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    .prologue
    .line 249
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mAwaitingFirstLayout:Z

    .line 248
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 226
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 91
    const v0, 0x7f130333

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mDismissPlaceholder:Landroid/view/View;

    .line 92
    const v0, 0x7f130331

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    iput-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    .line 89
    return-void
.end method

.method public setTaskStackViewAdapter(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;
    .locals 1
    .param p1, "taskStackViewAdapter"    # Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->setTaskStackHorizontalGridView(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    return-object v0
.end method

.method public showEmptyView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 192
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->setVisibility(I)V

    .line 194
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView;->mDismissPlaceholder:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :cond_0
    return-void
.end method
