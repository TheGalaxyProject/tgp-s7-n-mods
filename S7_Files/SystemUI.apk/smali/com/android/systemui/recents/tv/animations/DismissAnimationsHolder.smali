.class public Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;
.super Ljava/lang/Object;
.source "DismissAnimationsHolder.java"


# instance fields
.field private mCardDismissIcon:Landroid/widget/ImageView;

.field private mDismissDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private mDismissEnterYDelta:I

.field private mDismissIconNotInDismissStateAlpha:F

.field private mDismissStartYDelta:I

.field private mDismissText:Landroid/widget/TextView;

.field private mInfoField:Landroid/widget/LinearLayout;

.field private mLongDuration:J

.field private mShortDuration:J

.field private mThumbnailView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;)Landroid/graphics/drawable/TransitionDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissDrawable:Landroid/graphics/drawable/TransitionDrawable;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/recents/tv/views/TaskCardView;)V
    .locals 4
    .param p1, "taskCardView"    # Lcom/android/systemui/recents/tv/views/TaskCardView;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const v1, 0x7f130324

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mInfoField:Landroid/widget/LinearLayout;

    .line 48
    const v1, 0x7f130329

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mThumbnailView:Landroid/view/View;

    .line 49
    const v1, 0x7f130327

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mCardDismissIcon:Landroid/widget/ImageView;

    .line 50
    iget-object v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mCardDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 51
    iget-object v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissDrawable:Landroid/graphics/drawable/TransitionDrawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 52
    const v1, 0x7f130328

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissText:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d0410

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissEnterYDelta:I

    .line 56
    iget v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissEnterYDelta:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissStartYDelta:I

    .line 57
    const v1, 0x7f0c0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 58
    const v1, 0x7f0c0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mLongDuration:J

    .line 60
    sget-boolean v1, Lcom/android/systemui/recents/tv/views/TaskCardView;->isTvmode:Z

    if-nez v1, :cond_0

    .line 62
    const v1, 0x7f0c007b

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissIconNotInDismissStateAlpha:F

    .line 45
    :goto_0
    return-void

    .line 65
    :cond_0
    const v1, 0x7f0c0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissIconNotInDismissStateAlpha:F

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mInfoField:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mInfoField:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mInfoField:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 164
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mThumbnailView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mThumbnailView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mCardDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 160
    return-void
.end method

.method public startDismissAnimation(Landroid/animation/Animator$AnimatorListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v4, 0x0

    .line 130
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mCardDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 131
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 130
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 132
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder$3;-><init>(Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;)V

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 141
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 142
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 141
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 143
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mInfoField:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 147
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mLongDuration:J

    .line 146
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 148
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 149
    iget v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissStartYDelta:I

    int-to-float v1, v1

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 153
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mThumbnailView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 154
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mLongDuration:J

    .line 153
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 156
    iget v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissStartYDelta:I

    int-to-float v1, v1

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 129
    return-void
.end method

.method public startEnterAnimation()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 70
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mCardDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 71
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 70
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder$1;-><init>(Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;)V

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 82
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 81
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mInfoField:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 87
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 86
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 88
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 89
    iget v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissEnterYDelta:I

    int-to-float v1, v1

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mThumbnailView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 93
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 92
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 94
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 95
    iget v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissEnterYDelta:I

    int-to-float v1, v1

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 69
    return-void
.end method

.method public startExitAnimation()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 100
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mCardDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 101
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 100
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 102
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 103
    iget v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissIconNotInDismissStateAlpha:F

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder$2;-><init>(Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 112
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 111
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 113
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mInfoField:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 117
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 116
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 118
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mThumbnailView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 123
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 122
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 124
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 99
    return-void
.end method
