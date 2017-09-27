.class public Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;
.super Landroid/widget/FrameLayout;
.source "RecentsDesktopView.java"


# instance fields
.field private mAwaitingFirstLayout:Z

.field private mDismissPlaceholder:Landroid/view/View;

.field private mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mStack:Lcom/android/systemui/recents/model/TaskStack;

.field private mSystemInsets:Landroid/graphics/Rect;

.field private mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

.field private mTransitionHelper:Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
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

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;->mAwaitingFirstLayout:Z

    .line 65
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;->mSystemInsets:Landroid/graphics/Rect;

    .line 67
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;->mHandler:Landroid/os/Handler;

    .line 84
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;->setWillNotDraw(Z)V

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 87
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04011d

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;->mEmptyView:Landroid/view/View;

    .line 88
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;->addView(Landroid/view/View;)V

    .line 90
    new-instance v1, Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper;

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;->mTransitionHelper:Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper;

    .line 81
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;->requestLayout()V

    .line 239
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 225
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 226
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 224
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    .prologue
    .line 252
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 250
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;

    .prologue
    const/4 v7, 0x0

    .line 245
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;->mTransitionHelper:Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    .line 246
    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;->taskView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    iget-object v5, p1, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;->targetTaskBounds:Landroid/graphics/Rect;

    iget v6, p1, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;->targetTaskStack:I

    .line 245
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper;->launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;Lcom/android/systemui/recents/tv/views/TaskCardView;Landroid/graphics/Rect;I)V

    .line 247
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    invoke-direct {v1, v7, v7}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 244
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    .prologue
    .line 256
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    if-nez v0, :cond_0

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;->mAwaitingFirstLayout:Z

    .line 255
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 232
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 96
    const v0, 0x7f130333

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;->mDismissPlaceholder:Landroid/view/View;

    .line 97
    const v0, 0x7f130331

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsDesktopView;->mTaskStackHorizontalView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    .line 94
    return-void
.end method
