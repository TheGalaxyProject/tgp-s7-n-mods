.class public Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;
.super Lcom/android/systemui/screenshot/CaptureEffectView;
.source "CaptureEffectViewForShutterAndMove.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field private mMode:I

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineInOut70:Landroid/view/animation/Interpolator;

.field private final mSineInOut90:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/CaptureEffectView;-><init>(Landroid/content/Context;)V

    .line 32
    const-class v0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->TAG:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    .line 54
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 55
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v3, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mSineInOut70:Landroid/view/animation/Interpolator;

    .line 56
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mSineInOut90:Landroid/view/animation/Interpolator;

    .line 51
    return-void
.end method

.method private getScaleAnimation()Landroid/view/animation/ScaleAnimation;
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f4ccccd    # 0.8f

    .line 140
    const/4 v6, 0x0

    .local v6, "pivotX":F
    const/4 v8, 0x0

    .line 141
    .local v8, "pivotY":F
    iget v3, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 149
    :goto_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 151
    .local v0, "sa":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 152
    iget-object v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mSineInOut90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 153
    return-object v0

    .line 145
    .end local v0    # "sa":Landroid/view/animation/ScaleAnimation;
    :pswitch_0
    const/high16 v6, 0x3f000000    # 0.5f

    .line 146
    const/high16 v8, 0x3f000000    # 0.5f

    .line 147
    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getTranslateAnimation()Landroid/view/animation/TranslateAnimation;
    .locals 12

    .prologue
    const-wide/16 v10, 0x14d

    const/4 v1, 0x2

    .line 107
    const/4 v2, 0x0

    .local v2, "fromX":F
    const/4 v4, 0x0

    .local v4, "toX":F
    const/4 v6, 0x0

    .local v6, "fromY":F
    const/4 v8, 0x0

    .line 108
    .local v8, "toY":F
    iget v3, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 121
    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 123
    .local v0, "ta":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 124
    iget v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    packed-switch v1, :pswitch_data_1

    .line 135
    :goto_1
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 136
    return-object v0

    .line 110
    .end local v0    # "ta":Landroid/view/animation/TranslateAnimation;
    :pswitch_0
    const/high16 v8, -0x40800000    # -1.0f

    .line 111
    goto :goto_0

    .line 113
    :pswitch_1
    const/high16 v4, 0x3f800000    # 1.0f

    .line 114
    goto :goto_0

    .line 116
    :pswitch_2
    const/high16 v4, -0x40800000    # -1.0f

    .line 117
    goto :goto_0

    .line 126
    .restart local v0    # "ta":Landroid/view/animation/TranslateAnimation;
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 130
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mSineInOut70:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 124
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public show(Landroid/widget/ImageView;)V
    .locals 12
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    const-wide/16 v10, 0x14d

    const/4 v8, 0x1

    const v6, 0x3f333333    # 0.7f

    .line 61
    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->imageview:Landroid/widget/ImageView;

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->getScaleAnimation()Landroid/view/animation/ScaleAnimation;

    move-result-object v3

    .line 64
    .local v3, "sa":Landroid/view/animation/ScaleAnimation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 65
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 66
    iget-object v5, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->getTranslateAnimation()Landroid/view/animation/TranslateAnimation;

    move-result-object v4

    .line 70
    .local v4, "ta":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    invoke-direct {v1, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 71
    .local v1, "aa2":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x74

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 72
    invoke-virtual {v1, v10, v11}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 73
    iget-object v5, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 75
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 76
    .local v2, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 77
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 78
    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 79
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 80
    invoke-virtual {v2, v8}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 81
    new-instance v5, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;-><init>(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;)V

    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 103
    iget-object v5, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 60
    return-void
.end method
