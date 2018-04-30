.class Lcom/android/packageinstaller/CaffeinatedScrollView;
.super Landroid/widget/ScrollView;
.source "CaffeinatedScrollView.java"


# instance fields
.field private mBottomSlop:I

.field private mFullScrollAction:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private checkFullScrollAction()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/packageinstaller/CaffeinatedScrollView;->mFullScrollAction:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/packageinstaller/CaffeinatedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/packageinstaller/CaffeinatedScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/packageinstaller/CaffeinatedScrollView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/packageinstaller/CaffeinatedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int v1, v2, v3

    sub-int v2, v0, v1

    iget v3, p0, Lcom/android/packageinstaller/CaffeinatedScrollView;->mBottomSlop:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/packageinstaller/CaffeinatedScrollView;->mFullScrollAction:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iput-object v4, p0, Lcom/android/packageinstaller/CaffeinatedScrollView;->mFullScrollAction:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public awakenScrollBars()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/android/packageinstaller/CaffeinatedScrollView;->checkFullScrollAction()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    invoke-direct {p0}, Lcom/android/packageinstaller/CaffeinatedScrollView;->checkFullScrollAction()V

    return-void
.end method

.method public setFullScrollAction(Ljava/lang/Runnable;)V
    .locals 2

    iput-object p1, p0, Lcom/android/packageinstaller/CaffeinatedScrollView;->mFullScrollAction:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/packageinstaller/CaffeinatedScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/packageinstaller/CaffeinatedScrollView;->mBottomSlop:I

    return-void
.end method
