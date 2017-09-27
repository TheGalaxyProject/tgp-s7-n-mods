.class public Landroid/support/v17/leanback/widget/ScaleFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ScaleFrameLayout.java"


# instance fields
.field private mChildScale:F

.field private mLayoutScaleX:F

.field private mLayoutScaleY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    .line 33
    iput v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    .line 35
    iput v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    .line 46
    return-void
.end method

.method private static getScaledMeasureSpec(IF)I
    .locals 2
    .param p0, "measureSpec"    # I
    .param p1, "scale"    # F

    .prologue
    .line 177
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .end local p0    # "measureSpec":I
    :goto_0
    return p0

    .line 178
    .restart local p0    # "measureSpec":I
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 179
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 177
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 78
    iget v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 75
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    .line 85
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 86
    iget v1, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 87
    iget v1, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 89
    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getChildCount()I

    move-result v6

    .line 97
    .local v6, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getLayoutDirection()I

    move-result v10

    .line 98
    .local v10, "layoutDirection":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_2

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPivotX()F

    move-result v21

    sub-float v16, v20, v21

    .line 101
    .local v16, "pivotX":F
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_3

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingLeft()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    move/from16 v21, v0

    div-float v21, v16, v21

    sub-float v21, v16, v21

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v13, v20, v21

    .line 103
    .local v13, "parentLeft":I
    sub-int v20, p4, p2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v20, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    move/from16 v21, v0

    div-float v20, v20, v21

    add-float v20, v20, v16

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingRight()I

    move-result v21

    .line 103
    sub-int v14, v20, v21

    .line 111
    .local v14, "parentRight":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPivotY()F

    move-result v17

    .line 112
    .local v17, "pivotY":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_4

    .line 113
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingTop()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    move/from16 v21, v0

    div-float v21, v17, v21

    sub-float v21, v17, v21

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v15, v20, v21

    .line 114
    .local v15, "parentTop":I
    sub-int v20, p5, p3

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v20, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    move/from16 v21, v0

    div-float v20, v20, v21

    add-float v20, v20, v17

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingBottom()I

    move-result v21

    .line 114
    sub-int v12, v20, v21

    .line 121
    .local v12, "parentBottom":I
    :goto_2
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    if-ge v9, v6, :cond_5

    .line 122
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 123
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 124
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 126
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 127
    .local v19, "width":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 132
    .local v8, "height":I
    iget v7, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 133
    .local v7, "gravity":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_0

    .line 134
    const v7, 0x800033

    .line 137
    :cond_0
    invoke-static {v7, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 138
    .local v2, "absoluteGravity":I
    and-int/lit8 v18, v7, 0x70

    .line 140
    .local v18, "verticalGravity":I
    and-int/lit8 v20, v2, 0x7

    sparse-switch v20, :sswitch_data_0

    .line 150
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v4, v13, v20

    .line 153
    .local v4, "childLeft":I
    :goto_4
    sparse-switch v18, :sswitch_data_1

    .line 165
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v5, v15, v20

    .line 168
    .local v5, "childTop":I
    :goto_5
    add-int v20, v4, v19

    add-int v21, v5, v8

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 170
    int-to-float v0, v4

    move/from16 v20, v0

    sub-float v20, v16, v20

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/view/View;->setPivotX(F)V

    .line 171
    int-to-float v0, v5

    move/from16 v20, v0

    sub-float v20, v17, v20

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/view/View;->setPivotY(F)V

    .line 121
    .end local v2    # "absoluteGravity":I
    .end local v4    # "childLeft":I
    .end local v5    # "childTop":I
    .end local v7    # "gravity":I
    .end local v8    # "height":I
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v18    # "verticalGravity":I
    .end local v19    # "width":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 100
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "i":I
    .end local v12    # "parentBottom":I
    .end local v13    # "parentLeft":I
    .end local v14    # "parentRight":I
    .end local v15    # "parentTop":I
    .end local v16    # "pivotX":F
    .end local v17    # "pivotY":F
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPivotX()F

    move-result v16

    .restart local v16    # "pivotX":F
    goto/16 :goto_0

    .line 106
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingLeft()I

    move-result v13

    .line 107
    .restart local v13    # "parentLeft":I
    sub-int v20, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingRight()I

    move-result v21

    sub-int v14, v20, v21

    .restart local v14    # "parentRight":I
    goto/16 :goto_1

    .line 117
    .restart local v17    # "pivotY":F
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingTop()I

    move-result v15

    .line 118
    .restart local v15    # "parentTop":I
    sub-int v20, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingBottom()I

    move-result v21

    sub-int v12, v20, v21

    .restart local v12    # "parentBottom":I
    goto/16 :goto_2

    .line 142
    .restart local v2    # "absoluteGravity":I
    .restart local v3    # "child":Landroid/view/View;
    .restart local v7    # "gravity":I
    .restart local v8    # "height":I
    .restart local v9    # "i":I
    .restart local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v18    # "verticalGravity":I
    .restart local v19    # "width":I
    :sswitch_0
    sub-int v20, v14, v13

    sub-int v20, v20, v19

    div-int/lit8 v20, v20, 0x2

    add-int v20, v20, v13

    .line 143
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    .line 142
    add-int v20, v20, v21

    .line 143
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v21, v0

    .line 142
    sub-int v4, v20, v21

    .line 144
    .restart local v4    # "childLeft":I
    goto :goto_4

    .line 146
    .end local v4    # "childLeft":I
    :sswitch_1
    sub-int v20, v14, v19

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v21, v0

    sub-int v4, v20, v21

    .line 147
    .restart local v4    # "childLeft":I
    goto :goto_4

    .line 155
    :sswitch_2
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v5, v15, v20

    .line 156
    .restart local v5    # "childTop":I
    goto :goto_5

    .line 158
    .end local v5    # "childTop":I
    :sswitch_3
    sub-int v20, v12, v15

    sub-int v20, v20, v8

    div-int/lit8 v20, v20, 0x2

    add-int v20, v20, v15

    .line 159
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    .line 158
    add-int v20, v20, v21

    .line 159
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    .line 158
    sub-int v5, v20, v21

    .line 160
    .restart local v5    # "childTop":I
    goto :goto_5

    .line 162
    .end local v5    # "childTop":I
    :sswitch_4
    sub-int v20, v12, v8

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    sub-int v5, v20, v21

    .line 163
    .restart local v5    # "childTop":I
    goto/16 :goto_5

    .line 93
    .end local v2    # "absoluteGravity":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childLeft":I
    .end local v5    # "childTop":I
    .end local v7    # "gravity":I
    .end local v8    # "height":I
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v18    # "verticalGravity":I
    .end local v19    # "width":I
    :cond_5
    return-void

    .line 140
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 153
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    .line 184
    iget v2, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 186
    :cond_0
    iget v2, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    invoke-static {p1, v2}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getScaledMeasureSpec(IF)I

    move-result v1

    .line 188
    .local v1, "scaledWidthMeasureSpec":I
    iget v2, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    invoke-static {p2, v2}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getScaledMeasureSpec(IF)I

    move-result v0

    .line 189
    .local v0, "scaledHeightMeasureSpec":I
    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 190
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 191
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 190
    invoke-virtual {p0, v2, v3}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setMeasuredDimension(II)V

    .line 183
    .end local v0    # "scaledHeightMeasureSpec":I
    .end local v1    # "scaledWidthMeasureSpec":I
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 202
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
