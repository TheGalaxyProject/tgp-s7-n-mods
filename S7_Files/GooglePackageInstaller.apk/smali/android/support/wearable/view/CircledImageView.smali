.class public Landroid/support/wearable/view/CircledImageView;
.super Landroid/view/View;
.source "CircledImageView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/view/CircledImageView$1;,
        Landroid/support/wearable/view/CircledImageView$2;
    }
.end annotation


# static fields
.field private static final ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;


# instance fields
.field private final mAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mCircleBorderColor:I

.field private mCircleBorderWidth:F

.field private mCircleColor:Landroid/content/res/ColorStateList;

.field private mCircleHidden:Z

.field private mCircleRadius:F

.field private mCircleRadiusPercent:F

.field private mCircleRadiusPressed:F

.field private mCircleRadiusPressedPercent:F

.field private mColorAnimator:Landroid/animation/ValueAnimator;

.field private mColorChangeAnimationDurationMs:J

.field private mCurrentColor:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mImageCirclePercentage:F

.field private mImageHorizontalOffcenterPercentage:F

.field private mImageTint:Ljava/lang/Integer;

.field private mIndeterminateBounds:Landroid/graphics/Rect;

.field private mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

.field private mInitialCircleRadius:F

.field private final mOval:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field private mProgress:F

.field private mProgressIndeterminate:Z

.field private mRadiusInset:F

.field private mShadowVisibility:F

.field private final mShadowWidth:F


# direct methods
.method static synthetic -get0(Landroid/support/wearable/view/CircledImageView;)I
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mCurrentColor:I

    return v0
.end method

.method static synthetic -set0(Landroid/support/wearable/view/CircledImageView;I)I
    .locals 0

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->mCurrentColor:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Landroid/support/wearable/view/CircledImageView;->ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/CircledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/CircledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v8, 0xa

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    iput v7, p0, Landroid/support/wearable/view/CircledImageView;->mProgress:F

    .line 74
    iput-boolean v6, p0, Landroid/support/wearable/view/CircledImageView;->mCircleHidden:Z

    .line 78
    iput-boolean v6, p0, Landroid/support/wearable/view/CircledImageView;->mPressed:Z

    .line 82
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateBounds:Landroid/graphics/Rect;

    .line 83
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/support/wearable/view/CircledImageView;->mColorChangeAnimationDurationMs:J

    .line 85
    iput v7, p0, Landroid/support/wearable/view/CircledImageView;->mImageCirclePercentage:F

    .line 86
    iput v4, p0, Landroid/support/wearable/view/CircledImageView;->mImageHorizontalOffcenterPercentage:F

    .line 89
    new-instance v2, Landroid/support/wearable/view/CircledImageView$1;

    invoke-direct {v2, p0}, Landroid/support/wearable/view/CircledImageView$1;-><init>(Landroid/support/wearable/view/CircledImageView;)V

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 108
    new-instance v2, Landroid/support/wearable/view/CircledImageView$2;

    invoke-direct {v2, p0}, Landroid/support/wearable/view/CircledImageView$2;-><init>(Landroid/support/wearable/view/CircledImageView;)V

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 132
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/packageinstaller/R$styleable;->CircledImageView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 133
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 135
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    .line 136
    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_0

    .line 137
    const/high16 v2, 0x1060000

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    .line 141
    :cond_0
    const/4 v2, 0x2

    .line 140
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    .line 142
    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mInitialCircleRadius:F

    .line 144
    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    const/4 v3, 0x3

    .line 143
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressed:F

    .line 146
    const/4 v2, 0x5

    const/high16 v3, -0x1000000

    .line 145
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderColor:I

    .line 147
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    .line 149
    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 150
    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mRadiusInset:F

    iget v3, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    add-float/2addr v2, v3

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mRadiusInset:F

    .line 153
    :cond_1
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 154
    .local v1, "circlePadding":F
    cmpl-float v2, v1, v4

    if-lez v2, :cond_2

    .line 155
    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mRadiusInset:F

    add-float/2addr v2, v1

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mRadiusInset:F

    .line 157
    :cond_2
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mShadowWidth:F

    .line 160
    const/16 v2, 0x8

    .line 159
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mImageCirclePercentage:F

    .line 163
    const/16 v2, 0x9

    .line 162
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mImageHorizontalOffcenterPercentage:F

    .line 165
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 166
    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mImageTint:Ljava/lang/Integer;

    .line 169
    :cond_3
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPercent:F

    .line 174
    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPercent:F

    .line 173
    const/16 v3, 0xc

    .line 172
    invoke-virtual {v0, v3, v5, v5, v2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressedPercent:F

    .line 176
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 178
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    .line 179
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    .line 180
    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    new-instance v2, Landroid/support/wearable/view/ProgressDrawable;

    invoke-direct {v2}, Landroid/support/wearable/view/ProgressDrawable;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    .line 185
    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    iget-object v3, p0, Landroid/support/wearable/view/CircledImageView;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v2, v3}, Landroid/support/wearable/view/ProgressDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 187
    invoke-virtual {p0, v6}, Landroid/support/wearable/view/CircledImageView;->setWillNotDraw(Z)V

    .line 189
    invoke-direct {p0}, Landroid/support/wearable/view/CircledImageView;->setColorForCurrentState()V

    .line 129
    return-void
.end method

.method private setColorForCurrentState()V
    .locals 6

    .prologue
    .line 282
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getDrawableState()[I

    move-result-object v2

    .line 283
    iget-object v3, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    .line 282
    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 284
    .local v0, "newColor":I
    iget-wide v2, p0, Landroid/support/wearable/view/CircledImageView;->mColorChangeAnimationDurationMs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 285
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 290
    :goto_0
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 291
    iget v3, p0, Landroid/support/wearable/view/CircledImageView;->mCurrentColor:I

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v0, v2, v3

    .line 290
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 292
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Landroid/support/wearable/view/CircledImageView;->ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 293
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Landroid/support/wearable/view/CircledImageView;->mColorChangeAnimationDurationMs:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 294
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 295
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 281
    :cond_0
    :goto_1
    return-void

    .line 288
    :cond_1
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 297
    :cond_2
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mCurrentColor:I

    if-eq v0, v1, :cond_0

    .line 298
    iput v0, p0, Landroid/support/wearable/view/CircledImageView;->mCurrentColor:I

    .line 299
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 489
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 490
    invoke-direct {p0}, Landroid/support/wearable/view/CircledImageView;->setColorForCurrentState()V

    .line 488
    return-void
.end method

.method public getCircleRadius()F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 422
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    .line 423
    .local v0, "radius":F
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPercent:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 424
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPercent:F

    mul-float v0, v1, v2

    .line 427
    :cond_0
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mRadiusInset:F

    sub-float v1, v0, v1

    return v1
.end method

.method public getCircleRadiusPressed()F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 435
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressed:F

    .line 437
    .local v0, "radius":F
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressed:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressedPercent:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 438
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 439
    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressedPercent:F

    .line 438
    mul-float v0, v1, v2

    .line 442
    :cond_0
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mRadiusInset:F

    sub-float v1, v0, v1

    return v1
.end method

.method public getCircleRadiusPressedPercent()F
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressedPercent:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 207
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingLeft()I

    move-result v14

    .line 208
    .local v14, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingTop()I

    move-result v15

    .line 211
    .local v15, "paddingTop":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/wearable/view/CircledImageView;->mPressed:Z

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getCircleRadiusPressed()F

    move-result v13

    .line 212
    .local v13, "circleRadius":F
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/wearable/view/CircledImageView;->mShadowWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/wearable/view/CircledImageView;->mShadowVisibility:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    int-to-float v2, v14

    int-to-float v3, v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 214
    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 218
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    add-float/2addr v1, v13

    .line 219
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/CircledImageView;->mShadowWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/wearable/view/CircledImageView;->mShadowVisibility:F

    mul-float/2addr v2, v3

    .line 218
    add-float v4, v1, v2

    .line 220
    .local v4, "radius":F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getAlpha()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RadialGradient;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 225
    const/high16 v5, -0x1000000

    const/4 v6, 0x0

    filled-new-array {v5, v6}, [I

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    .line 226
    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 224
    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 230
    .end local v4    # "radius":F
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    int-to-float v2, v14

    int-to-float v3, v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 233
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 232
    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v2, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v3, v13

    .line 236
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    add-float/2addr v5, v13

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    add-float/2addr v6, v13

    .line 235
    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getAlpha()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 244
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/wearable/view/CircledImageView;->mProgressIndeterminate:Z

    if-eqz v1, :cond_6

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/support/wearable/view/ProgressDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderColor:I

    invoke-virtual {v1, v2}, Landroid/support/wearable/view/ProgressDrawable;->setRingColor(I)V

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    invoke-virtual {v1, v2}, Landroid/support/wearable/view/ProgressDrawable;->setRingWidth(F)V

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/support/wearable/view/ProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 254
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/wearable/view/CircledImageView;->mCircleHidden:Z

    if-nez v1, :cond_2

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    int-to-float v2, v14

    int-to-float v3, v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 256
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 255
    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/CircledImageView;->mCurrentColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getAlpha()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    .line 264
    .local v11, "centerX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    .line 266
    .local v12, "centerY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 269
    .end local v11    # "centerX":F
    .end local v12    # "centerY":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getAlpha()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mImageTint:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CircledImageView;->mImageTint:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 275
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 278
    :cond_4
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 206
    return-void

    .line 211
    .end local v13    # "circleRadius":F
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getCircleRadius()F

    move-result v13

    .restart local v13    # "circleRadius":F
    goto/16 :goto_0

    .line 251
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    const/high16 v7, -0x3d4c0000    # -90.0f

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/wearable/view/CircledImageView;->mProgress:F

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v8, v2, v1

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 225
    nop

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 342
    iget-object v10, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_0

    .line 344
    iget-object v10, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 345
    .local v6, "nativeDrawableWidth":I
    iget-object v10, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 346
    .local v5, "nativeDrawableHeight":I
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getMeasuredWidth()I

    move-result v9

    .line 347
    .local v9, "viewWidth":I
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getMeasuredHeight()I

    move-result v8

    .line 348
    .local v8, "viewHeight":I
    iget v10, p0, Landroid/support/wearable/view/CircledImageView;->mImageCirclePercentage:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    .line 349
    iget v4, p0, Landroid/support/wearable/view/CircledImageView;->mImageCirclePercentage:F

    .line 353
    .local v4, "imageCirclePercentage":F
    :goto_0
    int-to-float v10, v6

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_2

    .line 354
    int-to-float v10, v9

    mul-float/2addr v10, v4

    int-to-float v11, v6

    div-float/2addr v10, v11

    move v11, v10

    .line 355
    :goto_1
    int-to-float v10, v5

    const/4 v12, 0x0

    cmpl-float v10, v10, v12

    if-eqz v10, :cond_3

    .line 357
    int-to-float v10, v8

    .line 356
    mul-float/2addr v10, v4

    .line 357
    int-to-float v12, v5

    .line 356
    div-float/2addr v10, v12

    .line 352
    :goto_2
    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 351
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 360
    .local v7, "scaleFactor":F
    int-to-float v10, v6

    mul-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 361
    .local v3, "drawableWidth":I
    int-to-float v10, v5

    mul-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 364
    .local v0, "drawableHeight":I
    sub-int v10, v9, v3

    div-int/lit8 v10, v10, 0x2

    .line 365
    iget v11, p0, Landroid/support/wearable/view/CircledImageView;->mImageHorizontalOffcenterPercentage:F

    int-to-float v12, v3

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 364
    add-int v1, v10, v11

    .line 366
    .local v1, "drawableLeft":I
    sub-int v10, v8, v0

    div-int/lit8 v2, v10, 0x2

    .line 368
    .local v2, "drawableTop":I
    iget-object v10, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int v11, v1, v3

    .line 369
    add-int v12, v2, v0

    .line 368
    invoke-virtual {v10, v1, v2, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 372
    .end local v0    # "drawableHeight":I
    .end local v1    # "drawableLeft":I
    .end local v2    # "drawableTop":I
    .end local v3    # "drawableWidth":I
    .end local v4    # "imageCirclePercentage":F
    .end local v5    # "nativeDrawableHeight":I
    .end local v6    # "nativeDrawableWidth":I
    .end local v7    # "scaleFactor":F
    .end local v8    # "viewHeight":I
    .end local v9    # "viewWidth":I
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 341
    return-void

    .line 349
    .restart local v5    # "nativeDrawableHeight":I
    .restart local v6    # "nativeDrawableWidth":I
    .restart local v8    # "viewHeight":I
    .restart local v9    # "viewWidth":I
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "imageCirclePercentage":F
    goto :goto_0

    .line 354
    :cond_2
    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v10

    goto :goto_1

    .line 357
    :cond_3
    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 307
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getCircleRadius()F

    move-result v9

    iget v10, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    add-float/2addr v9, v10

    .line 308
    iget v10, p0, Landroid/support/wearable/view/CircledImageView;->mShadowWidth:F

    iget v11, p0, Landroid/support/wearable/view/CircledImageView;->mShadowVisibility:F

    mul-float/2addr v10, v11

    .line 307
    add-float v5, v9, v10

    .line 309
    .local v5, "radius":F
    const/high16 v9, 0x40000000    # 2.0f

    mul-float v1, v5, v9

    .line 310
    .local v1, "desiredWidth":F
    const/high16 v9, 0x40000000    # 2.0f

    mul-float v0, v5, v9

    .line 312
    .local v0, "desiredHeight":F
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 313
    .local v7, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 314
    .local v8, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 315
    .local v3, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 320
    .local v4, "heightSize":I
    const/high16 v9, 0x40000000    # 2.0f

    if-ne v7, v9, :cond_0

    .line 321
    move v6, v8

    .line 328
    .local v6, "width":I
    :goto_0
    const/high16 v9, 0x40000000    # 2.0f

    if-ne v3, v9, :cond_2

    .line 329
    move v2, v4

    .line 336
    .local v2, "height":I
    :goto_1
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 337
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 336
    invoke-super {p0, v9, v10}, Landroid/view/View;->onMeasure(II)V

    .line 305
    return-void

    .line 322
    .end local v2    # "height":I
    .end local v6    # "width":I
    :cond_0
    const/high16 v9, -0x80000000

    if-ne v7, v9, :cond_1

    .line 323
    int-to-float v9, v8

    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v6, v9

    .restart local v6    # "width":I
    goto :goto_0

    .line 325
    .end local v6    # "width":I
    :cond_1
    float-to-int v6, v1

    .restart local v6    # "width":I
    goto :goto_0

    .line 330
    :cond_2
    const/high16 v9, -0x80000000

    if-ne v3, v9, :cond_3

    .line 331
    int-to-float v9, v4

    invoke-static {v0, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v2, v9

    .restart local v2    # "height":I
    goto :goto_1

    .line 333
    .end local v2    # "height":I
    :cond_3
    float-to-int v2, v0

    .restart local v2    # "height":I
    goto :goto_1
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v0, 0x0

    .line 530
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 531
    if-eqz p2, :cond_1

    .line 532
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/CircledImageView;->showIndeterminateProgress(Z)V

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    iget-boolean v0, p0, Landroid/support/wearable/view/CircledImageView;->mProgressIndeterminate:Z

    if-eqz v0, :cond_0

    .line 534
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/CircledImageView;->showIndeterminateProgress(Z)V

    goto :goto_0
.end method

.method public setCircleRadiusPercent(F)V
    .locals 1
    .param p1, "circleRadiusPercent"    # F

    .prologue
    .line 461
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPercent:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 462
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPercent:F

    .line 463
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 460
    :cond_0
    return-void
.end method

.method public setCircleRadiusPressedPercent(F)V
    .locals 1
    .param p1, "circleRadiusPressedPercent"    # F

    .prologue
    .line 481
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressedPercent:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 482
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressedPercent:F

    .line 483
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 480
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 376
    iget-object v3, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v3, :cond_1

    .line 377
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 378
    .local v0, "existingDrawable":Landroid/graphics/drawable/Drawable;
    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 380
    if-eqz p1, :cond_2

    .line 381
    if-eqz v0, :cond_2

    .line 382
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 383
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v1, v2

    .line 385
    .local v1, "skipLayout":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 386
    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 391
    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 375
    .end local v0    # "existingDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "skipLayout":Z
    :cond_1
    return-void

    .restart local v0    # "existingDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    move v1, v2

    .line 380
    goto :goto_0

    .line 388
    .restart local v1    # "skipLayout":Z
    :cond_3
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->requestLayout()V

    goto :goto_1
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 396
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/CircledImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    return-void

    .line 396
    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 577
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 578
    iget-boolean v0, p0, Landroid/support/wearable/view/CircledImageView;->mPressed:Z

    if-eq p1, v0, :cond_0

    .line 579
    iput-boolean p1, p0, Landroid/support/wearable/view/CircledImageView;->mPressed:Z

    .line 580
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 576
    :cond_0
    return-void
.end method

.method public showIndeterminateProgress(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 520
    iput-boolean p1, p0, Landroid/support/wearable/view/CircledImageView;->mProgressIndeterminate:Z

    .line 521
    if-eqz p1, :cond_0

    .line 522
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    invoke-virtual {v0}, Landroid/support/wearable/view/ProgressDrawable;->startAnimation()V

    .line 519
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    invoke-virtual {v0}, Landroid/support/wearable/view/ProgressDrawable;->stopAnimation()V

    goto :goto_0
.end method
