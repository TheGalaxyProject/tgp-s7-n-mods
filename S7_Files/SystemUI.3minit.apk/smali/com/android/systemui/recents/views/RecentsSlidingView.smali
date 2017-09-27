.class public Lcom/android/systemui/recents/views/RecentsSlidingView;
.super Landroid/view/ViewGroup;
.source "RecentsSlidingView.java"


# static fields
.field public static mCurPage:I

.field public static mLastScrollY:I

.field public static mTargetPage:I


# instance fields
.field mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

.field mAppListViewContainer:Landroid/view/View;

.field mCloseAllButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field mDecorView:Landroid/view/View;

.field mIsInMultiWindowMode:Z

.field mIsScrollAnimating:Z

.field private mMeasuredHeight:I

.field mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

.field public mScroller:Landroid/widget/Scroller;

.field mStrMoreApps:Ljava/lang/String;

.field mStrRecents:Ljava/lang/String;

.field mToggleButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->init()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->init()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->init()V

    .line 75
    return-void
.end method

.method private handleAppListViewAttach(Z)V
    .locals 4
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 110
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mContext:Landroid/content/Context;

    const v1, 0x7f04011a

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    const v1, 0x7f13031d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/RecentsAppListView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->bindViews(Landroid/view/View;)V

    .line 116
    :cond_0
    if-eqz p1, :cond_2

    .line 117
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->addView(Landroid/view/View;)V

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private handleToggleButton(Z)V
    .locals 2
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 83
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0f02fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrRecents:Ljava/lang/String;

    .line 85
    const v1, 0x7f0f05e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrMoreApps:Ljava/lang/String;

    .line 88
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    .line 80
    return-void
.end method

.method private isRecentsPage(I)Z
    .locals 1
    .param p1, "page"    # I

    .prologue
    const/4 v0, 0x0

    .line 383
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onPageChanged(I)V
    .locals 4
    .param p1, "newPage"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 208
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->isRecentsPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    invoke-direct {v1, v3}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 210
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v1, v3}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrMoreApps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCloseAllButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->resetScroll()V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrRecents:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 2
    .param p1, "decorView"    # Landroid/view/View;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    .line 98
    const v0, 0x7f130319

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCloseAllButton:Landroid/widget/Button;

    .line 99
    const v0, 0x7f13031b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    .line 100
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recents/views/RecentsSlidingView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/RecentsSlidingView$1;-><init>(Lcom/android/systemui/recents/views/RecentsSlidingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 235
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->scrollTo(II)V

    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->invalidate()V

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    sput v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    .line 244
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mTargetPage:I

    sput v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCurPage:I

    .line 246
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 248
    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/systemui/recents/views/RecentsSlidingView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 186
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 167
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;

    .prologue
    .line 329
    iget v0, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->target:I

    packed-switch v0, :pswitch_data_0

    .line 359
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 360
    new-instance v1, Lcom/android/systemui/recents/views/RecentsSlidingView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/views/RecentsSlidingView$2;-><init>(Lcom/android/systemui/recents/views/RecentsSlidingView;Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;)V

    .line 359
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 328
    :goto_0
    return-void

    .line 332
    :pswitch_1
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCurPage:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->isRecentsPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskBounds:Landroid/graphics/Rect;

    .line 335
    iget v4, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskStack:I

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->screenPinningRequested:Z

    iget-boolean v6, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->isFreeformDragging:Z

    .line 334
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZ)V

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    .line 338
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskBounds:Landroid/graphics/Rect;

    .line 339
    iget v4, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskStack:I

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->screenPinningRequested:Z

    iget-boolean v6, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->isFreeformDragging:Z

    .line 338
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZ)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    .line 340
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->scrollVerticalFirstPage()V

    goto :goto_0

    .line 347
    :pswitch_2
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCurPage:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->isRecentsPage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    .line 350
    :cond_1
    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    .line 351
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->scrollVerticalFirstPage()V

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 195
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 92
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x1

    return v0

    .line 230
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    mul-int v0, v2, v1

    .line 149
    .local v0, "child_top":I
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, p2, v0, p4, v3}, Landroid/view/View;->layout(IIII)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "child_top":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    .line 283
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->reload(Z)V

    .line 281
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mMeasuredHeight:I

    .line 159
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCurPage:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->isRecentsPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->resetScroll()V

    .line 154
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->scrollTo(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    return v0

    .line 204
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 177
    if-nez p2, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 182
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 176
    return-void
.end method

.method public reload(Z)V
    .locals 3
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 257
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    .line 259
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrMoreApps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 266
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->handleAppListViewAttach(Z)V

    .line 267
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->handleToggleButton(Z)V

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->resetScroll()V

    .line 270
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->reload()V

    .line 256
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->unload(Z)V

    goto :goto_0
.end method

.method public resetScroll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 290
    sput v1, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    .line 291
    sput v1, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCurPage:I

    .line 292
    sput v1, Lcom/android/systemui/recents/views/RecentsSlidingView;->mTargetPage:I

    .line 293
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 294
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->scrollTo(II)V

    .line 289
    return-void
.end method

.method public scrollVerticalFirstPage()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 313
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    if-eqz v0, :cond_0

    .line 314
    return-void

    .line 316
    :cond_0
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    if-eqz v0, :cond_1

    .line 317
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->onPageChanged(I)V

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    sget v2, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    sget v3, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    neg-int v4, v3

    const/16 v5, 0x64

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->invalidate()V

    .line 312
    return-void
.end method

.method public toggleScrollVertical()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 298
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    if-eqz v0, :cond_0

    .line 299
    return-void

    .line 302
    :cond_0
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    if-lez v0, :cond_2

    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    neg-int v4, v0

    .line 303
    .local v4, "toScroll":I
    :goto_0
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    sput v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mTargetPage:I

    .line 304
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCurPage:I

    sget v2, Lcom/android/systemui/recents/views/RecentsSlidingView;->mTargetPage:I

    if-eq v0, v2, :cond_1

    .line 305
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mTargetPage:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->onPageChanged(I)V

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    sget v2, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    const/16 v5, 0x12c

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->invalidate()V

    .line 297
    return-void

    .line 302
    .end local v4    # "toScroll":I
    :cond_2
    iget v4, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mMeasuredHeight:I

    .restart local v4    # "toScroll":I
    goto :goto_0

    .line 303
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method
