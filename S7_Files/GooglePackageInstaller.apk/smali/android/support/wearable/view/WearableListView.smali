.class public Landroid/support/wearable/view/WearableListView;
.super Landroid/support/v7/widget/RecyclerView;
.source "WearableListView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/view/WearableListView$1;,
        Landroid/support/wearable/view/WearableListView$2;,
        Landroid/support/wearable/view/WearableListView$3;,
        Landroid/support/wearable/view/WearableListView$4;,
        Landroid/support/wearable/view/WearableListView$Adapter;,
        Landroid/support/wearable/view/WearableListView$ClickListener;,
        Landroid/support/wearable/view/WearableListView$LayoutManager;,
        Landroid/support/wearable/view/WearableListView$OnCenterProximityListener;,
        Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;,
        Landroid/support/wearable/view/WearableListView$OnOverScrollListener;,
        Landroid/support/wearable/view/WearableListView$OnScrollListener;,
        Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;,
        Landroid/support/wearable/view/WearableListView$SmoothScroller;,
        Landroid/support/wearable/view/WearableListView$ViewHolder;
    }
.end annotation


# instance fields
.field private mCanClick:Z

.field private mClickListener:Landroid/support/wearable/view/WearableListView$ClickListener;

.field private mGestureDirectionLocked:Z

.field private mGestureNavigationEnabled:Z

.field private mGreedyTouchMode:Z

.field private mInitialOffset:I

.field private mLastScrollChange:I

.field private final mLocation:[I

.field private final mMaxFlingVelocity:I

.field private mMaximizeSingleItem:Z

.field private final mMinFlingVelocity:I

.field private mNotifyChildrenPostLayoutRunnable:Ljava/lang/Runnable;

.field private final mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private final mOnCentralPositionChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/wearable/view/WearableListView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOverScrollListener:Landroid/support/wearable/view/WearableListView$OnOverScrollListener;

.field private mPossibleVerticalSwipe:Z

.field private final mPressedRunnable:Ljava/lang/Runnable;

.field private mPressedView:Landroid/view/View;

.field private mPreviousCentral:I

.field private final mReleasedRunnable:Ljava/lang/Runnable;

.field private mScrollAnimator:Landroid/animation/Animator;

.field private mScroller:Landroid/widget/Scroller;

.field private mSetScrollVerticallyProperty:Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;

.field private mStartFirstTop:F

.field private mStartX:F

.field private mStartY:F

.field private mTapPositionX:I

.field private mTapPositionY:I

.field private final mTapRegions:[F

.field private final mTouchSlop:I


# direct methods
.method static synthetic -get0(Landroid/support/wearable/view/WearableListView;)I
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/WearableListView;->mInitialOffset:I

    return v0
.end method

.method static synthetic -get1(Landroid/support/wearable/view/WearableListView;)I
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/WearableListView;->mLastScrollChange:I

    return v0
.end method

.method static synthetic -get2(Landroid/support/wearable/view/WearableListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/wearable/view/WearableListView;->mMaximizeSingleItem:Z

    return v0
.end method

.method static synthetic -get3(Landroid/support/wearable/view/WearableListView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mNotifyChildrenPostLayoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get4(Landroid/support/wearable/view/WearableListView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOnScrollListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get5(Landroid/support/wearable/view/WearableListView;)Landroid/support/wearable/view/WearableListView$OnOverScrollListener;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOverScrollListener:Landroid/support/wearable/view/WearableListView$OnOverScrollListener;

    return-object v0
.end method

.method static synthetic -get6(Landroid/support/wearable/view/WearableListView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mPressedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Landroid/support/wearable/view/WearableListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/wearable/view/WearableListView;->mCanClick:Z

    return p1
.end method

.method static synthetic -set1(Landroid/support/wearable/view/WearableListView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/view/WearableListView;->mPressedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/support/wearable/view/WearableListView;)I
    .locals 1

    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->findCenterViewIndex()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/view/View;)I
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    invoke-static {p0}, Landroid/support/wearable/view/WearableListView;->getCenterYPos(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/support/wearable/view/WearableListView;)I
    .locals 1

    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->getItemHeight()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/support/wearable/view/WearableListView;)I
    .locals 1

    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->getTopViewMaxTop()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/support/wearable/view/WearableListView;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "scrollState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/wearable/view/WearableListView;->handleTouchUp(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/support/wearable/view/WearableListView;Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView;->notifyChildrenAboutProximity(Z)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/support/wearable/view/WearableListView;I)V
    .locals 0
    .param p1, "dy"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView;->onScroll(I)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/support/wearable/view/WearableListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->releasePressedItem()V

    return-void
.end method

.method static synthetic -wrap8(Landroid/support/wearable/view/WearableListView;I)V
    .locals 0
    .param p1, "scroll"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView;->setScrollVertically(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/WearableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/WearableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 185
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    iput-boolean v3, p0, Landroid/support/wearable/view/WearableListView;->mCanClick:Z

    .line 77
    iput-boolean v3, p0, Landroid/support/wearable/view/WearableListView;->mGestureNavigationEnabled:Z

    .line 90
    new-instance v2, Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;

    invoke-direct {v2, p0}, Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;-><init>(Landroid/support/wearable/view/WearableListView;)V

    .line 89
    iput-object v2, p0, Landroid/support/wearable/view/WearableListView;->mSetScrollVerticallyProperty:Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/WearableListView;->mOnScrollListeners:Ljava/util/List;

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iput-object v2, p0, Landroid/support/wearable/view/WearableListView;->mOnCentralPositionChangedListeners:Ljava/util/List;

    .line 111
    iput v5, p0, Landroid/support/wearable/view/WearableListView;->mInitialOffset:I

    .line 117
    new-array v2, v4, [F

    iput-object v2, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    .line 120
    iput v5, p0, Landroid/support/wearable/view/WearableListView;->mPreviousCentral:I

    .line 123
    new-array v2, v4, [I

    iput-object v2, p0, Landroid/support/wearable/view/WearableListView;->mLocation:[I

    .line 132
    iput-object v6, p0, Landroid/support/wearable/view/WearableListView;->mPressedView:Landroid/view/View;

    .line 134
    new-instance v2, Landroid/support/wearable/view/WearableListView$1;

    invoke-direct {v2, p0}, Landroid/support/wearable/view/WearableListView$1;-><init>(Landroid/support/wearable/view/WearableListView;)V

    iput-object v2, p0, Landroid/support/wearable/view/WearableListView;->mPressedRunnable:Ljava/lang/Runnable;

    .line 146
    new-instance v2, Landroid/support/wearable/view/WearableListView$2;

    invoke-direct {v2, p0}, Landroid/support/wearable/view/WearableListView$2;-><init>(Landroid/support/wearable/view/WearableListView;)V

    iput-object v2, p0, Landroid/support/wearable/view/WearableListView;->mReleasedRunnable:Ljava/lang/Runnable;

    .line 153
    new-instance v2, Landroid/support/wearable/view/WearableListView$3;

    invoke-direct {v2, p0}, Landroid/support/wearable/view/WearableListView$3;-><init>(Landroid/support/wearable/view/WearableListView;)V

    iput-object v2, p0, Landroid/support/wearable/view/WearableListView;->mNotifyChildrenPostLayoutRunnable:Ljava/lang/Runnable;

    .line 160
    new-instance v2, Landroid/support/wearable/view/WearableListView$4;

    invoke-direct {v2, p0}, Landroid/support/wearable/view/WearableListView$4;-><init>(Landroid/support/wearable/view/WearableListView;)V

    iput-object v2, p0, Landroid/support/wearable/view/WearableListView;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 186
    invoke-virtual {p0, v3}, Landroid/support/wearable/view/WearableListView;->setHasFixedSize(Z)V

    .line 187
    invoke-virtual {p0, v4}, Landroid/support/wearable/view/WearableListView;->setOverScrollMode(I)V

    .line 188
    new-instance v2, Landroid/support/wearable/view/WearableListView$LayoutManager;

    invoke-direct {v2, p0, v6}, Landroid/support/wearable/view/WearableListView$LayoutManager;-><init>(Landroid/support/wearable/view/WearableListView;Landroid/support/wearable/view/WearableListView$LayoutManager;)V

    invoke-virtual {p0, v2}, Landroid/support/wearable/view/WearableListView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 190
    new-instance v0, Landroid/support/wearable/view/WearableListView$5;

    invoke-direct {v0, p0}, Landroid/support/wearable/view/WearableListView$5;-><init>(Landroid/support/wearable/view/WearableListView;)V

    .line 206
    .local v0, "onScrollListener":Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 208
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 209
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/WearableListView;->mTouchSlop:I

    .line 211
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/WearableListView;->mMinFlingVelocity:I

    .line 212
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/WearableListView;->mMaxFlingVelocity:I

    .line 184
    return-void
.end method

.method private animateToMiddle(II)V
    .locals 6
    .param p1, "newCenterIndex"    # I
    .param p2, "oldCenterIndex"    # I

    .prologue
    .line 502
    if-ne p1, p2, :cond_0

    .line 503
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 504
    const-string/jumbo v4, "newCenterIndex must be different from oldCenterIndex"

    .line 503
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 506
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 508
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v2, v3, v4

    .line 509
    .local v2, "scrollToMiddle":I
    const-wide/16 v4, 0x96

    invoke-direct {p0, v0, v2, v4, v5}, Landroid/support/wearable/view/WearableListView;->startScrollAnimation(Ljava/util/List;IJ)V

    .line 501
    return-void
.end method

.method private checkForTap(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 467
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 468
    return v5

    .line 471
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 472
    .local v2, "rawY":F
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->findCenterViewIndex()I

    move-result v1

    .line 473
    .local v1, "index":I
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 474
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0, v3}, Landroid/support/wearable/view/WearableListView;->getChildViewHolder(Landroid/view/View;)Landroid/support/wearable/view/WearableListView$ViewHolder;

    move-result-object v0

    .line 475
    .local v0, "holder":Landroid/support/wearable/view/WearableListView$ViewHolder;
    iget-object v4, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    invoke-direct {p0, v4}, Landroid/support/wearable/view/WearableListView;->computeTapRegions([F)V

    .line 476
    iget-object v4, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    aget v4, v4, v5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    iget-object v4, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    aget v4, v4, v6

    cmpg-float v4, v2, v4

    if-gez v4, :cond_2

    .line 477
    iget-object v4, p0, Landroid/support/wearable/view/WearableListView;->mClickListener:Landroid/support/wearable/view/WearableListView$ClickListener;

    if-eqz v4, :cond_1

    .line 478
    iget-object v4, p0, Landroid/support/wearable/view/WearableListView;->mClickListener:Landroid/support/wearable/view/WearableListView$ClickListener;

    invoke-interface {v4, v0}, Landroid/support/wearable/view/WearableListView$ClickListener;->onClick(Landroid/support/wearable/view/WearableListView$ViewHolder;)V

    .line 480
    :cond_1
    return v6

    .line 482
    :cond_2
    if-lez v1, :cond_3

    iget-object v4, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    aget v4, v4, v5

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_3

    .line 483
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, v4, v1}, Landroid/support/wearable/view/WearableListView;->animateToMiddle(II)V

    .line 484
    return v6

    .line 486
    :cond_3
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    aget v4, v4, v6

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_4

    .line 487
    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4, v1}, Landroid/support/wearable/view/WearableListView;->animateToMiddle(II)V

    .line 488
    return v6

    .line 490
    :cond_4
    if-nez v1, :cond_5

    iget-object v4, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    aget v4, v4, v5

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_5

    iget-object v4, p0, Landroid/support/wearable/view/WearableListView;->mClickListener:Landroid/support/wearable/view/WearableListView$ClickListener;

    if-eqz v4, :cond_5

    .line 495
    iget-object v4, p0, Landroid/support/wearable/view/WearableListView;->mClickListener:Landroid/support/wearable/view/WearableListView$ClickListener;

    invoke-interface {v4}, Landroid/support/wearable/view/WearableListView$ClickListener;->onTopEmptyRegionClick()V

    .line 496
    return v6

    .line 498
    :cond_5
    return v5
.end method

.method private computeTapRegions([F)V
    .locals 7
    .param p1, "tapRegions"    # [F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 770
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mLocation:[I

    iget-object v3, p0, Landroid/support/wearable/view/WearableListView;->mLocation:[I

    aput v5, v3, v6

    aput v5, v2, v5

    .line 771
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mLocation:[I

    invoke-virtual {p0, v2}, Landroid/support/wearable/view/WearableListView;->getLocationOnScreen([I)V

    .line 772
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mLocation:[I

    aget v1, v2, v6

    .line 773
    .local v1, "mScreenTop":I
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getHeight()I

    move-result v0

    .line 774
    .local v0, "height":I
    int-to-float v2, v1

    int-to-float v3, v0

    const v4, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p1, v5

    .line 775
    int-to-float v2, v1

    int-to-float v3, v0

    const v4, 0x3f2b851e    # 0.66999996f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p1, v6

    .line 769
    return-void
.end method

.method private findCenterViewIndex()I
    .locals 10

    .prologue
    .line 625
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v4

    .line 626
    .local v4, "count":I
    const/4 v7, -0x1

    .line 627
    .local v7, "index":I
    const v3, 0x7fffffff

    .line 628
    .local v3, "closest":I
    invoke-static {p0}, Landroid/support/wearable/view/WearableListView;->getCenterYPos(Landroid/view/View;)I

    move-result v0

    .line 629
    .local v0, "centerY":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 630
    invoke-virtual {p0, v6}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 631
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getTop()I

    move-result v8

    invoke-static {v1}, Landroid/support/wearable/view/WearableListView;->getCenterYPos(Landroid/view/View;)I

    move-result v9

    add-int v2, v8, v9

    .line 632
    .local v2, "childCenterY":I
    sub-int v8, v0, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 633
    .local v5, "distance":I
    if-ge v5, v3, :cond_0

    .line 634
    move v3, v5

    .line 635
    move v7, v6

    .line 629
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 638
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCenterY":I
    .end local v5    # "distance":I
    :cond_1
    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 639
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Can\'t find central view."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 641
    :cond_2
    return v7
.end method

.method private getAdjustedHeight()I
    .locals 1

    .prologue
    .line 762
    invoke-static {p0}, Landroid/support/wearable/view/WearableListView;->getAdjustedHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private static getAdjustedHeight(Landroid/view/View;)I
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 766
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static getCenterYPos(Landroid/view/View;)I
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 645
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Landroid/support/wearable/view/WearableListView;->getAdjustedHeight(Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private getItemHeight()I
    .locals 1

    .prologue
    .line 686
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->getAdjustedHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getTopViewMaxTop()I
    .locals 1

    .prologue
    .line 681
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private handlePossibleVerticalSwipe(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 316
    iget-boolean v3, p0, Landroid/support/wearable/view/WearableListView;->mGestureDirectionLocked:Z

    if-eqz v3, :cond_0

    .line 317
    iget-boolean v3, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    return v3

    .line 319
    :cond_0
    iget v3, p0, Landroid/support/wearable/view/WearableListView;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 320
    .local v0, "deltaX":F
    iget v3, p0, Landroid/support/wearable/view/WearableListView;->mStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 321
    .local v1, "deltaY":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float v2, v3, v4

    .line 324
    .local v2, "distance":F
    iget v3, p0, Landroid/support/wearable/view/WearableListView;->mTouchSlop:I

    iget v4, p0, Landroid/support/wearable/view/WearableListView;->mTouchSlop:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 325
    cmpl-float v3, v0, v1

    if-lez v3, :cond_1

    .line 326
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    .line 328
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/wearable/view/WearableListView;->mGestureDirectionLocked:Z

    .line 330
    :cond_2
    iget-boolean v3, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    return v3
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 738
    iget-boolean v3, p0, Landroid/support/wearable/view/WearableListView;->mCanClick:Z

    if-eqz v3, :cond_0

    .line 739
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/support/wearable/view/WearableListView;->mTapPositionX:I

    .line 740
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/support/wearable/view/WearableListView;->mTapPositionY:I

    .line 741
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 742
    .local v1, "rawY":F
    iget-object v3, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    invoke-direct {p0, v3}, Landroid/support/wearable/view/WearableListView;->computeTapRegions([F)V

    .line 743
    iget-object v3, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 744
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->findCenterViewIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 745
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/support/wearable/view/WearableListView$OnCenterProximityListener;

    if-eqz v3, :cond_0

    .line 746
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 747
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 748
    iget-object v3, p0, Landroid/support/wearable/view/WearableListView;->mReleasedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 749
    iget-object v3, p0, Landroid/support/wearable/view/WearableListView;->mPressedRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 737
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "rawY":F
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private handleTouchUp(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "scrollState"    # I

    .prologue
    .line 649
    iget-boolean v1, p0, Landroid/support/wearable/view/WearableListView;->mCanClick:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView;->checkForTap(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 650
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 651
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 652
    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mReleasedRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 654
    :cond_0
    return-void

    .line 657
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    if-eqz p2, :cond_2

    .line 660
    return-void

    .line 663
    :cond_2
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->isOverScrolling()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 664
    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mOverScrollListener:Landroid/support/wearable/view/WearableListView$OnOverScrollListener;

    invoke-interface {v1}, Landroid/support/wearable/view/WearableListView$OnOverScrollListener;->onOverScroll()V

    .line 648
    :goto_0
    return-void

    .line 666
    :cond_3
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->animateToCenter()V

    goto :goto_0
.end method

.method private isOverScrolling()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 671
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 675
    iget v1, p0, Landroid/support/wearable/view/WearableListView;->mStartFirstTop:F

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 676
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->getTopViewMaxTop()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 677
    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mOverScrollListener:Landroid/support/wearable/view/WearableListView$OnOverScrollListener;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 671
    :cond_0
    return v0
.end method

.method private notifyChildrenAboutProximity(Z)V
    .locals 12
    .param p1, "animate"    # Z

    .prologue
    const/4 v11, 0x0

    .line 796
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    check-cast v4, Landroid/support/wearable/view/WearableListView$LayoutManager;

    .line 797
    .local v4, "layoutManager":Landroid/support/wearable/view/WearableListView$LayoutManager;
    invoke-virtual {v4}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v0

    .line 799
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 800
    return-void

    .line 803
    :cond_0
    invoke-static {v4}, Landroid/support/wearable/view/WearableListView$LayoutManager;->-wrap0(Landroid/support/wearable/view/WearableListView$LayoutManager;)I

    move-result v3

    .line 804
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 805
    invoke-virtual {v4, v2}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 806
    .local v9, "view":Landroid/view/View;
    invoke-virtual {p0, v9}, Landroid/support/wearable/view/WearableListView;->getChildViewHolder(Landroid/view/View;)Landroid/support/wearable/view/WearableListView$ViewHolder;

    move-result-object v1

    .line 807
    .local v1, "holder":Landroid/support/wearable/view/WearableListView$ViewHolder;
    if-ne v2, v3, :cond_1

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v1, v10, p1}, Landroid/support/wearable/view/WearableListView$ViewHolder;->onCenterProximity(ZZ)V

    .line 804
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v10, v11

    .line 807
    goto :goto_1

    .line 809
    .end local v1    # "holder":Landroid/support/wearable/view/WearableListView$ViewHolder;
    .end local v9    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v3}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/support/wearable/view/WearableListView;->getChildViewHolder(Landroid/view/View;)Landroid/support/wearable/view/WearableListView$ViewHolder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/wearable/view/WearableListView$ViewHolder;->getPosition()I

    move-result v8

    .line 810
    .local v8, "position":I
    iget v10, p0, Landroid/support/wearable/view/WearableListView;->mPreviousCentral:I

    if-eq v8, v10, :cond_5

    .line 811
    iget-object v10, p0, Landroid/support/wearable/view/WearableListView;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "listener$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/wearable/view/WearableListView$OnScrollListener;

    .line 812
    .local v6, "listener":Landroid/support/wearable/view/WearableListView$OnScrollListener;
    invoke-interface {v6, v8}, Landroid/support/wearable/view/WearableListView$OnScrollListener;->onCentralPositionChanged(I)V

    goto :goto_2

    .line 815
    .end local v6    # "listener":Landroid/support/wearable/view/WearableListView$OnScrollListener;
    :cond_3
    iget-object v10, p0, Landroid/support/wearable/view/WearableListView;->mOnCentralPositionChangedListeners:Ljava/util/List;

    .line 814
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;

    .line 816
    .local v5, "listener":Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;
    invoke-interface {v5, v8}, Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;->onCentralPositionChanged(I)V

    goto :goto_3

    .line 818
    .end local v5    # "listener":Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;
    :cond_4
    iput v8, p0, Landroid/support/wearable/view/WearableListView;->mPreviousCentral:I

    .line 795
    .end local v7    # "listener$iterator":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method private onScroll(I)V
    .locals 3
    .param p1, "dy"    # I

    .prologue
    .line 378
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/WearableListView$OnScrollListener;

    .line 379
    .local v0, "listener":Landroid/support/wearable/view/WearableListView$OnScrollListener;
    invoke-interface {v0, p1}, Landroid/support/wearable/view/WearableListView$OnScrollListener;->onScroll(I)V

    goto :goto_0

    .line 381
    .end local v0    # "listener":Landroid/support/wearable/view/WearableListView$OnScrollListener;
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/support/wearable/view/WearableListView;->notifyChildrenAboutProximity(Z)V

    .line 377
    return-void
.end method

.method private releasePressedItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 367
    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mPressedView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mPressedView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 369
    iput-object v3, p0, Landroid/support/wearable/view/WearableListView;->mPressedView:Landroid/view/View;

    .line 371
    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 372
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 373
    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mPressedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 366
    :cond_1
    return-void
.end method

.method private setScrollVertically(I)V
    .locals 2
    .param p1, "scroll"    # I

    .prologue
    .line 757
    iget v0, p0, Landroid/support/wearable/view/WearableListView;->mLastScrollChange:I

    sub-int v0, p1, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/wearable/view/WearableListView;->scrollBy(II)V

    .line 758
    iput p1, p0, Landroid/support/wearable/view/WearableListView;->mLastScrollChange:I

    .line 756
    return-void
.end method

.method private startScrollAnimation(IJJLandroid/animation/Animator$AnimatorListener;)V
    .locals 10
    .param p1, "scroll"    # I
    .param p2, "duration"    # J
    .param p4, "delay"    # J
    .param p6, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 523
    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/support/wearable/view/WearableListView;->startScrollAnimation(Ljava/util/List;IJJLandroid/animation/Animator$AnimatorListener;)V

    .line 522
    return-void
.end method

.method private startScrollAnimation(Ljava/util/List;IJ)V
    .locals 9
    .param p2, "scroll"    # I
    .param p3, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 513
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Landroid/support/wearable/view/WearableListView;->startScrollAnimation(Ljava/util/List;IJJ)V

    .line 512
    return-void
.end method

.method private startScrollAnimation(Ljava/util/List;IJJ)V
    .locals 9
    .param p2, "scroll"    # I
    .param p3, "duration"    # J
    .param p5, "delay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;IJJ)V"
        }
    .end annotation

    .prologue
    .line 518
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Landroid/support/wearable/view/WearableListView;->startScrollAnimation(Ljava/util/List;IJJLandroid/animation/Animator$AnimatorListener;)V

    .line 517
    return-void
.end method

.method private startScrollAnimation(Ljava/util/List;IJJLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .param p2, "scroll"    # I
    .param p3, "duration"    # J
    .param p5, "delay"    # J
    .param p7, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;IJJ",
            "Landroid/animation/Animator$AnimatorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v4, 0x0

    .line 528
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 529
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 532
    :cond_0
    iput v4, p0, Landroid/support/wearable/view/WearableListView;->mLastScrollChange:I

    .line 533
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mSetScrollVerticallyProperty:Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 534
    aput v4, v3, v4

    neg-int v4, p2

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 533
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 536
    .local v1, "scrollAnimator":Landroid/animation/ObjectAnimator;
    if-eqz p1, :cond_3

    .line 537
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 539
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 540
    iput-object v0, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    .line 544
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :goto_0
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    invoke-virtual {v2, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 545
    if-eqz p7, :cond_1

    .line 546
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    invoke-virtual {v2, p7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 548
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-lez v2, :cond_2

    .line 549
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    invoke-virtual {v2, p5, p6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 551
    :cond_2
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 527
    return-void

    .line 542
    :cond_3
    iput-object v1, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    goto :goto_0
.end method

.method private tapCenterView()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 452
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 453
    :cond_0
    return v4

    .line 455
    :cond_1
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->findCenterViewIndex()I

    move-result v1

    .line 456
    .local v1, "index":I
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 457
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/support/wearable/view/WearableListView;->getChildViewHolder(Landroid/view/View;)Landroid/support/wearable/view/WearableListView$ViewHolder;

    move-result-object v0

    .line 458
    .local v0, "holder":Landroid/support/wearable/view/WearableListView$ViewHolder;
    iget-object v3, p0, Landroid/support/wearable/view/WearableListView;->mClickListener:Landroid/support/wearable/view/WearableListView$ClickListener;

    if-eqz v3, :cond_2

    .line 459
    iget-object v3, p0, Landroid/support/wearable/view/WearableListView;->mClickListener:Landroid/support/wearable/view/WearableListView$ClickListener;

    invoke-interface {v3, v0}, Landroid/support/wearable/view/WearableListView$ClickListener;->onClick(Landroid/support/wearable/view/WearableListView$ViewHolder;)V

    .line 460
    const/4 v3, 0x1

    return v3

    .line 462
    :cond_2
    return v4
.end method


# virtual methods
.method public animateToCenter()V
    .locals 9

    .prologue
    .line 704
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->findCenterViewIndex()I

    move-result v8

    .line 705
    .local v8, "index":I
    invoke-virtual {p0, v8}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 706
    .local v7, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v1, v0, v2

    .line 707
    .local v1, "scrollToMiddle":I
    const-wide/16 v4, 0x0

    .line 708
    new-instance v6, Landroid/support/wearable/view/WearableListView$6;

    invoke-direct {v6, p0}, Landroid/support/wearable/view/WearableListView$6;-><init>(Landroid/support/wearable/view/WearableListView;)V

    .line 707
    const-wide/16 v2, 0x96

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/wearable/view/WearableListView;->startScrollAnimation(IJJLandroid/animation/Animator$AnimatorListener;)V

    .line 703
    return-void
.end method

.method public fling(II)Z
    .locals 16
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    .line 556
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 557
    const/4 v1, 0x0

    return v1

    .line 561
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView;->findCenterViewIndex()I

    move-result v15

    .line 562
    .local v15, "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 563
    .local v10, "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/wearable/view/WearableListView;->getChildPosition(Landroid/view/View;)I

    move-result v11

    .line 564
    .local v11, "currentPosition":I
    if-nez v11, :cond_2

    if-gez p2, :cond_2

    .line 566
    :cond_1
    invoke-super/range {p0 .. p2}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result v1

    return v1

    .line 565
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v11, v1, :cond_3

    if-gtz p2, :cond_1

    .line 569
    :cond_3
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/WearableListView;->mMinFlingVelocity:I

    if-ge v1, v2, :cond_4

    .line 570
    const/4 v1, 0x0

    return v1

    .line 572
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/wearable/view/WearableListView;->mMaxFlingVelocity:I

    move/from16 v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/WearableListView;->mMaxFlingVelocity:I

    neg-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 574
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/WearableListView;->mScroller:Landroid/widget/Scroller;

    if-nez v1, :cond_5

    .line 575
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/wearable/view/WearableListView;->mScroller:Landroid/widget/Scroller;

    .line 577
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/WearableListView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    .line 578
    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move/from16 v5, p2

    .line 577
    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 579
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/WearableListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v14

    .line 580
    .local v14, "finalY":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView;->getPaddingTop()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView;->getAdjustedHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int v12, v14, v1

    .line 581
    .local v12, "delta":I
    if-nez v12, :cond_6

    .line 584
    if-lez p2, :cond_7

    const/4 v12, 0x1

    .line 587
    :cond_6
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int v2, v11, v12

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    .line 586
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 588
    .local v13, "finalPosition":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/wearable/view/WearableListView;->smoothScrollToPosition(I)V

    .line 589
    const/4 v1, 0x1

    return v1

    .line 584
    .end local v13    # "finalPosition":I
    :cond_7
    const/4 v12, -0x1

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 237
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->getBaseline()I

    move-result v2

    return v2

    .line 241
    :cond_0
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->findCenterViewIndex()I

    move-result v1

    .line 242
    .local v1, "centerChildIndex":I
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 245
    .local v0, "centerChildBaseline":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 246
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->getBaseline()I

    move-result v2

    return v2

    .line 249
    :cond_1
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v2

    add-int/2addr v2, v0

    return v2
.end method

.method public getCentralViewTop()I
    .locals 2

    .prologue
    .line 696
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getPaddingTop()I

    move-result v0

    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->getItemHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 600
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/WearableListView;->getChildViewHolder(Landroid/view/View;)Landroid/support/wearable/view/WearableListView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/wearable/view/WearableListView$ViewHolder;
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 601
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/WearableListView$ViewHolder;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 295
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    return v2

    .line 299
    :cond_0
    iget-boolean v1, p0, Landroid/support/wearable/view/WearableListView;->mGreedyTouchMode:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 301
    .local v0, "action":I
    if-nez v0, :cond_4

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/WearableListView;->mStartX:F

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/WearableListView;->mStartY:F

    .line 304
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0, v2}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    iput v1, p0, Landroid/support/wearable/view/WearableListView;->mStartFirstTop:F

    .line 305
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    .line 306
    iput-boolean v2, p0, Landroid/support/wearable/view/WearableListView;->mGestureDirectionLocked:Z

    .line 310
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 312
    .end local v0    # "action":I
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .restart local v0    # "action":I
    :cond_3
    move v1, v2

    .line 304
    goto :goto_0

    .line 307
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    if-eqz v1, :cond_1

    .line 308
    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView;->handlePossibleVerticalSwipe(Landroid/view/MotionEvent;)Z

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 429
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableListView;->mGestureNavigationEnabled:Z

    if-eqz v0, :cond_0

    .line 430
    packed-switch p1, :pswitch_data_0

    .line 445
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 432
    :pswitch_0
    iget v0, p0, Landroid/support/wearable/view/WearableListView;->mMinFlingVelocity:I

    neg-int v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/support/wearable/view/WearableListView;->fling(II)Z

    .line 433
    return v2

    .line 435
    :pswitch_1
    iget v0, p0, Landroid/support/wearable/view/WearableListView;->mMinFlingVelocity:I

    invoke-virtual {p0, v1, v0}, Landroid/support/wearable/view/WearableListView;->fling(II)Z

    .line 436
    return v2

    .line 438
    :pswitch_2
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->tapCenterView()Z

    move-result v0

    return v0

    .line 442
    :pswitch_3
    return v1

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x104
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 335
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 336
    return v5

    .line 341
    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getScrollState()I

    move-result v2

    .line 342
    .local v2, "scrollState":I
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 343
    .local v1, "result":Z
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 345
    .local v0, "action":I
    if-nez v0, :cond_2

    .line 346
    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView;->handleTouchDown(Landroid/view/MotionEvent;)V

    .line 363
    .end local v0    # "action":I
    :cond_1
    :goto_0
    return v1

    .line 347
    .restart local v0    # "action":I
    :cond_2
    if-ne v0, v4, :cond_3

    .line 348
    invoke-direct {p0, p1, v2}, Landroid/support/wearable/view/WearableListView;->handleTouchUp(Landroid/view/MotionEvent;I)V

    .line 349
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 350
    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 351
    iget v3, p0, Landroid/support/wearable/view/WearableListView;->mTapPositionX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/wearable/view/WearableListView;->mTouchSlop:I

    if-ge v3, v4, :cond_4

    .line 352
    iget v3, p0, Landroid/support/wearable/view/WearableListView;->mTapPositionY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/wearable/view/WearableListView;->mTouchSlop:I

    if-lt v3, v4, :cond_5

    .line 353
    :cond_4
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->releasePressedItem()V

    .line 354
    iput-boolean v5, p0, Landroid/support/wearable/view/WearableListView;->mCanClick:Z

    .line 356
    :cond_5
    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView;->handlePossibleVerticalSwipe(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 357
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-boolean v4, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 358
    :cond_6
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 359
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 360
    iput-boolean v4, p0, Landroid/support/wearable/view/WearableListView;->mCanClick:Z

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 218
    .local v0, "currentAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 222
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 224
    if-eqz p1, :cond_1

    .line 225
    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 216
    :cond_1
    return-void
.end method

.method public setClickListener(Landroid/support/wearable/view/WearableListView$ClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/support/wearable/view/WearableListView$ClickListener;

    .prologue
    .line 608
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView;->mClickListener:Landroid/support/wearable/view/WearableListView$ClickListener;

    .line 607
    return-void
.end method
