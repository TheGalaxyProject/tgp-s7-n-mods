.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;
.super Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;
.source "WarnLongView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mClockHandView:Landroid/view/View;

.field private mFingerView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "WarnLongView"

    .line 12
    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method protected getMaxStatus()I
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 107
    return v0
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v7, 0x0

    const v8, 0x3e4ccccd    # 0.2f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    .line 38
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    sget v5, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->long_fingerprint_:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 39
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->addView(Landroid/view/View;)V

    .line 41
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, "clockBase":Landroid/view/View;
    sget v4, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->long_clock:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->addView(Landroid/view/View;)V

    .line 45
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mClockHandView:Landroid/view/View;

    .line 46
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mClockHandView:Landroid/view/View;

    sget v5, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->long_clock_m_niddle:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->density:F

    .local v1, "dpi":F
    const/high16 v4, 0x42320000    # 44.5f

    .line 48
    mul-float/2addr v4, v1

    float-to-int v2, v4

    .local v2, "x":I
    const v4, 0x4237999a    # 45.9f

    .line 49
    mul-float/2addr v4, v1

    float-to-int v3, v4

    .line 50
    .local v3, "y":I
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mClockHandView:Landroid/view/View;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotX(F)V

    .line 51
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mClockHandView:Landroid/view/View;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotY(F)V

    .line 52
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mClockHandView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->addView(Landroid/view/View;)V

    .line 53
    return-void
.end method

.method public onUpdate(IF)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "value"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3f19999a    # 0.6f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    .local v0, "scale":F
    packed-switch p1, :pswitch_data_0

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->invalidate()V

    .line 103
    return-void

    .line 85
    :pswitch_0
    mul-float/2addr v1, p2

    sub-float v0, v4, v1

    .line 86
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 87
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 88
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    mul-float v2, v3, p2

    sub-float v2, v4, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mClockHandView:Landroid/view/View;

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 96
    :pswitch_2
    mul-float/2addr v1, p2

    const v2, 0x3f666666    # 0.9f

    add-float v0, v2, v1

    .line 97
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 98
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 99
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mFingerView:Landroid/view/View;

    mul-float v2, v3, p2

    const v3, 0x3ecccccd    # 0.4f

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setAnimator(IZ)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "start"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .local v2, "duration":J
    const-wide/16 v0, 0x0

    .line 60
    .local v0, "delay":J
    packed-switch p1, :pswitch_data_0

    .line 75
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 76
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnLongView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 77
    return-void

    :pswitch_0
    const-wide/16 v2, 0x14d

    .line 64
    if-nez p2, :cond_0

    const-wide/16 v0, 0x29a

    .line 65
    goto :goto_0

    :pswitch_1
    const-wide/16 v2, 0x3e8

    .line 69
    goto :goto_0

    :pswitch_2
    const-wide/16 v2, 0x29b

    .line 72
    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
