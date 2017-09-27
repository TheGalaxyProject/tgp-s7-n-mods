.class public Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;
.super Lcom/android/systemui/screenshot/CaptureEffectView;
.source "CaptureEffectViewForShutterRevert.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field private final mSineInOut90:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/CaptureEffectView;-><init>(Landroid/content/Context;)V

    .line 30
    const-class v0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->mSineInOut90:Landroid/view/animation/Interpolator;

    .line 39
    return-void
.end method


# virtual methods
.method public show(Landroid/widget/ImageView;)V
    .locals 11
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->imageview:Landroid/widget/ImageView;

    .line 48
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f4f9db2    # 0.811f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f4f9db2    # 0.811f

    .line 49
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    .line 48
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 50
    .local v0, "sa":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x85

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 51
    iget-object v2, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->mSineInOut90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 54
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f9d70a4    # 1.23f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f9d70a4    # 1.23f

    .line 55
    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    .line 54
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 56
    .local v1, "sa2":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x85

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 57
    const-wide/16 v2, 0x10a

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 58
    iget-object v2, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->mSineInOut90:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 60
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v10, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 61
    .local v10, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 62
    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 63
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 64
    new-instance v2, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1;-><init>(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;)V

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 86
    iget-object v2, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 45
    return-void
.end method
