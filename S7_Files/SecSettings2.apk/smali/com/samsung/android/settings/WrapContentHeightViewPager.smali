.class public Lcom/samsung/android/settings/WrapContentHeightViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "WrapContentHeightViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 20
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 23
    .local v4, "mode":I
    if-eqz v4, :cond_0

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_3

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    .local v2, "height":I
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 28
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 29
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, "child":Landroid/view/View;
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, p1, v5}, Landroid/view/View;->measure(II)V

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 32
    .local v1, "h":I
    if-le v1, v2, :cond_1

    .line 33
    move v2, v1

    .line 28
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "h":I
    :cond_2
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 39
    .end local v2    # "height":I
    .end local v3    # "i":I
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 19
    return-void
.end method
