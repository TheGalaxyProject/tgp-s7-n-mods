.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;
.super Landroid/widget/FrameLayout;
.source "Complete.java"


# instance fields
.field private final ANIMATION_DELAY:J

.field private final ANIMATION_DURATION:J

.field private final SHADOW_ANIMATION_DURATION:J

.field private final TAG:Ljava/lang/String;

.field private completeColor:I

.field private completeResID:I

.field private completeShadowResID:I

.field private completeView:Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;

.field private completeViewOnAnimationValue:F

.field private completeViewOnAnimator:Landroid/animation/ValueAnimator;

.field private context:Landroid/content/Context;

.field private drawingHeight:I

.field private drawingWidth:I

.field private handler:Landroid/os/Handler;

.field private height:I

.field private isOn:Z

.field private isViewAdded:Z

.field private shadow:Landroid/widget/ImageView;

.field private startX:I

.field private startY:I

.field private whiteFinger:Landroid/widget/ImageView;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIIIII)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "startX"    # I
    .param p5, "startY"    # I
    .param p6, "drawingWidth"    # I
    .param p7, "drawingHeight"    # I
    .param p8, "completeColor"    # I
    .param p9, "completeResID"    # I
    .param p10, "completeShadowResID"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x29a

    .line 17
    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->ANIMATION_DURATION:J

    const-wide/16 v0, 0x29a

    .line 18
    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->SHADOW_ANIMATION_DURATION:J

    const-wide/16 v0, 0x1f4

    .line 19
    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->ANIMATION_DELAY:J

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isOn:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isViewAdded:Z

    .line 44
    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->context:Landroid/content/Context;

    .line 45
    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->width:I

    .line 46
    iput p3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->height:I

    .line 47
    iput p4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->startX:I

    .line 48
    iput p5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->startY:I

    .line 49
    iput p6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->drawingWidth:I

    .line 50
    iput p7, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->drawingHeight:I

    .line 51
    iput p8, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeColor:I

    .line 52
    iput p9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeResID:I

    .line 53
    iput p10, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeShadowResID:I

    .line 55
    new-instance v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete$1;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->handler:Landroid/os/Handler;

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->setLayout()V

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->setAnimator()V

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->setLayoutDirection(I)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeOnDelayed()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    .prologue
    .line 14
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimationValue:F

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;
    .param p1, "x1"    # F

    .prologue
    .line 14
    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimationValue:F

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;)Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeView:Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;

    return-object v0
.end method

.method private completeOnDelayed()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isViewAdded:Z

    .line 113
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->shadow:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->drawingWidth:I

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->drawingHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->addView(Landroid/view/View;II)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->whiteFinger:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->drawingWidth:I

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->drawingHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->addView(Landroid/view/View;II)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->shadow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->shadow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->shadow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 119
    return-void
.end method

.method private setAnimator()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    .line 91
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete$2;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 100
    return-void
.end method

.method private setLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 68
    new-instance v2, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->context:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->width:I

    iget v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->height:I

    iget v6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeColor:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeView:Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;

    .line 69
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeView:Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->width:I

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->height:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->addView(Landroid/view/View;II)V

    .line 71
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->whiteFinger:Landroid/widget/ImageView;

    .line 72
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->whiteFinger:Landroid/widget/ImageView;

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeResID:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->whiteFinger:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    .line 74
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->whiteFinger:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 75
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->whiteFinger:Landroid/widget/ImageView;

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->startX:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 76
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->whiteFinger:Landroid/widget/ImageView;

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->startY:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    .line 78
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->shadow:Landroid/widget/ImageView;

    .line 79
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->shadow:Landroid/widget/ImageView;

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeShadowResID:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->shadow:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    .line 81
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->shadow:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 82
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->shadow:Landroid/widget/ImageView;

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->startX:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 83
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->shadow:Landroid/widget/ImageView;

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->startY:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    .line 84
    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->width:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->startX:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 85
    .local v0, "pivotX":F
    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->height:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->startY:I

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 86
    .local v1, "pivotY":F
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->shadow:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 87
    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->shadow:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 88
    return-void
.end method


# virtual methods
.method public completeOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isOn:Z

    if-eqz v0, :cond_0

    .line 123
    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isOn:Z

    .line 124
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeView:Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->setRatio(F)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 127
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isViewAdded:Z

    if-nez v0, :cond_1

    .line 132
    :goto_0
    return-void

    .line 122
    :cond_0
    return-void

    .line 128
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isViewAdded:Z

    .line 129
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->shadow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->removeView(Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->whiteFinger:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public completeOn()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isOn:Z

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isOn:Z

    .line 105
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 107
    return-void

    .line 103
    :cond_0
    return-void
.end method
