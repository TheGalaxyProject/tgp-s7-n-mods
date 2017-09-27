.class public final Lcom/android/systemui/recents/misc/HelpHubImageSpan;
.super Landroid/text/style/ImageSpan;
.source "HelpHubImageSpan.java"


# instance fields
.field private finalScale:F

.field public fontScale:F

.field public imageSideMargin:F

.field private mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private spanWidth:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iput v0, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->fontScale:F

    .line 15
    iput v0, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->imageSideMargin:F

    .line 16
    iput v0, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->finalScale:F

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->spanWidth:F

    .line 19
    return-void
.end method

.method private calculateFinalScale(FLandroid/graphics/drawable/Drawable;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 4
    .param p1, "text_height"    # F
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;
    .param p3, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 74
    iget v2, p3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-lt v2, v3, :cond_0

    iget v2, p3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-le v2, v3, :cond_2

    .line 75
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->fontScale:F

    mul-float v1, v2, v3

    .line 76
    .local v1, "drawable_height":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 77
    .local v0, "addtionalScale":F
    cmpl-float v2, v1, p1

    if-lez v2, :cond_1

    .line 78
    div-float v0, p1, v1

    .line 80
    :cond_1
    iget v2, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->fontScale:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->finalScale:F

    .line 73
    .end local v0    # "addtionalScale":F
    .end local v1    # "drawable_height":F
    :goto_0
    return-void

    .line 82
    :cond_2
    iget v2, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->fontScale:F

    iput v2, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->finalScale:F

    goto :goto_0
.end method

.method private getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 88
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    .line 90
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 94
    :cond_0
    if-nez v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 99
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 37
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    .line 39
    .local v4, "fm":Landroid/graphics/Paint$FontMetricsInt;
    invoke-direct {p0}, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 40
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 41
    return-void

    .line 43
    :cond_0
    move/from16 v0, p7

    int-to-float v9, v0

    iget v10, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v10, v10

    add-float v6, v9, v10

    .line 44
    .local v6, "text_top_base":F
    iget v9, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v9, v9

    iget v10, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v10, v10

    sub-float v5, v9, v10

    .line 45
    .local v5, "text_area_height":F
    invoke-direct {p0, v5, v1, v4}, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->calculateFinalScale(FLandroid/graphics/drawable/Drawable;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 46
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->finalScale:F

    mul-float v2, v9, v10

    .line 47
    .local v2, "drawable_height":F
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->finalScale:F

    mul-float v3, v9, v10

    .line 48
    .local v3, "drawable_width":F
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v5, v9

    add-float/2addr v9, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v2, v10

    sub-float v8, v9, v10

    .line 49
    .local v8, "transY":F
    iget v9, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->spanWidth:F

    sub-float/2addr v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float v7, p5, v9

    .line 51
    .local v7, "transX":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 52
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 53
    iget v9, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->finalScale:F

    iget v10, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->finalScale:F

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 54
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 35
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 26
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 27
    const/4 v2, 0x0

    return v2

    .line 29
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 30
    .local v1, "rect":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->imageSideMargin:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->imageSideMargin:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->fontScale:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->spanWidth:F

    .line 31
    iget v2, p0, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->spanWidth:F

    float-to-int v2, v2

    return v2
.end method
