.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;
.super Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;
.source "WarnCoverView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mFingerPrintView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "WarnCoverView"

    .line 11
    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method protected getMaxStatus()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 81
    return v0
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    .local v0, "bracket":Landroid/view/View;
    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->cover_bracket:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->addView(Landroid/view/View;)V

    .line 37
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mFingerPrintView:Landroid/view/View;

    .line 38
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mFingerPrintView:Landroid/view/View;

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->cover_fingerprint:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 39
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mFingerPrintView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->addView(Landroid/view/View;)V

    .line 41
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 42
    return-void
.end method

.method protected onUpdate(IF)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "value"    # F

    .prologue
    .line 66
    packed-switch p1, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mFingerPrintView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mFingerPrintView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setAlpha(F)V

    const v1, 0x3dcccccd    # 0.1f

    .line 72
    mul-float/2addr v1, p2

    const v2, 0x3f8ccccd    # 1.1f

    sub-float v0, v2, v1

    .line 73
    .local v0, "scale":F
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mFingerPrintView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 74
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mFingerPrintView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
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

    .line 48
    .local v0, "delay":J
    packed-switch p1, :pswitch_data_0

    .line 60
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 61
    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnCoverView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 62
    return-void

    :pswitch_0
    const-wide/16 v2, 0x190

    .line 51
    if-nez p2, :cond_0

    const-wide/16 v0, 0x682

    .line 52
    goto :goto_0

    :pswitch_1
    const-wide/16 v2, 0x1f4

    const-wide/16 v0, 0x10b

    .line 57
    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
