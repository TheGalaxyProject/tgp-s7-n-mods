.class public Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "KeyguardServiceBoxViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, -0x80000000

    const/4 v7, 0x0

    .line 45
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V

    .line 47
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    if-ne v8, v9, :cond_0

    const/4 v7, 0x1

    .line 49
    .local v7, "wrapHeight":Z
    :cond_0
    if-eqz v7, :cond_4

    .line 57
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->getMeasuredWidth()I

    move-result v6

    .local v6, "width":I
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->getMeasuredHeight()I

    move-result v3

    .line 60
    .local v3, "height":I
    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 66
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->getChildCount()I

    move-result v1

    .line 67
    .local v1, "childCount":I
    if-lez v1, :cond_3

    .line 68
    const/4 v5, 0x0

    .line 70
    .local v5, "maxHeight":I
    const/4 v4, 0x0

    .local v4, "iIdx":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 75
    invoke-virtual {p0, v4}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "child":Landroid/view/View;
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0, p1, v8}, Landroid/view/View;->measure(II)V

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 79
    .local v2, "childHeight":I
    if-ge v5, v2, :cond_1

    .line 80
    move v5, v2

    .line 70
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childHeight":I
    :cond_2
    if-eqz v5, :cond_3

    .line 85
    move v3, v5

    .line 89
    .end local v4    # "iIdx":I
    .end local v5    # "maxHeight":I
    :cond_3
    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 91
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V

    .line 44
    .end local v1    # "childCount":I
    .end local v3    # "height":I
    .end local v6    # "width":I
    :cond_4
    return-void
.end method
