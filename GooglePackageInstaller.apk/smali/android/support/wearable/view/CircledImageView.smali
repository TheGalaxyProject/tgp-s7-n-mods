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

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Landroid/support/wearable/view/CircledImageView;->ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/CircledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/CircledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const/16 v8, 0xa

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v7, p0, Landroid/support/wearable/view/CircledImageView;->mProgress:F

    iput-boolean v6, p0, Landroid/support/wearable/view/CircledImageView;->mCircleHidden:Z

    iput-boolean v6, p0, Landroid/support/wearable/view/CircledImageView;->mPressed:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateBounds:Landroid/graphics/Rect;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/support/wearable/view/CircledImageView;->mColorChangeAnimationDurationMs:J

    iput v7, p0, Landroid/support/wearable/view/CircledImageView;->mImageCirclePercentage:F

    iput v4, p0, Landroid/support/wearable/view/CircledImageView;->mImageHorizontalOffcenterPercentage:F

    new-instance v2, Landroid/support/wearable/view/CircledImageView$1;

    invoke-direct {v2, p0}, Landroid/support/wearable/view/CircledImageView$1;-><init>(Landroid/support/wearable/view/CircledImageView;)V

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    new-instance v2, Landroid/support/wearable/view/CircledImageView$2;

    invoke-direct {v2, p0}, Landroid/support/wearable/view/CircledImageView$2;-><init>(Landroid/support/wearable/view/CircledImageView;)V

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/packageinstaller/R$styleable;->CircledImageView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_0

    const/high16 v2, 0x1060000

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mInitialCircleRadius:F

    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressed:F

    const/4 v2, 0x5

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderColor:I

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mRadiusInset:F

    iget v3, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    add-float/2addr v2, v3

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mRadiusInset:F

    :cond_1
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    cmpl-float v2, v1, v4

    if-lez v2, :cond_2

    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mRadiusInset:F

    add-float/2addr v2, v1

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mRadiusInset:F

    :cond_2
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mShadowWidth:F

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mImageCirclePercentage:F

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mImageHorizontalOffcenterPercentage:F

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mImageTint:Ljava/lang/Integer;

    :cond_3
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v5, v5, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPercent:F

    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPercent:F

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v5, v5, v2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressedPercent:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v2, Landroid/support/wearable/view/ProgressDrawable;

    invoke-direct {v2}, Landroid/support/wearable/view/ProgressDrawable;-><init>()V

    iput-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    iget-object v3, p0, Landroid/support/wearable/view/CircledImageView;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v2, v3}, Landroid/support/wearable/view/ProgressDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0, v6}, Landroid/support/wearable/view/CircledImageView;->setWillNotDraw(Z)V

    invoke-direct {p0}, Landroid/support/wearable/view/CircledImageView;->setColorForCurrentState()V

    return-void
.end method

.method private setColorForCurrentState()V
    .locals 6

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getDrawableState()[I

    move-result-object v2

    iget-object v3, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-wide v2, p0, Landroid/support/wearable/view/CircledImageView;->mColorChangeAnimationDurationMs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p0, Landroid/support/wearable/view/CircledImageView;->mCurrentColor:I

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Landroid/support/wearable/view/CircledImageView;->ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Landroid/support/wearable/view/CircledImageView;->mColorChangeAnimationDurationMs:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mCurrentColor:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Landroid/support/wearable/view/CircledImageView;->mCurrentColor:I

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-direct {p0}, Landroid/support/wearable/view/CircledImageView;->setColorForCurrentState()V

    return-void
.end method

.method public getCircleRadius()F
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPercent:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPercent:F

    mul-float v0, v1, v2

    :cond_0
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mRadiusInset:F

    sub-float v1, v0, v1

    return v1
.end method

.method public getCircleRadiusPressed()F
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressed:F

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressed:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressedPercent:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressedPercent:F

    mul-float v0, v1, v2

    :cond_0
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mRadiusInset:F

    sub-float v1, v0, v1

    return v1
.end method

.method public getCircleRadiusPressedPercent()F
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressedPercent:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingTop()I

    move-result v15

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/wearable/view/CircledImageView;->mPressed:Z

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getCircleRadiusPressed()F

    move-result v13

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

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    add-float/2addr v1, v13

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/CircledImageView;->mShadowWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/wearable/view/CircledImageView;->mShadowVisibility:F

    mul-float/2addr v2, v3

    add-float v4, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

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

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

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

    const/high16 v5, -0x1000000

    const/4 v6, 0x0

    filled-new-array {v5, v6}, [I

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

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

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

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

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

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

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

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

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/wearable/view/CircledImageView;->mProgressIndeterminate:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/support/wearable/view/ProgressDrawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderColor:I

    invoke-virtual {v1, v2}, Landroid/support/wearable/view/ProgressDrawable;->setRingColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    invoke-virtual {v1, v2}, Landroid/support/wearable/view/ProgressDrawable;->setRingWidth(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/support/wearable/view/ProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/wearable/view/CircledImageView;->mCircleHidden:Z

    if-nez v1, :cond_2

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

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/wearable/view/CircledImageView;->mCurrentColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

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

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getAlpha()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mImageTint:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/wearable/view/CircledImageView;->mImageTint:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/CircledImageView;->getCircleRadius()F

    move-result v13

    goto/16 :goto_0

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

    nop

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    iget-object v10, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v10, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getMeasuredHeight()I

    move-result v8

    iget v10, p0, Landroid/support/wearable/view/CircledImageView;->mImageCirclePercentage:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    iget v4, p0, Landroid/support/wearable/view/CircledImageView;->mImageCirclePercentage:F

    :goto_0
    int-to-float v10, v6

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_2

    int-to-float v10, v9

    mul-float/2addr v10, v4

    int-to-float v11, v6

    div-float/2addr v10, v11

    move v11, v10

    :goto_1
    int-to-float v10, v5

    const/4 v12, 0x0

    cmpl-float v10, v10, v12

    if-eqz v10, :cond_3

    int-to-float v10, v8

    mul-float/2addr v10, v4

    int-to-float v12, v5

    div-float/2addr v10, v12

    :goto_2
    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    int-to-float v10, v6

    mul-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v10, v5

    mul-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v10, v9, v3

    div-int/lit8 v10, v10, 0x2

    iget v11, p0, Landroid/support/wearable/view/CircledImageView;->mImageHorizontalOffcenterPercentage:F

    int-to-float v12, v3

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int v1, v10, v11

    sub-int v10, v8, v0

    div-int/lit8 v2, v10, 0x2

    iget-object v10, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int v11, v1, v3

    add-int v12, v2, v0

    invoke-virtual {v10, v1, v2, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v10

    goto :goto_1

    :cond_3
    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 12

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getCircleRadius()F

    move-result v9

    iget v10, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    add-float/2addr v9, v10

    iget v10, p0, Landroid/support/wearable/view/CircledImageView;->mShadowWidth:F

    iget v11, p0, Landroid/support/wearable/view/CircledImageView;->mShadowVisibility:F

    mul-float/2addr v10, v11

    add-float v5, v9, v10

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v1, v5, v9

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v0, v5, v9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v7, v9, :cond_0

    move v6, v8

    :goto_0
    const/high16 v9, 0x40000000    # 2.0f

    if-ne v3, v9, :cond_2

    move v2, v4

    :goto_1
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-super {p0, v9, v10}, Landroid/view/View;->onMeasure(II)V

    return-void

    :cond_0
    const/high16 v9, -0x80000000

    if-ne v7, v9, :cond_1

    int-to-float v9, v8

    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v6, v9

    goto :goto_0

    :cond_1
    float-to-int v6, v1

    goto :goto_0

    :cond_2
    const/high16 v9, -0x80000000

    if-ne v3, v9, :cond_3

    int-to-float v9, v4

    invoke-static {v0, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v2, v9

    goto :goto_1

    :cond_3
    float-to-int v2, v0

    goto :goto_1
.end method

.method protected onSetAlpha(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/CircledImageView;->showIndeterminateProgress(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/support/wearable/view/CircledImageView;->mProgressIndeterminate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/CircledImageView;->showIndeterminateProgress(Z)V

    goto :goto_0
.end method

.method public setCircleRadiusPercent(F)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPercent:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPercent:F

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCircleRadiusPressedPercent(F)V
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressedPercent:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressedPercent:F

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v3, :cond_1

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    :cond_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->requestLayout()V

    goto :goto_1
.end method

.method public setImageResource(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/CircledImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    iget-boolean v0, p0, Landroid/support/wearable/view/CircledImageView;->mPressed:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroid/support/wearable/view/CircledImageView;->mPressed:Z

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public showIndeterminateProgress(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/support/wearable/view/CircledImageView;->mProgressIndeterminate:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    invoke-virtual {v0}, Landroid/support/wearable/view/ProgressDrawable;->startAnimation()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    invoke-virtual {v0}, Landroid/support/wearable/view/ProgressDrawable;->stopAnimation()V

    goto :goto_0
.end method
