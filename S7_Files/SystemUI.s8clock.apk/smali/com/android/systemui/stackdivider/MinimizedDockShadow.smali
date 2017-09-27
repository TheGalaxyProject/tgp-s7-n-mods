.class public Lcom/android/systemui/stackdivider/MinimizedDockShadow;
.super Landroid/view/View;
.source "MinimizedDockShadow.java"


# instance fields
.field private mDockSide:I

.field private mMinimizedShadowColor:I

.field private mMinimizedShadowDimen:I

.field private final mShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    .line 43
    iput v1, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mMinimizedShadowColor:I

    .line 44
    iput v1, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mMinimizedShadowDimen:I

    .line 47
    iput v1, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mDockSide:I

    .line 54
    iget-object v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    const v1, 0x7f0b0002

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mMinimizedShadowColor:I

    .line 56
    iget-object v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    const/high16 v1, 0x7f0d0000

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mMinimizedShadowDimen:I

    .line 49
    return-void
.end method

.method private updatePaint(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mMinimizedShadowColor:I

    if-eq v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mMinimizedShadowColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public getMinimizedShadowDimen()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mMinimizedShadowDimen:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 116
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 108
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 109
    if-eqz p1, :cond_0

    .line 110
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->updatePaint(IIII)V

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->invalidate()V

    .line 107
    :cond_0
    return-void
.end method

.method public setDockSide(I)V
    .locals 4
    .param p1, "dockSide"    # I

    .prologue
    .line 63
    iget v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mDockSide:I

    if-eq p1, v0, :cond_0

    .line 64
    iput p1, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mDockSide:I

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getBottom()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->updatePaint(IIII)V

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->invalidate()V

    .line 62
    :cond_0
    return-void
.end method
