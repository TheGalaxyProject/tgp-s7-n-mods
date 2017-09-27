.class public Lcom/android/systemui/ResizingSpace;
.super Landroid/view/View;
.source "ResizingSpace.java"


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/ResizingSpace;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 33
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/systemui/ResizingSpace;->setVisibility(I)V

    .line 35
    :cond_0
    sget-object v1, Landroid/R$styleable;->ViewGroup_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/ResizingSpace;->mWidth:I

    .line 37
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/ResizingSpace;->mHeight:I

    .line 30
    return-void
.end method

.method private static getDefaultSize2(II)I
    .locals 3
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I

    .prologue
    .line 79
    move v0, p0

    .line 80
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 81
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 83
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 94
    :goto_0
    return v0

    .line 85
    :sswitch_0
    move v0, p0

    .line 86
    goto :goto_0

    .line 88
    :sswitch_1
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 91
    :sswitch_2
    move v0, v2

    .line 92
    goto :goto_0

    .line 83
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 70
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/ResizingSpace;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 44
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, 0x0

    .line 45
    .local v0, "changed":Z
    iget v4, p0, Lcom/android/systemui/ResizingSpace;->mWidth:I

    if-lez v4, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/ResizingSpace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/ResizingSpace;->mWidth:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 47
    .local v3, "width":I
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v4, :cond_0

    .line 48
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 49
    const/4 v0, 0x1

    .line 52
    .end local v3    # "width":I
    :cond_0
    iget v4, p0, Lcom/android/systemui/ResizingSpace;->mHeight:I

    if-lez v4, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/ResizingSpace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/ResizingSpace;->mHeight:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 54
    .local v1, "height":I
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v4, :cond_1

    .line 55
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 56
    const/4 v0, 0x1

    .line 59
    .end local v1    # "height":I
    :cond_1
    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p0, v2}, Lcom/android/systemui/ResizingSpace;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/ResizingSpace;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/systemui/ResizingSpace;->getDefaultSize2(II)I

    move-result v0

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/ResizingSpace;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/android/systemui/ResizingSpace;->getDefaultSize2(II)I

    move-result v1

    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/ResizingSpace;->setMeasuredDimension(II)V

    .line 98
    return-void
.end method
