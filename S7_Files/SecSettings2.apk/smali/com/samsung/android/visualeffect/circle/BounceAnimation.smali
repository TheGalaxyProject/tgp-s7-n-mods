.class public Lcom/samsung/android/visualeffect/circle/BounceAnimation;
.super Ljava/lang/Object;
.source "BounceAnimation.java"


# instance fields
.field mDownDuration:I

.field mDownInterpolator:Landroid/view/animation/Interpolator;

.field mListener:Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;

.field mScaleFrom:F

.field mScaleMid:F

.field mScaleTo:F

.field mUpDuration:I

.field mUpInterpolator:Landroid/view/animation/Interpolator;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;FFF)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "scaleFrom"    # F
    .param p3, "scaleMid"    # F
    .param p4, "scaleTo"    # F

    .prologue
    const/16 v5, 0xa7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    .line 21
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;-><init>(Landroid/view/View;FFFII)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/view/View;FFFII)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "scaleFrom"    # F
    .param p3, "scaleMid"    # F
    .param p4, "scaleTo"    # F
    .param p5, "upDuration"    # I
    .param p6, "downDuration"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 27
    new-instance v7, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3f000000    # 0.5f

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {v7, v0, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e4ccccd    # 0.2f

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v8, v0, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 26
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;-><init>(Landroid/view/View;FFFIILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/view/View;FFFIILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "scaleFrom"    # F
    .param p3, "scaleMid"    # F
    .param p4, "scaleTo"    # F
    .param p5, "upDuration"    # I
    .param p6, "downDuration"    # I
    .param p7, "up"    # Landroid/view/animation/Interpolator;
    .param p8, "down"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mView:Landroid/view/View;

    .line 34
    iput p2, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleFrom:F

    .line 35
    iput p3, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleMid:F

    .line 36
    iput p4, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleTo:F

    .line 37
    iput p5, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mUpDuration:I

    .line 38
    iput p6, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mDownDuration:I

    .line 39
    iput-object p7, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mUpInterpolator:Landroid/view/animation/Interpolator;

    .line 40
    iput-object p8, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mDownInterpolator:Landroid/view/animation/Interpolator;

    .line 32
    return-void
.end method


# virtual methods
.method public getBounceDownDuration()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mDownDuration:I

    return v0
.end method

.method public getBounceUpDuration()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mUpDuration:I

    return v0
.end method

.method public setBounceListener(Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mListener:Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;

    .line 43
    return-void
.end method

.method public startAnimation()V
    .locals 10

    .prologue
    .line 48
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleFrom:F

    iget v2, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleMid:F

    iget v3, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleFrom:F

    iget v4, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleMid:F

    .line 49
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    .line 48
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 50
    .local v0, "scaleUpAnim":Landroid/view/animation/ScaleAnimation;
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mUpInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 51
    iget v2, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mUpDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 52
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 54
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    iget v2, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleMid:F

    iget v3, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleTo:F

    iget v4, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleMid:F

    iget v5, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mScaleTo:F

    .line 55
    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    .line 54
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 56
    .local v1, "scaleDownAnim":Landroid/view/animation/ScaleAnimation;
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mDownInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 57
    iget v2, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mDownDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 58
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 61
    new-instance v2, Lcom/samsung/android/visualeffect/circle/BounceAnimation$1;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/visualeffect/circle/BounceAnimation$1;-><init>(Lcom/samsung/android/visualeffect/circle/BounceAnimation;Landroid/view/animation/ScaleAnimation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 80
    new-instance v2, Lcom/samsung/android/visualeffect/circle/BounceAnimation$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/visualeffect/circle/BounceAnimation$2;-><init>(Lcom/samsung/android/visualeffect/circle/BounceAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 100
    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 47
    return-void
.end method
