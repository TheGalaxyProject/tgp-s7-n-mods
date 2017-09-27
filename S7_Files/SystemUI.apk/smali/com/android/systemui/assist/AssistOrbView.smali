.class public Lcom/android/systemui/assist/AssistOrbView;
.super Landroid/widget/FrameLayout;
.source "AssistOrbView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/assist/AssistOrbView$1;,
        Lcom/android/systemui/assist/AssistOrbView$2;,
        Lcom/android/systemui/assist/AssistOrbView$3;
    }
.end annotation


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mBaseMargin:I

.field private mCircleAnimationEndValue:F

.field private mCircleAnimator:Landroid/animation/ValueAnimator;

.field private final mCircleMinSize:I

.field private final mCircleRect:Landroid/graphics/Rect;

.field private mCircleSize:F

.field private mCircleUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mClipToOutline:Z

.field private mLogo:Landroid/widget/ImageView;

.field private final mMaxElevation:I

.field private mOffset:F

.field private mOffsetAnimator:Landroid/animation/ValueAnimator;

.field private mOffsetUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mOutlineAlpha:F

.field private final mOvershootInterpolator:Landroid/view/animation/Interpolator;

.field private final mStaticOffset:I

.field private final mStaticRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/assist/AssistOrbView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleMinSize:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/assist/AssistOrbView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/assist/AssistOrbView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleSize:F

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/assist/AssistOrbView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOutlineAlpha:F

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/assist/AssistOrbView;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOvershootInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/assist/AssistOrbView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mStaticOffset:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/assist/AssistOrbView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/assist/AssistOrbView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffset:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/assist/AssistOrbView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/assist/AssistOrbView;FJJLandroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "offset"    # F
    .param p2, "duration"    # J
    .param p4, "startDelay"    # J
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/assist/AssistOrbView;->animateOffset(FJJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/assist/AssistOrbView;F)V
    .locals 0
    .param p1, "circleSize"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistOrbView;->applyCircleSize(F)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/assist/AssistOrbView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbView;->updateElevation()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/assist/AssistOrbView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbView;->updateLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/assist/AssistOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/assist/AssistOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/assist/AssistOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleRect:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mStaticRect:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOvershootInterpolator:Landroid/view/animation/Interpolator;

    .line 60
    new-instance v0, Lcom/android/systemui/assist/AssistOrbView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistOrbView$1;-><init>(Lcom/android/systemui/assist/AssistOrbView;)V

    .line 59
    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 67
    new-instance v0, Lcom/android/systemui/assist/AssistOrbView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistOrbView$2;-><init>(Lcom/android/systemui/assist/AssistOrbView;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 74
    new-instance v0, Lcom/android/systemui/assist/AssistOrbView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistOrbView$3;-><init>(Lcom/android/systemui/assist/AssistOrbView;)V

    .line 73
    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 98
    new-instance v0, Lcom/android/systemui/assist/AssistOrbView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistOrbView$4;-><init>(Lcom/android/systemui/assist/AssistOrbView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistOrbView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistOrbView;->setWillNotDraw(Z)V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    const v1, 0x7f0d02a2

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleMinSize:I

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    const v1, 0x7f0d02a3

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mBaseMargin:I

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    const v1, 0x7f0d02a4

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mStaticOffset:I

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 117
    const v1, 0x7f0d02a5

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mMaxElevation:I

    .line 118
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistOrbView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    return-void
.end method

.method private animateOffset(FJJLandroid/view/animation/Interpolator;)V
    .locals 4
    .param p1, "offset"    # F
    .param p2, "duration"    # J
    .param p4, "startDelay"    # J
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 197
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffset:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 198
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/assist/AssistOrbView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/assist/AssistOrbView$5;-><init>(Lcom/android/systemui/assist/AssistOrbView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 208
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 192
    return-void
.end method

.method private applyCircleSize(F)V
    .locals 0
    .param p1, "circleSize"    # F

    .prologue
    .line 170
    iput p1, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleSize:F

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbView;->updateLayout()V

    .line 169
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 134
    iget-object v3, p0, Lcom/android/systemui/assist/AssistOrbView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 133
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 132
    return-void
.end method

.method private updateCircleRect()V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffset:F

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/assist/AssistOrbView;->updateCircleRect(Landroid/graphics/Rect;FZ)V

    .line 240
    return-void
.end method

.method private updateCircleRect(Landroid/graphics/Rect;FZ)V
    .locals 5
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "offset"    # F
    .param p3, "useStaticSize"    # Z

    .prologue
    .line 246
    if-eqz p3, :cond_0

    iget v3, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleMinSize:I

    int-to-float v0, v3

    .line 247
    .local v0, "circleSize":F
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistOrbView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    div-int/lit8 v1, v3, 0x2

    .line 248
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistOrbView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/assist/AssistOrbView;->mBaseMargin:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, p2

    float-to-int v2, v3

    .line 249
    .local v2, "top":I
    int-to-float v3, v1

    add-float/2addr v3, v0

    float-to-int v3, v3

    int-to-float v4, v2

    add-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 244
    return-void

    .line 246
    .end local v0    # "circleSize":F
    .end local v1    # "left":I
    .end local v2    # "top":I
    :cond_0
    iget v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleSize:F

    .restart local v0    # "circleSize":F
    goto :goto_0
.end method

.method private updateClipping()V
    .locals 3

    .prologue
    .line 220
    iget v1, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleSize:F

    iget v2, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleMinSize:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/4 v0, 0x1

    .line 221
    .local v0, "clip":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistOrbView;->mClipToOutline:Z

    if-eq v0, v1, :cond_0

    .line 222
    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistOrbView;->setClipToOutline(Z)V

    .line 223
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mClipToOutline:Z

    .line 219
    :cond_0
    return-void

    .line 220
    .end local v0    # "clip":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "clip":Z
    goto :goto_0
.end method

.method private updateElevation()V
    .locals 4

    .prologue
    .line 175
    iget v2, p0, Lcom/android/systemui/assist/AssistOrbView;->mStaticOffset:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffset:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/assist/AssistOrbView;->mStaticOffset:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 176
    .local v1, "t":F
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v2

    .line 177
    iget v2, p0, Lcom/android/systemui/assist/AssistOrbView;->mMaxElevation:I

    int-to-float v2, v2

    mul-float v0, v1, v2

    .line 178
    .local v0, "offset":F
    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistOrbView;->setElevation(F)V

    .line 174
    return-void
.end method

.method private updateLayout()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbView;->updateCircleRect()V

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbView;->updateLogo()V

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistOrbView;->invalidateOutline()V

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistOrbView;->invalidate()V

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbView;->updateClipping()V

    .line 211
    return-void
.end method

.method private updateLogo()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 228
    iget-object v4, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v7

    iget-object v5, p0, Lcom/android/systemui/assist/AssistOrbView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float v2, v4, v5

    .line 229
    .local v2, "translationX":F
    iget-object v4, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v7

    .line 230
    iget-object v5, p0, Lcom/android/systemui/assist/AssistOrbView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    .line 229
    sub-float/2addr v4, v5

    .line 230
    iget v5, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleMinSize:I

    int-to-float v5, v5

    const/high16 v6, 0x40e00000    # 7.0f

    div-float/2addr v5, v6

    .line 229
    sub-float v3, v4, v5

    .line 231
    .local v3, "translationY":F
    iget v4, p0, Lcom/android/systemui/assist/AssistOrbView;->mStaticOffset:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/assist/AssistOrbView;->mOffset:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/assist/AssistOrbView;->mStaticOffset:I

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 232
    .local v1, "t":F
    iget v4, p0, Lcom/android/systemui/assist/AssistOrbView;->mStaticOffset:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 233
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v0, v4, v1

    .line 234
    .local v0, "alpha":F
    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v4, v0, v4

    mul-float/2addr v4, v7

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 235
    iget-object v4, p0, Lcom/android/systemui/assist/AssistOrbView;->mLogo:Landroid/widget/ImageView;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 236
    iget-object v4, p0, Lcom/android/systemui/assist/AssistOrbView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 237
    iget-object v4, p0, Lcom/android/systemui/assist/AssistOrbView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 227
    return-void
.end method


# virtual methods
.method public animateCircleSize(FJJLandroid/view/animation/Interpolator;)V
    .locals 4
    .param p1, "circleSize"    # F
    .param p2, "duration"    # J
    .param p4, "startDelay"    # J
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 153
    iget v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimationEndValue:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 154
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 159
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleSize:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    .line 160
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistOrbView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 164
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 166
    iput p1, p0, Lcom/android/systemui/assist/AssistOrbView;->mCircleAnimationEndValue:F

    .line 152
    return-void
.end method

.method public getLogo()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mLogo:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistOrbView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 127
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 140
    const v0, 0x7f1300bd

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistOrbView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mLogo:Landroid/widget/ImageView;

    .line 138
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mLogo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistOrbView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/assist/AssistOrbView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 146
    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mStaticRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/assist/AssistOrbView;->mStaticOffset:I

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/assist/AssistOrbView;->updateCircleRect(Landroid/graphics/Rect;FZ)V

    .line 144
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mClipToOutline:Z

    .line 270
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 271
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/assist/AssistOrbView;->mOutlineAlpha:F

    .line 268
    return-void
.end method

.method public startEnterAnimation()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/assist/AssistOrbView;->applyCircleSize(F)V

    .line 259
    new-instance v0, Lcom/android/systemui/assist/AssistOrbView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistOrbView$6;-><init>(Lcom/android/systemui/assist/AssistOrbView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistOrbView;->post(Ljava/lang/Runnable;)Z

    .line 257
    return-void
.end method

.method public startExitAnimation(J)V
    .locals 7
    .param p1, "delay"    # J

    .prologue
    const-wide/16 v2, 0xc8

    const/4 v1, 0x0

    .line 253
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/assist/AssistOrbView;->animateCircleSize(FJJLandroid/view/animation/Interpolator;)V

    .line 254
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/assist/AssistOrbView;->animateOffset(FJJLandroid/view/animation/Interpolator;)V

    .line 252
    return-void
.end method
