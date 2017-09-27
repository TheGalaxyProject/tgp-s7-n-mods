.class public Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;
.super Ljava/lang/Object;
.source "ViewFocusAnimator.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final mAnimDuration:I

.field private final mDismissIconAlpha:F

.field mFocusAnimation:Landroid/animation/ObjectAnimator;

.field private final mFocusInterpolator:Landroid/view/animation/Interpolator;

.field private mFocusProgress:F

.field private final mSelectedScale:F

.field private final mSelectedScaleDelta:F

.field private final mSelectedSpacingDelta:F

.field private final mSelectedZDelta:F

.field protected mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

.field private final mUnselectedScale:F

.field private final mUnselectedSpacing:F

.field private final mUnselectedZ:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/tv/views/TaskCardView;)V
    .locals 6
    .param p1, "view"    # Lcom/android/systemui/recents/tv/views/TaskCardView;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    .line 50
    invoke-virtual {p1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 52
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3, p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 54
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 56
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    sget-boolean v3, Lcom/android/systemui/recents/tv/views/TaskCardView;->isTvmode:Z

    if-nez v3, :cond_0

    .line 57
    const v3, 0x7f0c0079

    invoke-virtual {v1, v3, v0, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 58
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedScale:F

    .line 59
    const v3, 0x7f0c007a

    invoke-virtual {v1, v3, v0, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 60
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedScale:F

    .line 61
    iget v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedScale:F

    iget v4, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedScale:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedScaleDelta:F

    .line 71
    :goto_0
    const v3, 0x7f0d040d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedZ:F

    .line 72
    const v3, 0x7f0d040e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedZDelta:F

    .line 75
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    sget-boolean v3, Lcom/android/systemui/recents/tv/views/TaskCardView;->isTvmode:Z

    if-nez v3, :cond_1

    .line 76
    const v3, 0x7f0d033b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedSpacing:F

    .line 77
    const v3, 0x7f0d033c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedSpacingDelta:F

    .line 84
    :goto_1
    const v3, 0x7f0c0071

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mAnimDuration:I

    .line 86
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusInterpolator:Landroid/view/animation/Interpolator;

    .line 88
    const-string/jumbo v3, "focusProgress"

    new-array v4, v5, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    .line 89
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    iget v4, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mAnimDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 90
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    sget-boolean v3, Lcom/android/systemui/recents/tv/views/TaskCardView;->isTvmode:Z

    if-nez v3, :cond_2

    .line 94
    const v3, 0x7f0c007b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mDismissIconAlpha:F

    .line 100
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    sget-boolean v3, Lcom/android/systemui/recents/tv/views/TaskCardView;->isTvmode:Z

    if-eqz v3, :cond_3

    :goto_3
    invoke-direct {p0, v2}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->setFocusProgress(F)V

    .line 102
    iget-object v2, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator$1;-><init>(Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 48
    return-void

    .line 64
    :cond_0
    const v3, 0x7f0c0080

    invoke-virtual {v1, v3, v0, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 65
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedScale:F

    .line 66
    const v3, 0x7f0c0081

    invoke-virtual {v1, v3, v0, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 67
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedScale:F

    .line 68
    iget v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedScale:F

    iget v4, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedScale:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedScaleDelta:F

    goto/16 :goto_0

    .line 80
    :cond_1
    const v3, 0x7f0d040b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedSpacing:F

    .line 81
    const v3, 0x7f0d040c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedSpacingDelta:F

    goto/16 :goto_1

    .line 97
    :cond_2
    const v3, 0x7f0c0082

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mDismissIconAlpha:F

    goto :goto_2

    .line 100
    :cond_3
    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_3
.end method

.method private animateFocus(Z)V
    .locals 5
    .param p1, "focused"    # Z

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 138
    :cond_0
    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 141
    .local v0, "target":F
    :goto_0
    iget v1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusProgress:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusProgress:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 143
    iget-object v1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 133
    :cond_1
    return-void

    .line 139
    .end local v0    # "target":F
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    sget-boolean v1, Lcom/android/systemui/recents/tv/views/TaskCardView;->isTvmode:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .restart local v0    # "target":F
    goto :goto_0

    .end local v0    # "target":F
    :cond_3
    const/high16 v0, 0x3f000000    # 0.5f

    .restart local v0    # "target":F
    goto :goto_0
.end method

.method private setFocusProgress(F)V
    .locals 8
    .param p1, "level"    # F

    .prologue
    .line 116
    iput p1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusProgress:F

    .line 118
    iget v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedScale:F

    iget v4, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedScaleDelta:F

    mul-float/2addr v4, p1

    add-float v0, v3, v4

    .line 119
    .local v0, "scale":F
    iget v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedZ:F

    iget v4, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedZDelta:F

    mul-float/2addr v4, p1

    add-float v2, v3, v4

    .line 120
    .local v2, "z":F
    iget v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedSpacing:F

    iget v4, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedSpacingDelta:F

    mul-float/2addr v4, p1

    add-float v1, v3, v4

    .line 122
    .local v1, "spacing":F
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setScaleX(F)V

    .line 123
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setScaleY(F)V

    .line 125
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    float-to-int v4, v1

    iget-object v5, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getPaddingTop()I

    move-result v5

    .line 126
    float-to-int v6, v1

    iget-object v7, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getPaddingBottom()I

    move-result v7

    .line 125
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setPadding(IIII)V

    .line 128
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getDismissIconView()Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mDismissIconAlpha:F

    mul-float/2addr v4, p1

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 129
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getThumbnailView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setZ(F)V

    .line 130
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getDismissIconView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setZ(F)V

    .line 115
    return-void
.end method


# virtual methods
.method public changeSize(Z)V
    .locals 5
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v4, 0x0

    .line 159
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 160
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 161
    .local v2, "width":I
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 163
    .local v0, "height":I
    if-gez v2, :cond_0

    if-gez v0, :cond_0

    .line 164
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3, v4, v4}, Lcom/android/systemui/recents/tv/views/TaskCardView;->measure(II)V

    .line 167
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->animateFocus(Z)V

    .line 158
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 175
    :cond_2
    if-eqz p1, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->setFocusProgress(F)V

    goto :goto_0

    .line 176
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    sget-boolean v3, Lcom/android/systemui/recents/tv/views/TaskCardView;->isTvmode:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    if-eq p1, v0, :cond_0

    .line 150
    return-void

    .line 152
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->changeSize(Z)V

    .line 148
    return-void
.end method
