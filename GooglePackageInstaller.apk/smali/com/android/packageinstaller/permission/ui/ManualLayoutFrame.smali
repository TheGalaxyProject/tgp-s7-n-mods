.class public Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;
.super Landroid/view/ViewGroup;
.source "ManualLayoutFrame.java"


# instance fields
.field private mContentBottom:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mContentBottom:I

    iput v0, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mWidth:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v4, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mContentBottom:I

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mContentBottom:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    iget v4, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mContentBottom:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v3, v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v2, v1, v4

    iget v4, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mContentBottom:I

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mWidth:I

    if-eqz v2, :cond_1

    iget v0, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mWidth:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    iget v2, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mWidth:I

    if-eq v0, v2, :cond_0

    iput v0, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mWidth:I

    :cond_0
    iget v2, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    iget v2, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mWidth:I

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mWidth:I

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->measureChild(Landroid/view/View;II)V

    return-void

    :sswitch_0
    iget v2, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mWidth:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method
