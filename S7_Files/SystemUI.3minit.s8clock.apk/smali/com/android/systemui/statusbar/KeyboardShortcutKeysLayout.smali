.class public final Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;
.super Landroid/view/ViewGroup;
.source "KeyboardShortcutKeysLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLineHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private getHorizontalVerticalSpacing()I
    .locals 3

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 158
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    const/high16 v1, 0x40800000    # 4.0f

    const/4 v2, 0x1

    .line 157
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method private isRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 194
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutChildrenOnRow(IIIIII)V
    .locals 7
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "fullRowWidth"    # I
    .param p4, "xPos"    # I
    .param p5, "yPos"    # I
    .param p6, "lastHorizontalSpacing"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v5

    if-nez v5, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, p3

    sub-int/2addr v5, p4

    add-int p4, v5, p6

    .line 167
    :cond_0
    move v2, p1

    .local v2, "j":I
    :goto_0
    if-ge v2, p2, :cond_4

    .line 168
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, "currentChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 170
    .local v1, "currentChildWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    .line 171
    .local v3, "lp":Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v5

    if-eqz v5, :cond_1

    if-ne v2, p1, :cond_1

    .line 172
    sub-int v5, p3, p4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    .line 173
    iget v6, v3, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    .line 172
    sub-int p4, v5, v6

    .line 179
    :cond_1
    add-int v5, p4, v1

    .line 180
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, p5

    .line 176
    invoke-virtual {v0, p4, p5, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 183
    add-int/lit8 v5, p2, -0x1

    if-ge v2, v5, :cond_2

    .line 184
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 186
    .local v4, "nextChildWidth":I
    :goto_1
    iget v5, v3, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    add-int/2addr v5, v4

    sub-int/2addr p4, v5

    .line 167
    .end local v4    # "nextChildWidth":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "nextChildWidth":I
    goto :goto_1

    .line 188
    .end local v4    # "nextChildWidth":I
    :cond_3
    iget v5, v3, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    add-int/2addr v5, v1

    add-int/2addr p4, v5

    goto :goto_2

    .line 162
    .end local v0    # "currentChild":Landroid/view/View;
    .end local v1    # "currentChildWidth":I
    .end local v3    # "lp":Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    :cond_4
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 103
    instance-of v0, p1, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->generateDefaultLayoutParams()Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getHorizontalVerticalSpacing()I

    move-result v0

    .line 92
    .local v0, "spacing":I
    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    .locals 2
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getHorizontalVerticalSpacing()I

    move-result v0

    .line 98
    .local v0, "spacing":I
    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    invoke-direct {v1, v0, v0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;-><init>(IILandroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method protected onLayout(ZIIII)V
    .locals 19
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getChildCount()I

    move-result v10

    .line 109
    .local v10, "childCount":I
    sub-int v4, p4, p2

    .line 110
    .local v4, "fullRowWidth":I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingRight()I

    move-result v1

    sub-int v5, v4, v1

    .line 113
    .local v5, "xPos":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingTop()I

    move-result v6

    .line 114
    .local v6, "yPos":I
    const/4 v7, 0x0

    .line 116
    .local v7, "lastHorizontalSpacing":I
    const/4 v2, 0x0

    .line 119
    .local v2, "rowStartIdx":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v10, :cond_8

    .line 120
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 121
    .local v16, "currentChild":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v8, 0x8

    if-eq v1, v8, :cond_1

    .line 122
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 123
    .local v17, "currentChildWidth":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    .line 125
    .local v18, "lp":Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v1

    sub-int v1, v5, v1

    sub-int v1, v1, v17

    if-gez v1, :cond_3

    const/4 v15, 0x1

    .line 129
    .local v15, "childDoesNotFitOnRow":Z
    :goto_2
    if-eqz v15, :cond_0

    move-object/from16 v1, p0

    .line 131
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->layoutChildrenOnRow(IIIIII)V

    .line 134
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingRight()I

    move-result v1

    sub-int v5, v4, v1

    .line 137
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mLineHeight:I

    add-int/2addr v6, v1

    .line 138
    move v2, v3

    .line 141
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 142
    sub-int v1, v5, v17

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    sub-int v5, v1, v8

    .line 144
    :goto_4
    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    .line 119
    .end local v15    # "childDoesNotFitOnRow":Z
    .end local v17    # "currentChildWidth":I
    .end local v18    # "lp":Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 112
    .end local v2    # "rowStartIdx":I
    .end local v3    # "i":I
    .end local v5    # "xPos":I
    .end local v6    # "yPos":I
    .end local v7    # "lastHorizontalSpacing":I
    .end local v16    # "currentChild":Landroid/view/View;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v5

    .restart local v5    # "xPos":I
    goto :goto_0

    .line 126
    .restart local v2    # "rowStartIdx":I
    .restart local v3    # "i":I
    .restart local v6    # "yPos":I
    .restart local v7    # "lastHorizontalSpacing":I
    .restart local v16    # "currentChild":Landroid/view/View;
    .restart local v17    # "currentChildWidth":I
    .restart local v18    # "lp":Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    :cond_3
    const/4 v15, 0x0

    goto :goto_2

    .line 127
    :cond_4
    add-int v1, v5, v17

    if-le v1, v4, :cond_5

    const/4 v15, 0x1

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    goto :goto_2

    .line 136
    .restart local v15    # "childDoesNotFitOnRow":Z
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v5

    goto :goto_3

    .line 143
    :cond_7
    add-int v1, v5, v17

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    add-int v5, v1, v8

    goto :goto_4

    .line 149
    .end local v15    # "childDoesNotFitOnRow":Z
    .end local v16    # "currentChild":Landroid/view/View;
    .end local v17    # "currentChildWidth":I
    .end local v18    # "lp":Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    :cond_8
    if-ge v2, v10, :cond_9

    move-object/from16 v8, p0

    move v9, v2

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    .line 150
    invoke-direct/range {v8 .. v14}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->layoutChildrenOnRow(IIIIII)V

    .line 107
    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 46
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingRight()I

    move-result v12

    sub-int v8, v11, v12

    .line 47
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getChildCount()I

    move-result v1

    .line 48
    .local v1, "childCount":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingBottom()I

    move-result v12

    sub-int v4, v11, v12

    .line 49
    .local v4, "height":I
    const/4 v7, 0x0

    .line 50
    .local v7, "lineHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v9

    .line 51
    .local v9, "xPos":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingTop()I

    move-result v10

    .line 54
    .local v10, "yPos":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, -0x80000000

    if-ne v11, v12, :cond_2

    .line 55
    const/high16 v11, -0x80000000

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 60
    .local v2, "childHeightMeasureSpec":I
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_3

    .line 61
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    .line 64
    .local v6, "layoutParams":Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    const/high16 v11, -0x80000000

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v11, v2}, Landroid/view/View;->measure(II)V

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 68
    .local v3, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v12, v6, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mVerticalSpacing:I

    add-int/2addr v11, v12

    .line 67
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 70
    add-int v11, v9, v3

    if-le v11, v8, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v9

    .line 72
    add-int/2addr v10, v7

    .line 74
    :cond_0
    iget v11, v6, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    add-int/2addr v11, v3

    add-int/2addr v9, v11

    .line 60
    .end local v3    # "childWidth":I
    .end local v6    # "layoutParams":Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 57
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childHeightMeasureSpec":I
    .end local v5    # "i":I
    :cond_2
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .restart local v2    # "childHeightMeasureSpec":I
    goto :goto_0

    .line 77
    .restart local v5    # "i":I
    :cond_3
    iput v7, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mLineHeight:I

    .line 79
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    if-nez v11, :cond_5

    .line 80
    add-int v4, v10, v7

    .line 86
    :cond_4
    :goto_2
    invoke-virtual {p0, v8, v4}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->setMeasuredDimension(II)V

    .line 45
    return-void

    .line 81
    :cond_5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, -0x80000000

    if-ne v11, v12, :cond_4

    .line 82
    add-int v11, v10, v7

    if-ge v11, v4, :cond_4

    .line 83
    add-int v4, v10, v7

    goto :goto_2
.end method
