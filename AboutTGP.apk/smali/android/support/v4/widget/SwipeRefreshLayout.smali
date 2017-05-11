.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SwipeRefreshLayout$BaseAnimationListener;,
        Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final ACCELERATE_INTERPOLATION_FACTOR:F = 1.5f

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SWIPE_DISTANCE_FACTOR:F = 0.6f

.field private static final PROGRESS_BAR_HEIGHT:F = 4.0f

.field private static final REFRESH_TRIGGER_DISTANCE:I = 0x78

.field private static final RETURN_TO_ORIGINAL_POSITION_TIMEOUT:J = 0x12cL


# instance fields
.field private final mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private final mCancel:Ljava/lang/Runnable;

.field private mCurrPercentage:F

.field private mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mDistanceToTriggerSync:F

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mFrom:I

.field private mFromPercentage:F

.field private mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mOriginalOffsetTop:I

.field private mPrevY:F

.field private mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

.field private mProgressBarHeight:I

.field private mRefreshing:Z

.field private final mReturnToStartPosition:Ljava/lang/Runnable;

.field private final mReturnToStartPositionListener:Landroid/view/animation/Animation$AnimationListener;

.field private mReturningToStart:Z

.field private final mShrinkAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mShrinkTrigger:Landroid/view/animation/Animation;

.field private mTarget:Landroid/view/View;

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFromPercentage:F

    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$1;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$1;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$2;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$2;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mShrinkTrigger:Landroid/view/animation/Animation;

    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$3;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$3;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturnToStartPositionListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$4;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$4;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mShrinkAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$5;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$5;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturnToStartPosition:Ljava/lang/Runnable;

    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$6;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$6;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    new-instance v2, Landroid/support/v4/widget/SwipeProgressBar;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeProgressBar;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBarHeight:I

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    sget-object v2, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    return v0
.end method

.method static synthetic access$100(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    return v0
.end method

.method static synthetic access$1000(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturnToStartPositionListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/v4/widget/SwipeRefreshLayout;ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    return v0
.end method

.method static synthetic access$1300(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mShrinkTrigger:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mShrinkAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/animation/DecelerateInterpolator;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/SwipeRefreshLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFromPercentage:F

    return v0
.end method

.method static synthetic access$402(Landroid/support/v4/widget/SwipeRefreshLayout;F)F
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFromPercentage:F

    return p1
.end method

.method static synthetic access$500(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/SwipeProgressBar;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return v0
.end method

.method static synthetic access$702(Landroid/support/v4/widget/SwipeRefreshLayout;I)I
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return p1
.end method

.method static synthetic access$800(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    return v0
.end method

.method static synthetic access$802(Landroid/support/v4/widget/SwipeRefreshLayout;F)F
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    return p1
.end method

.method static synthetic access$902(Landroid/support/v4/widget/SwipeRefreshLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    return p1
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private ensureTarget()V
    .locals 4

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SwipeRefreshLayout can host only one direct child"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    :cond_1
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42f00000    # 120.0f

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    :cond_2
    return-void
.end method

.method private setTargetOffsetTopAndBottom(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return-void
.end method

.method private setTriggerPercentage(F)V
    .locals 2

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeProgressBar;->setTriggerPercentage(F)V

    goto :goto_0
.end method

.method private startRefresh()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturnToStartPosition:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    invoke-interface {v0}, Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;->onRefresh()V

    return-void
.end method

.method private updateContentOffsetTop(I)V
    .locals 3

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v1, p1

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    float-to-int p1, v1

    :cond_0
    :goto_0
    sub-int v1, p1, v0

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void

    :cond_1
    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method private updatePositionTimeout()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/AbsListView;

    if-eqz v3, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    if-ge v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeProgressBar;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public isRefreshing()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturnToStartPosition:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturnToStartPosition:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v5

    iget-object v7, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    iget v8, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBarHeight:I

    invoke-virtual {v7, v9, v9, v6, v8}, Landroid/support/v4/widget/SwipeProgressBar;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v9}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    iget v7, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v8

    add-int v3, v7, v8

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v7

    sub-int v7, v6, v7

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v8

    sub-int v4, v7, v8

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v8

    sub-int v1, v7, v8

    add-int v7, v2, v4

    add-int v8, v3, v1

    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SwipeRefreshLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v2

    :pswitch_0
    const/4 v5, 0x0

    iput v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDownEvent:Landroid/view/MotionEvent;

    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mPrevY:F

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v4, v1, v5

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startRefresh()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget v6, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDistanceToTriggerSync:F

    div-float v6, v4, v6

    invoke-virtual {v5, v6}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v5

    invoke-direct {p0, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTriggerPercentage(F)V

    move v3, v4

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mPrevY:F

    cmpl-float v5, v5, v1

    if-lez v5, :cond_2

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v5, v5

    sub-float v3, v4, v5

    :cond_2
    float-to-int v5, v3

    invoke-direct {p0, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->updateContentOffsetTop(I)V

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mPrevY:F

    cmpl-float v5, v5, v1

    if-lez v5, :cond_3

    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    if-ge v5, v6, :cond_3

    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCancel:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mPrevY:F

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->updatePositionTimeout()V

    goto :goto_1

    :pswitch_2
    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    const/4 v5, 0x0

    iput-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDownEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public setColorScheme(IIII)V
    .locals 6

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v4, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/support/v4/widget/SwipeProgressBar;->setColorScheme(IIII)V

    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    return-void
.end method

.method public setRefreshing(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrPercentage:F

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeProgressBar;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgressBar:Landroid/support/v4/widget/SwipeProgressBar;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeProgressBar;->stop()V

    goto :goto_0
.end method
