.class public Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;
.super Landroid/view/ViewGroup;
.source "ManualLayoutFrame.java"


# instance fields
.field private mContentBottom:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mContentBottom:I

    .line 33
    iput v0, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mWidth:I

    .line 31
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-virtual {p0, v4}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "content":Landroid/view/View;
    iget v4, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mContentBottom:I

    if-nez v4, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mContentBottom:I

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 69
    .local v1, "contentLeft":I
    iget v4, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mContentBottom:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v3, v4, v5

    .line 70
    .local v3, "contentTop":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v2, v1, v4

    .line 71
    .local v2, "contentRight":I
    iget v4, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mContentBottom:I

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 63
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 38
    iget v2, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mWidth:I

    if-eqz v2, :cond_1

    .line 39
    iget v0, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mWidth:I

    .line 40
    .local v0, "newWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 41
    .local v1, "widthMode":I
    sparse-switch v1, :sswitch_data_0

    .line 49
    :goto_0
    iget v2, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mWidth:I

    if-eq v0, v2, :cond_0

    .line 50
    iput v0, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mWidth:I

    .line 52
    :cond_0
    iget v2, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 54
    .end local v0    # "newWidth":I
    .end local v1    # "widthMode":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 55
    iget v2, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mWidth:I

    if-nez v2, :cond_2

    .line 56
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mWidth:I

    .line 59
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->measureChild(Landroid/view/View;II)V

    .line 37
    return-void

    .line 43
    .restart local v0    # "newWidth":I
    .restart local v1    # "widthMode":I
    :sswitch_0
    iget v2, p0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->mWidth:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 46
    :sswitch_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method
