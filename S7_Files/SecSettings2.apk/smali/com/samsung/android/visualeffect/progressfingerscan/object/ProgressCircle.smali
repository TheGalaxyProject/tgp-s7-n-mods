.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;
.super Landroid/view/View;
.source "ProgressCircle.java"


# instance fields
.field private final ALPHA_DELAY:I

.field private final ALPHA_DURATION:I

.field private final GRADIENT_COLORS:[I

.field private final PROGRESS_DURATION:I

.field private currentPercent:F

.field private greyPaint:Landroid/graphics/Paint;

.field private halfStrokeWidth:F

.field private height:I

.field private paint:Landroid/graphics/Paint;

.field private previousPercent:F

.field private progressAnimator:Landroid/animation/ValueAnimator;

.field private radius:F

.field private strokeWidth:F

.field private targetPercent:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIII)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "progressColor"    # I
    .param p5, "greyColor"    # I
    .param p6, "strokeWidth"    # I

    .prologue
    const/16 v0, 0x1f4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14
    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->PROGRESS_DURATION:I

    .line 15
    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->ALPHA_DURATION:I

    const/16 v0, 0x12c

    .line 16
    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->ALPHA_DELAY:I

    const/4 v0, 0x3

    .line 17
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0xfe392b

    aput v2, v0, v1

    const v1, -0xfef774

    aput v1, v0, v4

    const/4 v1, 0x2

    const v2, -0x7e8501

    aput v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->GRADIENT_COLORS:[I

    .line 24
    iput v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->targetPercent:F

    .line 25
    iput v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->currentPercent:F

    .line 26
    iput v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->previousPercent:F

    .line 35
    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->width:I

    .line 36
    iput p3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->height:I

    .line 37
    int-to-float v0, p6

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->strokeWidth:F

    .line 38
    div-int/lit8 v0, p6, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->halfStrokeWidth:F

    .line 39
    sub-int v0, p2, p6

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->radius:F

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->paint:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->paint:Landroid/graphics/Paint;

    int-to-float v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->greyPaint:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->greyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->greyPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->greyPaint:Landroid/graphics/Paint;

    int-to-float v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->greyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->setAnimator()V

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;
    .param p1, "x1"    # F

    .prologue
    .line 12
    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->currentPercent:F

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;

    .prologue
    .line 12
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->previousPercent:F

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;

    .prologue
    .line 12
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->targetPercent:F

    return v0
.end method

.method private setAnimator()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    .line 58
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->progressAnimator:Landroid/animation/ValueAnimator;

    .line 59
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->progressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 60
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/CubicEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/CubicEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle$1;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 69
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->currentPercent:F

    const v1, 0x40666666    # 3.6f

    mul-float v6, v1, v0

    .line 90
    .local v6, "angle":F
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->width:I

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->height:I

    if-eq v0, v1, :cond_0

    .line 93
    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->halfStrokeWidth:F

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->halfStrokeWidth:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->width:I

    int-to-float v0, v0

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->halfStrokeWidth:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->height:I

    int-to-float v0, v0

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->halfStrokeWidth:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->greyPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 95
    :goto_0
    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->halfStrokeWidth:F

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->halfStrokeWidth:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->width:I

    int-to-float v0, v0

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->halfStrokeWidth:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->height:I

    int-to-float v0, v0

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->halfStrokeWidth:F

    sub-float v4, v0, v4

    const/high16 v5, -0x3d4c0000    # -90.0f

    iget-object v8, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->paint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 96
    return-void

    .line 91
    :cond_0
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->width:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->height:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->radius:F

    iget-object v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->greyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setPercent(F)V
    .locals 4
    .param p1, "percent"    # F

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 73
    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->targetPercent:F

    .line 74
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->currentPercent:F

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->previousPercent:F

    .line 75
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 77
    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 81
    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->setAlpha(F)V

    goto :goto_0
.end method
