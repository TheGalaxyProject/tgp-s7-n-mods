.class public Lcom/samsung/android/settings/accessories/LedIconGridView;
.super Landroid/widget/GridView;
.source "LedIconGridView.java"


# instance fields
.field private expand:Z

.field private mListItemHeight:I

.field private mParentScrollView:Landroid/widget/ScrollView;

.field private mParentScrollViewTopPosition:I

.field private mScreenHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mParentScrollView:Landroid/widget/ScrollView;

    .line 37
    iput v1, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mScreenHeight:I

    .line 39
    iput v1, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mParentScrollViewTopPosition:I

    .line 41
    iput v1, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mListItemHeight:I

    .line 43
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->expand:Z

    .line 45
    return-void
.end method


# virtual methods
.method public isExpand()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->expand:Z

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "arg0"    # Z
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    .line 126
    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedIconGridView;->getSelectedItemPosition()I

    move-result v0

    .line 129
    .local v0, "ItemPosition":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/LedIconGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 130
    .local v1, "itemView":Landroid/view/View;
    if-nez v1, :cond_0

    .line 131
    return-void

    .line 132
    :cond_0
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 133
    .local v2, "loc":[I
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 134
    const/4 v5, 0x1

    aget v3, v2, v5

    .line 135
    .local v3, "rectItemY":I
    iget v5, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mListItemHeight:I

    sub-int v4, v3, v5

    .line 136
    .local v4, "targetYPosition":I
    if-gez v4, :cond_1

    .line 137
    iget-object v5, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mParentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5, v6, v4}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 124
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "ItemPosition":I
    const/4 v1, 0x0

    .line 90
    .local v1, "itemView":Landroid/view/View;
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 91
    .local v2, "loc":[I
    const/4 v3, 0x0

    .line 92
    .local v3, "rectItemY":I
    const/4 v4, 0x0

    .line 93
    .local v4, "targetYPosition":I
    packed-switch p1, :pswitch_data_0

    .line 120
    .end local v1    # "itemView":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    return v5

    .line 95
    .restart local v1    # "itemView":Landroid/view/View;
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedIconGridView;->getSelectedItemPosition()I

    move-result v0

    .line 96
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/LedIconGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "itemView":Landroid/view/View;
    if-nez v1, :cond_1

    .line 98
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    return v5

    .line 99
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 100
    aget v3, v2, v6

    .line 101
    iget v5, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mListItemHeight:I

    sub-int v4, v3, v5

    .line 102
    iget v5, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mParentScrollViewTopPosition:I

    if-ge v4, v5, :cond_0

    .line 103
    iget-object v5, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mParentScrollView:Landroid/widget/ScrollView;

    .line 104
    iget v6, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mParentScrollViewTopPosition:I

    .line 103
    sub-int v6, v4, v6

    invoke-virtual {v5, v7, v6}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_0

    .line 107
    .local v1, "itemView":Landroid/view/View;
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedIconGridView;->getSelectedItemPosition()I

    move-result v0

    .line 108
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/LedIconGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 109
    .local v1, "itemView":Landroid/view/View;
    if-nez v1, :cond_2

    .line 110
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    return v5

    .line 111
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 112
    aget v3, v2, v6

    .line 113
    iget v5, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mListItemHeight:I

    mul-int/lit8 v5, v5, 0x2

    add-int v4, v3, v5

    .line 114
    iget v5, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mScreenHeight:I

    if-le v4, v5, :cond_0

    .line 115
    iget-object v5, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mParentScrollView:Landroid/widget/ScrollView;

    iget v6, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mScreenHeight:I

    sub-int v6, v4, v6

    invoke-virtual {v5, v7, v6}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMeasure(II)V
    .locals 4
    .param p1, "widthValue"    # I
    .param p2, "heightValue"    # I

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedIconGridView;->isExpand()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const v2, 0xffffff

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 76
    .local v0, "expandSpec":I
    invoke-super {p0, p1, v0}, Landroid/widget/GridView;->onMeasure(II)V

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedIconGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 79
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedIconGridView;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 73
    .end local v0    # "expandSpec":I
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setExpanded(Z)V
    .locals 0
    .param p1, "expand"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->expand:Z

    .line 64
    return-void
.end method

.method public setParents(Landroid/app/Activity;Landroid/widget/ScrollView;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "scrollView"    # Landroid/widget/ScrollView;

    .prologue
    const/4 v4, 0x0

    .line 50
    iput-object p2, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mParentScrollView:Landroid/widget/ScrollView;

    .line 51
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 52
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mScreenHeight:I

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedIconGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    .line 55
    .local v1, "listAdapter":Landroid/widget/ArrayAdapter;
    const/4 v3, 0x0

    invoke-virtual {v1, v4, v3, p0}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 56
    .local v2, "listItem":Landroid/view/View;
    invoke-virtual {v2, v4, v4}, Landroid/view/View;->measure(II)V

    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mListItemHeight:I

    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 60
    const v4, 0x7f0a044d

    .line 59
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mParentScrollViewTopPosition:I

    .line 49
    return-void
.end method
