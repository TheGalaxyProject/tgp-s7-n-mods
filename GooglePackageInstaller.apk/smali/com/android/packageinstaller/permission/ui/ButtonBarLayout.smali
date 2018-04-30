.class public Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->mLastWidthSize:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->mAllowStacking:Z

    return-void
.end method

.method private isStacked()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStacked(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->setOrientation(I)V

    if-eqz p1, :cond_2

    const/4 v3, 0x5

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->setGravity(I)V

    const v3, 0x7f110054

    invoke-virtual {p0, v3}, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_3

    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    :goto_2
    if-ltz v1, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    const/16 v3, 0x50

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    iget-boolean v5, p0, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->mLastWidthSize:I

    if-le v4, v5, :cond_0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->isStacked()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->setStacked(Z)V

    :cond_0
    iput v4, p0, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->mLastWidthSize:I

    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->isStacked()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_4

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v3, 0x1

    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-boolean v5, p0, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->isStacked()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_3
    return-void

    :cond_4
    move v0, p1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v1

    const/high16 v5, -0x1000000

    and-int v2, v1, v5

    const/high16 v5, 0x1000000

    if-ne v2, v5, :cond_2

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->setStacked(Z)V

    const/4 v3, 0x1

    goto :goto_1
.end method

.method public setAllowStacking(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->mAllowStacking:Z

    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->mAllowStacking:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->setStacked(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->requestLayout()V

    :cond_1
    return-void
.end method
