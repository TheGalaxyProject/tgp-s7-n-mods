.class public Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;
.super Ljava/lang/Object;
.source "HomeRecentsEnterExitAnimationHolder.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelay:J

.field private mDimAlpha:F

.field private mDuration:I

.field private mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

.field private mTranslationX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gridView"    # Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0325

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mDimAlpha:F

    .line 41
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    const v1, 0x7f0d0417

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mTranslationX:I

    .line 43
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mDelay:J

    .line 44
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mDuration:I

    .line 37
    return-void
.end method


# virtual methods
.method public setEnterFromAppStartingAnimationValues(Z)V
    .locals 6
    .param p1, "isPipShown"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 99
    iget-object v2, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/tv/views/TaskCardView;

    .line 100
    .local v1, "view":Lcom/android/systemui/recents/tv/views/TaskCardView;
    invoke-virtual {v1, v4}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setTranslationX(F)V

    .line 101
    if-eqz p1, :cond_1

    iget v2, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mDimAlpha:F

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setAlpha(F)V

    .line 102
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getInfoFieldView()Landroid/view/View;

    move-result-object v5

    if-eqz p1, :cond_2

    move v2, v4

    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 103
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getViewFocusAnimator()Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->changeSize(Z)V

    .line 98
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 101
    goto :goto_1

    :cond_2
    move v2, v3

    .line 102
    goto :goto_2

    .line 97
    .end local v1    # "view":Lcom/android/systemui/recents/tv/views/TaskCardView;
    :cond_3
    return-void
.end method

.method public setEnterFromHomeStartingAnimationValues(Z)V
    .locals 5
    .param p1, "isPipShown"    # Z

    .prologue
    const/4 v3, 0x0

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 83
    iget-object v2, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/tv/views/TaskCardView;

    .line 84
    .local v1, "view":Lcom/android/systemui/recents/tv/views/TaskCardView;
    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setTranslationX(F)V

    .line 85
    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setAlpha(F)V

    .line 86
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getInfoFieldView()Landroid/view/View;

    move-result-object v4

    if-eqz p1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 87
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getViewFocusAnimator()Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->changeSize(Z)V

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    .line 81
    .end local v1    # "view":Lcom/android/systemui/recents/tv/views/TaskCardView;
    :cond_2
    return-void
.end method

.method public startEnterAnimation(Z)V
    .locals 8
    .param p1, "isPipShown"    # Z

    .prologue
    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 49
    iget-object v2, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/tv/views/TaskCardView;

    .line 50
    .local v1, "view":Lcom/android/systemui/recents/tv/views/TaskCardView;
    iget v2, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mTranslationX:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setTranslationX(F)V

    .line 51
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 52
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mDimAlpha:F

    .line 51
    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 53
    const/4 v3, 0x0

    .line 51
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 54
    iget v3, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mDuration:I

    int-to-long v4, v3

    .line 51
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 55
    iget-wide v4, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mDelay:J

    int-to-long v6, v0

    mul-long/2addr v4, v6

    .line 51
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 56
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 51
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    .line 47
    .end local v1    # "view":Lcom/android/systemui/recents/tv/views/TaskCardView;
    :cond_1
    return-void
.end method

.method public startExitAnimation(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .locals 8
    .param p1, "dismissEvent"    # Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    .prologue
    .line 61
    iget-object v2, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 62
    iget-object v2, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/tv/views/TaskCardView;

    .line 63
    .local v1, "view":Lcom/android/systemui/recents/tv/views/TaskCardView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 64
    const/4 v3, 0x0

    .line 63
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 65
    iget v3, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mTranslationX:I

    neg-int v3, v3

    int-to-float v3, v3

    .line 63
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 66
    iget v3, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mDuration:I

    int-to-long v4, v3

    .line 63
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 67
    iget-wide v4, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mDelay:J

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    int-to-long v6, v3

    mul-long/2addr v4, v6

    .line 63
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 68
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 63
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 69
    if-nez v0, :cond_0

    .line 70
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 72
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 61
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 60
    .end local v1    # "view":Lcom/android/systemui/recents/tv/views/TaskCardView;
    :cond_1
    return-void
.end method
