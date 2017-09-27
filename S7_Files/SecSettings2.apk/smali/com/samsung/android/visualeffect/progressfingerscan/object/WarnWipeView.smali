.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;
.super Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;
.source "WarnWipeView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAnimationY:F

.field private mCurrentYPos:F

.field private mWaterDropView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "WarnWipeView"

    .line 12
    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->TAG:Ljava/lang/String;

    .line 15
    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimationY:F

    .line 16
    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mCurrentYPos:F

    .line 20
    return-void
.end method


# virtual methods
.method protected getMaxStatus()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 89
    return v0
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, "fingerView":Landroid/view/View;
    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->wipe_fingerprint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->addView(Landroid/view/View;)V

    .line 40
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mWaterDropView:Landroid/view/View;

    .line 41
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mWaterDropView:Landroid/view/View;

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->wipe_water:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 42
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mWaterDropView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->addView(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method protected onUpdate(IF)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "value"    # F

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mWaterDropView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mCurrentYPos:F

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimationY:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 85
    return-void
.end method

.method protected setAnimator(IZ)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "start"    # Z

    .prologue
    const v5, 0x3e2e147b    # 0.17f

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x0

    .local v2, "duration":J
    const/4 v1, 0x0

    .line 49
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 50
    .local v0, "dpi":F
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mWaterDropView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    iput v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mCurrentYPos:F

    .line 51
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 53
    packed-switch p1, :pswitch_data_0

    .line 78
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 79
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 80
    return-void

    .restart local v1    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_0
    const-wide/16 v2, 0x96

    const/high16 v4, 0x40100000    # 2.25f

    .line 56
    mul-float/2addr v4, v0

    iput v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimationY:F

    .line 57
    new-instance v1, Landroid/view/animation/PathInterpolator;

    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    const v4, 0x3f266666    # 0.65f

    invoke-direct {v1, v5, v5, v4, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 58
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    if-nez p2, :cond_0

    .line 59
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x29a

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_0

    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_1
    const-wide/16 v2, 0x14d

    const/high16 v4, -0x3fb00000    # -3.25f

    .line 64
    mul-float/2addr v4, v0

    iput v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimationY:F

    .line 65
    new-instance v1, Landroid/view/animation/PathInterpolator;

    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    const v4, 0x3ea3d70a    # 0.32f

    const v5, 0x3eeb851f    # 0.46f

    invoke-direct {v1, v4, v9, v5, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_2
    const-wide/16 v2, 0x11b

    const/high16 v4, 0x40000000    # 2.0f

    .line 69
    mul-float/2addr v4, v0

    iput v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimationY:F

    .line 70
    new-instance v1, Landroid/view/animation/PathInterpolator;

    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    const v4, 0x3f0f5c29    # 0.56f

    const v5, 0x3f2b851f    # 0.67f

    invoke-direct {v1, v4, v9, v5, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_3
    const-wide/16 v2, 0xe9

    const/high16 v4, -0x40800000    # -1.0f

    .line 74
    mul-float/2addr v4, v0

    iput v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnWipeView;->mAnimationY:F

    .line 75
    new-instance v1, Landroid/view/animation/PathInterpolator;

    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v1, v4, v9, v5, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
