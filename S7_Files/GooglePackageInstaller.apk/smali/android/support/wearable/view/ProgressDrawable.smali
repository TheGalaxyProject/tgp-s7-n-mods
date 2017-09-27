.class Landroid/support/wearable/view/ProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressDrawable.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/view/ProgressDrawable$1;
    }
.end annotation


# static fields
.field private static LEVEL:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/wearable/view/ProgressDrawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private final mAnimator:Landroid/animation/ObjectAnimator;

.field private mCircleBorderColor:I

.field private mCircleBorderWidth:F

.field private final mInnerCircleBounds:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/support/wearable/view/ProgressDrawable$1;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "level"

    invoke-direct {v0, v1, v2}, Landroid/support/wearable/view/ProgressDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 43
    sput-object v0, Landroid/support/wearable/view/ProgressDrawable;->LEVEL:Landroid/util/Property;

    .line 71
    sget-object v0, Landroid/support/wearable/view/Gusterpolator;->INSTANCE:Landroid/support/wearable/view/Gusterpolator;

    sput-object v0, Landroid/support/wearable/view/ProgressDrawable;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 79
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mInnerCircleBounds:Landroid/graphics/RectF;

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mPaint:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    sget-object v0, Landroid/support/wearable/view/ProgressDrawable;->LEVEL:Landroid/util/Property;

    const/4 v1, 0x0

    const/16 v2, 0x2710

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 83
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 84
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 85
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 86
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    return-void
.end method

.method private static lerpInv(FFF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "value"    # F

    .prologue
    .line 174
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_0

    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 108
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mInnerCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/support/wearable/view/ProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 109
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mInnerCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Landroid/support/wearable/view/ProgressDrawable;->mCircleBorderWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Landroid/support/wearable/view/ProgressDrawable;->mCircleBorderWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 110
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/wearable/view/ProgressDrawable;->mCircleBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/wearable/view/ProgressDrawable;->mCircleBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    const/high16 v3, 0x43b40000    # 360.0f

    .line 114
    .local v3, "sweepAngle":F
    const/4 v8, 0x0

    .line 115
    .local v8, "growing":Z
    const/4 v6, 0x0

    .line 116
    .local v6, "correctionAngle":F
    invoke-virtual {p0}, Landroid/support/wearable/view/ProgressDrawable;->getLevel()I

    move-result v9

    .line 118
    .local v9, "level":I
    div-int/lit16 v7, v9, 0x7d0

    .line 119
    .local v7, "currentSegment":I
    mul-int/lit16 v10, v7, 0x7d0

    .line 120
    .local v10, "offset":I
    sub-int v0, v9, v10

    int-to-float v0, v0

    const/high16 v1, 0x44fa0000    # 2000.0f

    div-float v11, v0, v1

    .line 122
    .local v11, "progress":F
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, v11, v0

    if-gez v0, :cond_0

    const/4 v8, 0x1

    .line 123
    .local v8, "growing":Z
    :goto_0
    const/high16 v0, 0x42580000    # 54.0f

    mul-float v6, v0, v11

    .line 125
    if-eqz v8, :cond_1

    .line 126
    sget-object v0, Landroid/support/wearable/view/ProgressDrawable;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 127
    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v2, v11}, Landroid/support/wearable/view/ProgressDrawable;->lerpInv(FFF)F

    move-result v1

    .line 126
    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x43990000    # 306.0f

    mul-float v3, v1, v0

    .line 133
    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 136
    int-to-float v0, v9

    const v1, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    const/high16 v1, -0x3d4c0000    # -90.0f

    add-float/2addr v0, v1

    add-float/2addr v0, v6

    .line 137
    iget-object v1, p0, Landroid/support/wearable/view/ProgressDrawable;->mInnerCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 138
    iget-object v2, p0, Landroid/support/wearable/view/ProgressDrawable;->mInnerCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 135
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 139
    iget-object v1, p0, Landroid/support/wearable/view/ProgressDrawable;->mInnerCircleBounds:Landroid/graphics/RectF;

    .line 140
    if-eqz v8, :cond_2

    const/4 v2, 0x0

    .line 143
    :goto_2
    iget-object v5, p0, Landroid/support/wearable/view/ProgressDrawable;->mPaint:Landroid/graphics/Paint;

    .line 142
    const/4 v4, 0x0

    move-object v0, p1

    .line 139
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 106
    return-void

    .line 122
    .local v8, "growing":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 129
    .local v8, "growing":Z
    :cond_1
    sget-object v0, Landroid/support/wearable/view/ProgressDrawable;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 130
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v11}, Landroid/support/wearable/view/ProgressDrawable;->lerpInv(FFF)F

    move-result v1

    .line 129
    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/high16 v1, 0x43990000    # 306.0f

    mul-float v3, v1, v0

    goto :goto_1

    .line 140
    :cond_2
    const/high16 v0, 0x43990000    # 306.0f

    sub-float v2, v0, v3

    goto :goto_2
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, -0x1

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 148
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 153
    return-void
.end method

.method public setRingColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 90
    iput p1, p0, Landroid/support/wearable/view/ProgressDrawable;->mCircleBorderColor:I

    .line 89
    return-void
.end method

.method public setRingWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 94
    iput p1, p0, Landroid/support/wearable/view/ProgressDrawable;->mCircleBorderWidth:F

    .line 93
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 97
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 101
    return-void
.end method
