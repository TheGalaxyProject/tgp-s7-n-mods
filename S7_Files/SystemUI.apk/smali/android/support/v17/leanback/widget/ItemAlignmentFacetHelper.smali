.class Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;
.super Ljava/lang/Object;
.source "ItemAlignmentFacetHelper.java"


# static fields
.field private static sRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    .line 29
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAlignmentPosition(Landroid/view/View;Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;I)I
    .locals 9
    .param p0, "itemView"    # Landroid/view/View;
    .param p1, "facet"    # Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    .param p2, "orientation"    # I

    .prologue
    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v6, -0x40800000    # -1.0f

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 39
    .local v1, "p":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    move-object v4, p0

    .line 40
    .local v4, "view":Landroid/view/View;
    iget v5, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    if-eqz v5, :cond_0

    .line 41
    iget v5, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 42
    if-nez v4, :cond_0

    .line 43
    move-object v4, p0

    .line 46
    :cond_0
    iget v0, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffset:I

    .line 47
    .local v0, "alignPos":I
    if-nez p2, :cond_6

    .line 48
    iget v5, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffset:I

    if-ltz v5, :cond_4

    .line 49
    iget-boolean v5, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz v5, :cond_1

    .line 50
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v0, v5

    .line 57
    :cond_1
    :goto_0
    iget v5, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 58
    int-to-float v6, v0

    if-ne v4, p0, :cond_5

    invoke-virtual {v1, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalWidth(Landroid/view/View;)I

    move-result v5

    :goto_1
    int-to-float v5, v5

    .line 59
    iget v7, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    .line 58
    mul-float/2addr v5, v7

    div-float/2addr v5, v8

    add-float/2addr v5, v6

    float-to-int v0, v5

    .line 61
    :cond_2
    if-eq p0, v4, :cond_3

    .line 62
    sget-object v5, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 63
    check-cast p0, Landroid/view/ViewGroup;

    .end local p0    # "itemView":Landroid/view/View;
    sget-object v5, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 64
    sget-object v5, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalLeftInset()I

    move-result v6

    sub-int v0, v5, v6

    .line 91
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    :goto_2
    return v0

    .line 53
    .restart local v4    # "view":Landroid/view/View;
    .restart local p0    # "itemView":Landroid/view/View;
    :cond_4
    iget-boolean v5, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz v5, :cond_1

    .line 54
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v0, v5

    goto :goto_0

    .line 58
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    goto :goto_1

    .line 67
    :cond_6
    iget v5, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffset:I

    if-ltz v5, :cond_a

    .line 68
    iget-boolean v5, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz v5, :cond_7

    .line 69
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v0, v5

    .line 76
    :cond_7
    :goto_3
    iget v5, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_8

    .line 77
    int-to-float v6, v0

    if-ne v4, p0, :cond_b

    invoke-virtual {v1, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalHeight(Landroid/view/View;)I

    move-result v5

    :goto_4
    int-to-float v5, v5

    .line 78
    iget v7, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    .line 77
    mul-float/2addr v5, v7

    div-float/2addr v5, v8

    add-float/2addr v5, v6

    float-to-int v0, v5

    .line 80
    :cond_8
    if-eq p0, v4, :cond_9

    .line 81
    sget-object v5, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 82
    check-cast p0, Landroid/view/ViewGroup;

    .end local p0    # "itemView":Landroid/view/View;
    sget-object v5, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 83
    sget-object v5, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalTopInset()I

    move-result v6

    sub-int v0, v5, v6

    .line 85
    :cond_9
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->isAlignedToTextViewBaseLine()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 86
    check-cast v4, Landroid/widget/TextView;

    .end local v4    # "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 87
    .local v2, "textPaint":Landroid/graphics/Paint;
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v3, v5

    .line 88
    .local v3, "titleViewTextHeight":I
    add-int/2addr v0, v3

    goto :goto_2

    .line 72
    .end local v2    # "textPaint":Landroid/graphics/Paint;
    .end local v3    # "titleViewTextHeight":I
    .restart local v4    # "view":Landroid/view/View;
    .restart local p0    # "itemView":Landroid/view/View;
    :cond_a
    iget-boolean v5, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz v5, :cond_7

    .line 73
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v0, v5

    goto :goto_3

    .line 77
    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    goto :goto_4
.end method
