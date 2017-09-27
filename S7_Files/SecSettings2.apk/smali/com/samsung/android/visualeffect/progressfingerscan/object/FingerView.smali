.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;
.super Landroid/view/View;
.source "FingerView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private currentPercent:F

.field private greyColor:I

.field private height:I

.field private maxOvalHeight:F

.field private maxOvalWidth:F

.field private maxXRatio:F

.field private maxYRatio:F

.field private paint:Landroid/graphics/Paint;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "fingerColor"    # I
    .param p5, "greyColor"    # I

    .prologue
    const/4 v3, 0x1

    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->currentPercent:F

    const v1, 0x3eeca37f

    .line 19
    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->maxXRatio:F

    const v1, 0x3f49c5fd

    .line 20
    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->maxYRatio:F

    .line 27
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 31
    :goto_0
    iput p5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->greyColor:I

    .line 32
    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->width:I

    .line 33
    iput p3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->height:I

    .line 34
    int-to-float v1, p3

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->maxYRatio:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->maxOvalHeight:F

    .line 35
    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->maxOvalHeight:F

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->maxOvalWidth:F

    .line 37
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->paint:Landroid/graphics/Paint;

    .line 38
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x41700000    # 15.0f

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 41
    .local v0, "blur":Landroid/graphics/BlurMaskFilter;
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 42
    return-void

    .end local v0    # "blur":Landroid/graphics/BlurMaskFilter;
    :cond_0
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 56
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->greyColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 58
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->currentPercent:F

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_0

    .line 59
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->width:I

    int-to-float v0, v0

    iget v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->maxOvalWidth:F

    iget v6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->currentPercent:F

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    div-float v1, v0, v7

    .line 60
    .local v1, "left":F
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->height:I

    int-to-float v0, v0

    iget v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->maxOvalHeight:F

    iget v6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->currentPercent:F

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    div-float v2, v0, v7

    .line 61
    .local v2, "top":F
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->width:I

    int-to-float v0, v0

    sub-float v3, v0, v1

    .line 62
    .local v3, "right":F
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->height:I

    int-to-float v0, v0

    sub-float v4, v0, v2

    .line 64
    .local v4, "bottom":F
    iget-object v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 66
    .end local v1    # "left":F
    .end local v2    # "top":F
    .end local v3    # "right":F
    .end local v4    # "bottom":F
    :cond_0
    return-void
.end method

.method public setPaintAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 51
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->width:I

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->height:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->invalidate(IIII)V

    .line 52
    return-void
.end method

.method public setPercent(F)V
    .locals 3
    .param p1, "percent"    # F

    .prologue
    const/4 v2, 0x0

    .line 45
    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->currentPercent:F

    .line 46
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->width:I

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->height:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->invalidate(IIII)V

    .line 47
    return-void
.end method
