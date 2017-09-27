.class public Lcom/android/settings/deviceinfo/PercentageBarChart;
.super Landroid/view/View;
.source "PercentageBarChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    }
.end annotation


# instance fields
.field private final mEmptyPaint:Landroid/graphics/Paint;

.field private mEntries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mMinTickWidth:I


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 73
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingLeft()I

    move-result v16

    .line 76
    .local v16, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingRight()I

    move-result v3

    sub-int v17, v1, v3

    .line 77
    .local v17, "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingTop()I

    move-result v18

    .line 78
    .local v18, "top":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingBottom()I

    move-result v3

    sub-int v11, v1, v3

    .line 80
    .local v11, "bottom":I
    sub-int v19, v17, v16

    .line 82
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->isLayoutRtl()Z

    move-result v15

    .line 83
    .local v15, "isLayoutRtl":Z
    if-eqz v15, :cond_3

    .line 84
    move/from16 v0, v17

    int-to-float v4, v0

    .line 86
    .local v4, "nextX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 87
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    .line 89
    .local v12, "e":Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    iget v1, v12, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 90
    const/4 v14, 0x0

    .line 95
    .local v14, "entryWidth":F
    :goto_1
    sub-float v2, v4, v14

    .line 96
    .local v2, "lastX":F
    move/from16 v0, v16

    int-to-float v1, v0

    cmpg-float v1, v2, v1

    if-gez v1, :cond_1

    .line 97
    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v3, v0

    int-to-float v5, v11

    iget-object v6, v12, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    .end local v2    # "lastX":F
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 98
    return-void

    .line 92
    .end local v14    # "entryWidth":F
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    int-to-float v1, v1

    move/from16 v0, v19

    int-to-float v3, v0

    iget v5, v12, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    mul-float/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .restart local v14    # "entryWidth":F
    goto :goto_1

    .line 101
    .restart local v2    # "lastX":F
    :cond_1
    move/from16 v0, v18

    int-to-float v3, v0

    int-to-float v5, v11

    iget-object v6, v12, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 102
    move v4, v2

    goto :goto_0

    .line 106
    .end local v2    # "lastX":F
    .end local v12    # "e":Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    .end local v13    # "e$iterator":Ljava/util/Iterator;
    .end local v14    # "entryWidth":F
    :cond_2
    move/from16 v0, v16

    int-to-float v6, v0

    move/from16 v0, v18

    int-to-float v7, v0

    int-to-float v9, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 72
    .end local v4    # "nextX":F
    :goto_2
    return-void

    .line 108
    :cond_3
    move/from16 v0, v16

    int-to-float v2, v0

    .line 110
    .restart local v2    # "lastX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    if-eqz v1, :cond_6

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "e$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    .line 113
    .restart local v12    # "e":Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    iget v1, v12, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4

    .line 114
    const/4 v14, 0x0

    .line 119
    .restart local v14    # "entryWidth":F
    :goto_4
    add-float v4, v2, v14

    .line 120
    .restart local v4    # "nextX":F
    move/from16 v0, v17

    int-to-float v1, v0

    cmpl-float v1, v4, v1

    if-lez v1, :cond_5

    .line 121
    move/from16 v0, v18

    int-to-float v7, v0

    move/from16 v0, v17

    int-to-float v8, v0

    int-to-float v9, v11

    iget-object v10, v12, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v6, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 122
    return-void

    .line 116
    .end local v4    # "nextX":F
    .end local v14    # "entryWidth":F
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    int-to-float v1, v1

    move/from16 v0, v19

    int-to-float v3, v0

    iget v5, v12, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    mul-float/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .restart local v14    # "entryWidth":F
    goto :goto_4

    .line 125
    .restart local v4    # "nextX":F
    :cond_5
    move/from16 v0, v18

    int-to-float v3, v0

    int-to-float v5, v11

    iget-object v6, v12, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 126
    move v2, v4

    goto :goto_3

    .line 130
    .end local v4    # "nextX":F
    .end local v12    # "e":Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    .end local v13    # "e$iterator":Ljava/util/Iterator;
    .end local v14    # "entryWidth":F
    :cond_6
    move/from16 v0, v18

    int-to-float v7, v0

    move/from16 v0, v17

    int-to-float v8, v0

    int-to-float v9, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v6, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    return-void
.end method
