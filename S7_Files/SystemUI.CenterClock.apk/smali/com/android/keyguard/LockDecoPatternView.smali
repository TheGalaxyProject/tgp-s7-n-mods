.class public Lcom/android/keyguard/LockDecoPatternView;
.super Lcom/android/internal/widget/LockPatternView;
.source "LockDecoPatternView.java"


# instance fields
.field private mBitmapError:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapRegular:Landroid/graphics/Bitmap;

.field private mBitmapSuccess:Landroid/graphics/Bitmap;

.field private mBitmapWidth:I

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private mDecoPatternEnabled:Z

.field private mDiameterFactor:F

.field private mIsWhiteWp:Z

.field private final offsetForCircleLineInvalidateRect:I

.field private sx:F

.field private sy:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/LockDecoPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-boolean v2, p0, Lcom/android/keyguard/LockDecoPatternView;->mDecoPatternEnabled:Z

    .line 56
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/LockDecoPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 57
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/keyguard/LockDecoPatternView;->mDiameterFactor:F

    .line 58
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/keyguard/LockDecoPatternView;->offsetForCircleLineInvalidateRect:I

    .line 59
    iput v1, p0, Lcom/android/keyguard/LockDecoPatternView;->sx:F

    .line 60
    iput v1, p0, Lcom/android/keyguard/LockDecoPatternView;->sy:F

    .line 61
    iput-boolean v2, p0, Lcom/android/keyguard/LockDecoPatternView;->mIsWhiteWp:Z

    .line 69
    const-string/jumbo v0, "LockDecoPatternView"

    const-string/jumbo v1, "LockDecoPatternView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZII)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "leftX"    # I
    .param p3, "topY"    # I
    .param p4, "partOfPattern"    # Z
    .param p5, "i"    # I
    .param p6, "j"    # I

    .prologue
    .line 157
    if-eqz p4, :cond_0

    iget-boolean v7, p0, Lcom/android/keyguard/LockDecoPatternView;->mInStealthMode:Z

    if-eqz v7, :cond_2

    .line 159
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapRegular:Landroid/graphics/Bitmap;

    .line 174
    .local v3, "outerCircle":Landroid/graphics/Bitmap;
    :goto_0
    iget v6, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapWidth:I

    .line 175
    .local v6, "width":I
    iget v0, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapHeight:I

    .line 177
    .local v0, "height":I
    iget v5, p0, Lcom/android/keyguard/LockDecoPatternView;->mSquareWidth:F

    .line 178
    .local v5, "squareWidth":F
    iget v4, p0, Lcom/android/keyguard/LockDecoPatternView;->mSquareHeight:F

    .line 180
    .local v4, "squareHeight":F
    int-to-float v7, v6

    sub-float v7, v5, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-int v1, v7

    .line 181
    .local v1, "offsetX":I
    int-to-float v7, v0

    sub-float v7, v4, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-int v2, v7

    .line 183
    .local v2, "offsetY":I
    iget v7, p0, Lcom/android/keyguard/LockDecoPatternView;->mSquareWidth:F

    iget v8, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, p0, Lcom/android/keyguard/LockDecoPatternView;->sx:F

    .line 184
    iget v7, p0, Lcom/android/keyguard/LockDecoPatternView;->mSquareHeight:F

    iget v8, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, p0, Lcom/android/keyguard/LockDecoPatternView;->sy:F

    .line 186
    iget-object v7, p0, Lcom/android/keyguard/LockDecoPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int v8, p2, v1

    int-to-float v8, v8

    add-int v9, p3, v2

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 187
    iget-object v7, p0, Lcom/android/keyguard/LockDecoPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget v9, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapHeight:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 188
    iget-object v7, p0, Lcom/android/keyguard/LockDecoPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/android/keyguard/LockDecoPatternView;->sx:F

    iget v9, p0, Lcom/android/keyguard/LockDecoPatternView;->sy:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 189
    iget-object v7, p0, Lcom/android/keyguard/LockDecoPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapWidth:I

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget v9, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapHeight:I

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 191
    if-eqz v3, :cond_1

    .line 192
    iget-object v7, p0, Lcom/android/keyguard/LockDecoPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/android/keyguard/LockDecoPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 154
    :cond_1
    return-void

    .line 160
    .end local v0    # "height":I
    .end local v1    # "offsetX":I
    .end local v2    # "offsetY":I
    .end local v3    # "outerCircle":Landroid/graphics/Bitmap;
    .end local v4    # "squareHeight":F
    .end local v5    # "squareWidth":F
    .end local v6    # "width":I
    :cond_2
    iget-boolean v7, p0, Lcom/android/keyguard/LockDecoPatternView;->mPatternInProgress:Z

    if-eqz v7, :cond_3

    .line 162
    iget-object v3, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    .restart local v3    # "outerCircle":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 163
    .end local v3    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v7, p0, Lcom/android/keyguard/LockDecoPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v7, v8, :cond_4

    .line 165
    iget-object v3, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapError:Landroid/graphics/Bitmap;

    .restart local v3    # "outerCircle":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 166
    .end local v3    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v7, p0, Lcom/android/keyguard/LockDecoPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v7, v8, :cond_5

    .line 167
    iget-object v7, p0, Lcom/android/keyguard/LockDecoPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v7, v8, :cond_6

    .line 169
    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    .restart local v3    # "outerCircle":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 171
    .end local v3    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_6
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unknown display mode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/LockDecoPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private getLineRadius()F
    .locals 2

    .prologue
    .line 364
    iget v0, p0, Lcom/android/keyguard/LockDecoPatternView;->mSquareWidth:F

    iget v1, p0, Lcom/android/keyguard/LockDecoPatternView;->mDiameterFactor:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method private getScaledBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/keyguard/LockDecoPatternView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 74
    .local v1, "orgBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/keyguard/LockDecoPatternView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->theme_keyguard_pattern_dot_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 76
    .local v0, "dot_size":I
    const/4 v2, 0x1

    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private hasDecoPatternResources()Z
    .locals 2

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/android/keyguard/LockDecoPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->theme_use_pattern_normal_image:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/android/keyguard/LockDecoPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->theme_use_pattern_success_image:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 392
    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/android/keyguard/LockDecoPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->theme_use_pattern_failed_image:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 392
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDecoPatternResources()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 368
    invoke-direct {p0}, Lcom/android/keyguard/LockDecoPatternView;->hasDecoPatternResources()Z

    move-result v2

    .line 369
    .local v2, "hasResource":Z
    const-string/jumbo v3, "LockDecoPatternView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadDecoPatternResources() hasResource="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    if-nez v2, :cond_0

    .line 371
    return v4

    .line 374
    :cond_0
    sget v3, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_holo:I

    invoke-direct {p0, v3}, Lcom/android/keyguard/LockDecoPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapRegular:Landroid/graphics/Bitmap;

    .line 375
    sget v3, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_holo:I

    invoke-direct {p0, v3}, Lcom/android/keyguard/LockDecoPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapError:Landroid/graphics/Bitmap;

    .line 376
    sget v3, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_holo:I

    invoke-direct {p0, v3}, Lcom/android/keyguard/LockDecoPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    .line 379
    const/4 v3, 0x3

    new-array v1, v3, [Landroid/graphics/Bitmap;

    .line 380
    iget-object v3, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapRegular:Landroid/graphics/Bitmap;

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapError:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 383
    .local v1, "bitmaps":[Landroid/graphics/Bitmap;
    array-length v6, v1

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v0, v1, v5

    .line 384
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v7, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapWidth:I

    if-nez v0, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapWidth:I

    .line 385
    iget v7, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapHeight:I

    if-nez v0, :cond_2

    move v3, v4

    :goto_2
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/LockDecoPatternView;->mBitmapHeight:I

    .line 383
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    goto :goto_1

    .line 385
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    goto :goto_2

    .line 388
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    return v2
.end method


# virtual methods
.method protected addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 0
    .param p1, "newCell"    # Lcom/android/internal/widget/LockPatternView$Cell;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 80
    return-void
.end method

.method protected handleActionMove(Landroid/view/MotionEvent;)V
    .locals 30
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 86
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mDecoPatternEnabled:Z

    move/from16 v25, v0

    if-nez v25, :cond_1

    .line 87
    invoke-super/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/LockDecoPatternView;->getLineRadius()F

    move-result v19

    .line 93
    .local v19, "radius":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    .line 94
    .local v7, "historySize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->setEmpty()V

    .line 95
    const/4 v12, 0x0

    .line 96
    .local v12, "invalidateNow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    add-int/lit8 v25, v7, 0x1

    move/from16 v0, v25

    if-ge v11, v0, :cond_9

    .line 97
    if-ge v11, v7, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v23

    .line 98
    .local v23, "x":F
    :goto_2
    if-ge v11, v7, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v24

    .line 99
    .local v24, "y":F
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/LockDecoPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v8

    .line 100
    .local v8, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 101
    .local v18, "patternSize":I
    if-eqz v8, :cond_2

    const/16 v25, 0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 102
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/LockDecoPatternView;->mPatternInProgress:Z

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/LockDecoPatternView;->notifyPatternStarted()V

    .line 106
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mInProgressX:F

    move/from16 v25, v0

    sub-float v25, v23, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 107
    .local v4, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mInProgressY:F

    move/from16 v25, v0

    sub-float v25, v24, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 108
    .local v5, "dy":F
    const/16 v25, 0x0

    cmpl-float v25, v4, v25

    if-gtz v25, :cond_3

    const/16 v25, 0x0

    cmpl-float v25, v5, v25

    if-lez v25, :cond_4

    .line 109
    :cond_3
    const/4 v12, 0x1

    .line 112
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mPatternInProgress:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    if-lez v18, :cond_6

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 114
    .local v17, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    add-int/lit8 v25, v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 115
    .local v13, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/LockDecoPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 116
    .local v14, "lastCellCenterX":F
    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/LockDecoPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 119
    .local v15, "lastCellCenterY":F
    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v25, v25, v19

    const/high16 v26, 0x41a00000    # 20.0f

    sub-float v16, v25, v26

    .line 120
    .local v16, "left":F
    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v25, v25, v19

    const/high16 v26, 0x41a00000    # 20.0f

    add-float v20, v25, v26

    .line 121
    .local v20, "right":F
    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v25, v25, v19

    const/high16 v26, 0x41a00000    # 20.0f

    sub-float v21, v25, v26

    .line 122
    .local v21, "top":F
    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v25, v25, v19

    const/high16 v26, 0x41a00000    # 20.0f

    add-float v3, v25, v26

    .line 125
    .local v3, "bottom":F
    if-eqz v8, :cond_5

    .line 126
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mSquareWidth:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v22, v25, v26

    .line 127
    .local v22, "width":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mSquareHeight:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v6, v25, v26

    .line 128
    .local v6, "height":F
    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/LockDecoPatternView;->getCenterXForColumn(I)F

    move-result v9

    .line 129
    .local v9, "hitCellCenterX":F
    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/LockDecoPatternView;->getCenterYForRow(I)F

    move-result v10

    .line 131
    .local v10, "hitCellCenterY":F
    sub-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 132
    add-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    .line 133
    sub-float v25, v10, v6

    move/from16 v0, v25

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 134
    add-float v25, v10, v6

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 138
    .end local v6    # "height":F
    .end local v9    # "hitCellCenterX":F
    .end local v10    # "hitCellCenterY":F
    .end local v22    # "width":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v26

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v27

    .line 139
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v28

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v29

    .line 138
    invoke-virtual/range {v25 .. v29}, Landroid/graphics/Rect;->union(IIII)V

    .line 96
    .end local v3    # "bottom":F
    .end local v13    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v14    # "lastCellCenterX":F
    .end local v15    # "lastCellCenterY":F
    .end local v16    # "left":F
    .end local v17    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v20    # "right":F
    .end local v21    # "top":F
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 97
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v8    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v18    # "patternSize":I
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    .restart local v23    # "x":F
    goto/16 :goto_2

    .line 98
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    goto/16 :goto_3

    .line 142
    .end local v23    # "x":F
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/LockDecoPatternView;->mInProgressX:F

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/LockDecoPatternView;->mInProgressY:F

    .line 146
    if-eqz v12, :cond_0

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/LockDecoPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 40
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 197
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/keyguard/LockDecoPatternView;->mDecoPatternEnabled:Z

    if-nez v4, :cond_1

    .line 204
    invoke-super/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternView;->onDraw(Landroid/graphics/Canvas;)V

    .line 196
    :cond_0
    return-void

    .line 206
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    .line 207
    .local v32, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 208
    .local v16, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mPatternDrawLookup:[[Z

    move-object/from16 v19, v0

    .line 210
    .local v19, "drawLookup":[[Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/LockDecoPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v4, v5, :cond_4

    .line 215
    add-int/lit8 v4, v16, 0x1

    mul-int/lit16 v0, v4, 0x2bc

    move/from16 v29, v0

    .line 216
    .local v29, "oneCycle":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 217
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/keyguard/LockDecoPatternView;->mAnimatingPeriodStart:J

    .line 216
    sub-long/2addr v4, v6

    long-to-int v4, v4

    rem-int v35, v4, v29

    .line 218
    .local v35, "spotInCycle":I
    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v28, v0

    .line 220
    .local v28, "numCircles":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/LockDecoPatternView;->clearPatternDrawLookup()V

    .line 221
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, v28

    if-ge v9, v0, :cond_2

    .line 222
    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 223
    .local v12, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    aget-object v4, v19, v4

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 221
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 228
    .end local v12    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_2
    if-lez v28, :cond_a

    .line 229
    move/from16 v0, v28

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    const/16 v26, 0x1

    .line 231
    .local v26, "needToUpdateInProgressPoint":Z
    :goto_1
    if-eqz v26, :cond_3

    .line 233
    move/from16 v0, v35

    rem-int/lit16 v4, v0, 0x2bc

    int-to-float v4, v4

    .line 234
    const/high16 v5, 0x442f0000    # 700.0f

    .line 233
    div-float v33, v4, v5

    .line 236
    .local v33, "percentageOfNextCircle":F
    add-int/lit8 v4, v28, -0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 237
    .local v17, "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/LockDecoPatternView;->getCenterXForColumn(I)F

    move-result v13

    .line 238
    .local v13, "centerX":F
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/LockDecoPatternView;->getCenterYForRow(I)F

    move-result v14

    .line 240
    .local v14, "centerY":F
    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 242
    .local v27, "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/LockDecoPatternView;->getCenterXForColumn(I)F

    move-result v4

    sub-float/2addr v4, v13

    .line 241
    mul-float v21, v33, v4

    .line 244
    .local v21, "dx":F
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/LockDecoPatternView;->getCenterYForRow(I)F

    move-result v4

    sub-float/2addr v4, v14

    .line 243
    mul-float v22, v33, v4

    .line 245
    .local v22, "dy":F
    add-float v4, v13, v21

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/keyguard/LockDecoPatternView;->mInProgressX:F

    .line 246
    add-float v4, v14, v22

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/keyguard/LockDecoPatternView;->mInProgressY:F

    .line 249
    .end local v13    # "centerX":F
    .end local v14    # "centerY":F
    .end local v17    # "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v21    # "dx":F
    .end local v22    # "dy":F
    .end local v27    # "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v33    # "percentageOfNextCircle":F
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/LockDecoPatternView;->invalidate()V

    .line 252
    .end local v9    # "i":I
    .end local v26    # "needToUpdateInProgressPoint":Z
    .end local v28    # "numCircles":I
    .end local v29    # "oneCycle":I
    .end local v35    # "spotInCycle":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mSquareWidth:F

    move/from16 v37, v0

    .line 253
    .local v37, "squareWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mSquareHeight:F

    move/from16 v36, v0

    .line 255
    .local v36, "squareHeight":F
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/LockDecoPatternView;->getLineRadius()F

    move-result v34

    .line 256
    .local v34, "radius":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/LockDecoPatternView;->mPathPaint:Landroid/graphics/Paint;

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 257
    const/16 v15, 0x80

    .line 258
    .local v15, "color":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/LockDecoPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mCurrentPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    .line 261
    .local v18, "currentPath":Landroid/graphics/Path;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->rewind()V

    .line 265
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/keyguard/LockDecoPatternView;->mInStealthMode:Z

    if-eqz v4, :cond_b

    const/16 v20, 0x0

    .line 266
    .local v20, "drawPath":Z
    :goto_2
    if-eqz v20, :cond_5

    .line 267
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/keyguard/LockDecoPatternView;->mIsWhiteWp:Z

    if-eqz v4, :cond_c

    .line 268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/LockDecoPatternView;->mPathPaint:Landroid/graphics/Paint;

    const v5, -0xbbbbbc

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    :cond_5
    :goto_3
    if-eqz v20, :cond_8

    .line 275
    const/4 v11, 0x0

    .line 276
    .local v11, "anyCircles":Z
    const/16 v23, 0x0

    .line 277
    .local v23, "lastX":F
    const/16 v24, 0x0

    .line 278
    .local v24, "lastY":F
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    move/from16 v0, v16

    if-ge v9, v0, :cond_6

    .line 279
    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 284
    .restart local v12    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    aget-object v4, v19, v4

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    aget-boolean v4, v4, v5

    if-nez v4, :cond_d

    .line 307
    .end local v12    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/keyguard/LockDecoPatternView;->mPatternInProgress:Z

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/LockDecoPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v4, v5, :cond_8

    :cond_7
    if-eqz v11, :cond_8

    .line 309
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->rewind()V

    .line 310
    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 311
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/LockDecoPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/LockDecoPatternView;->mInProgressY:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 312
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/LockDecoPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/LockDecoPatternView;->mInProgressY:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/LockDecoPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 318
    .end local v9    # "i":I
    .end local v11    # "anyCircles":Z
    .end local v23    # "lastX":F
    .end local v24    # "lastY":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mPaddingTop:I

    move/from16 v31, v0

    .line 319
    .local v31, "paddingTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/LockDecoPatternView;->mPaddingLeft:I

    move/from16 v30, v0

    .line 321
    .local v30, "paddingLeft":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    const/4 v4, 0x3

    if-ge v9, v4, :cond_0

    .line 322
    move/from16 v0, v31

    int-to-float v4, v0

    int-to-float v5, v9

    mul-float v5, v5, v36

    add-float v39, v4, v5

    .line 323
    .local v39, "topY":F
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_6
    const/4 v4, 0x3

    if-ge v10, v4, :cond_10

    .line 324
    move/from16 v0, v30

    int-to-float v4, v0

    int-to-float v5, v10

    mul-float v5, v5, v37

    add-float v25, v4, v5

    .line 325
    .local v25, "leftX":F
    move/from16 v0, v25

    float-to-int v6, v0

    move/from16 v0, v39

    float-to-int v7, v0

    aget-object v4, v19, v9

    aget-boolean v8, v4, v10

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/keyguard/LockDecoPatternView;->drawCircle(Landroid/graphics/Canvas;IIZII)V

    .line 323
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 229
    .end local v10    # "j":I
    .end local v15    # "color":I
    .end local v18    # "currentPath":Landroid/graphics/Path;
    .end local v20    # "drawPath":Z
    .end local v25    # "leftX":F
    .end local v30    # "paddingLeft":I
    .end local v31    # "paddingTop":I
    .end local v34    # "radius":F
    .end local v36    # "squareHeight":F
    .end local v37    # "squareWidth":F
    .end local v39    # "topY":F
    .restart local v28    # "numCircles":I
    .restart local v29    # "oneCycle":I
    .restart local v35    # "spotInCycle":I
    :cond_9
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 228
    :cond_a
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 265
    .end local v9    # "i":I
    .end local v28    # "numCircles":I
    .end local v29    # "oneCycle":I
    .end local v35    # "spotInCycle":I
    .restart local v15    # "color":I
    .restart local v18    # "currentPath":Landroid/graphics/Path;
    .restart local v34    # "radius":F
    .restart local v36    # "squareHeight":F
    .restart local v37    # "squareWidth":F
    :cond_b
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 270
    .restart local v20    # "drawPath":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/LockDecoPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/LockDecoPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->theme_pattern_line_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 287
    .restart local v9    # "i":I
    .restart local v11    # "anyCircles":Z
    .restart local v12    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v23    # "lastX":F
    .restart local v24    # "lastY":F
    :cond_d
    const/4 v11, 0x1

    .line 289
    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/LockDecoPatternView;->getCenterXForColumn(I)F

    move-result v13

    .line 290
    .restart local v13    # "centerX":F
    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/LockDecoPatternView;->getCenterYForRow(I)F

    move-result v14

    .line 291
    .restart local v14    # "centerY":F
    if-eqz v9, :cond_e

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/LockDecoPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    aget-object v38, v4, v5

    .line 293
    .local v38, "state":Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->rewind()V

    .line 294
    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 295
    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    const/4 v5, 0x1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_f

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    const/4 v5, 0x1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_f

    .line 296
    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    move-object/from16 v0, v38

    iget v5, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 300
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/LockDecoPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 302
    .end local v38    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_e
    move/from16 v23, v13

    .line 303
    move/from16 v24, v14

    .line 278
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 298
    .restart local v38    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_f
    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_7

    .line 321
    .end local v11    # "anyCircles":Z
    .end local v12    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v13    # "centerX":F
    .end local v14    # "centerY":F
    .end local v23    # "lastX":F
    .end local v24    # "lastY":F
    .end local v38    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    .restart local v10    # "j":I
    .restart local v30    # "paddingLeft":I
    .restart local v31    # "paddingTop":I
    .restart local v39    # "topY":F
    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5
.end method

.method public updateChildViewsLook()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 332
    iget-object v4, p0, Lcom/android/keyguard/LockDecoPatternView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/util/ViewStyleUtils;->getCurrentLookType()I

    move-result v0

    .line 333
    .local v0, "reason":I
    const/4 v2, 0x0

    .line 334
    .local v2, "whiteWp":Z
    const/4 v1, 0x0

    .line 335
    .local v1, "themeApplied":Z
    const-string/jumbo v4, "LockDecoPatternView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateChildViewsLook() reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    packed-switch v0, :pswitch_data_0

    .line 354
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/keyguard/LockDecoPatternView;->loadDecoPatternResources()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/keyguard/LockDecoPatternView;->mDecoPatternEnabled:Z

    .line 355
    iget-boolean v4, p0, Lcom/android/keyguard/LockDecoPatternView;->mDecoPatternEnabled:Z

    if-eqz v4, :cond_0

    .line 356
    iput-boolean v2, p0, Lcom/android/keyguard/LockDecoPatternView;->mIsWhiteWp:Z

    .line 357
    invoke-virtual {p0}, Lcom/android/keyguard/LockDecoPatternView;->invalidate()V

    .line 331
    :goto_1
    return-void

    .line 342
    :pswitch_1
    const/4 v2, 0x0

    .line 343
    const/4 v1, 0x1

    .line 344
    goto :goto_0

    .line 346
    :pswitch_2
    const/4 v2, 0x1

    .line 347
    const/4 v1, 0x0

    .line 348
    goto :goto_0

    .line 350
    :pswitch_3
    const/4 v2, 0x1

    .line 351
    const/4 v1, 0x1

    .line 352
    goto :goto_0

    .line 359
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    :goto_2
    invoke-super {p0, v3}, Lcom/android/internal/widget/LockPatternView;->updateChildViewsLook(Z)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
