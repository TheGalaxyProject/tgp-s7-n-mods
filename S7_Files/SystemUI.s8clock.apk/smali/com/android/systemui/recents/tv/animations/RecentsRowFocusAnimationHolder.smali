.class public Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;
.super Ljava/lang/Object;
.source "RecentsRowFocusAnimationHolder.java"


# instance fields
.field private mFocusGainAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFocusLossAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mTitleView:Landroid/view/View;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "titleView"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mView:Landroid/view/View;

    .line 40
    iput-object p2, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mTitleView:Landroid/view/View;

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 43
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f0c0074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 44
    .local v1, "duration":I
    const v3, 0x7f0d0325

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 46
    .local v0, "dimAlpha":F
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mFocusGainAnimatorSet:Landroid/animation/AnimatorSet;

    .line 47
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mFocusGainAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v11, [Landroid/animation/Animator;

    .line 48
    iget-object v5, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mView:Landroid/view/View;

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    .line 49
    iget-object v5, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mTitleView:Landroid/view/View;

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    .line 47
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 50
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mFocusGainAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 51
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mFocusGainAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 53
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mFocusLossAnimatorSet:Landroid/animation/AnimatorSet;

    .line 54
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mFocusLossAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v11, [Landroid/animation/Animator;

    .line 57
    iget-object v5, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mView:Landroid/view/View;

    const-string/jumbo v6, "alpha"

    new-array v7, v11, [F

    aput v8, v7, v9

    aput v0, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    .line 58
    iget-object v5, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mTitleView:Landroid/view/View;

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    .line 54
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 59
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mFocusLossAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 60
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mFocusLossAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    return-void
.end method

.method private static cancelAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p0, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 83
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mFocusLossAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->cancelAnimator(Landroid/animation/Animator;)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mFocusGainAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->cancelAnimator(Landroid/animation/Animator;)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mTitleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 82
    return-void
.end method

.method public startFocusGainAnimation()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mFocusLossAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->cancelAnimator(Landroid/animation/Animator;)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mFocusGainAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 66
    return-void
.end method

.method public startFocusLossAnimation()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mFocusGainAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->cancelAnimator(Landroid/animation/Animator;)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->mFocusLossAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 74
    return-void
.end method
