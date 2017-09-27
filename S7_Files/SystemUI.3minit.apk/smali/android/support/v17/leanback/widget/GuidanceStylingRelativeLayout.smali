.class Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "GuidanceStylingRelativeLayout.java"


# instance fields
.field private mTitleKeylinePercent:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->init()V

    .line 33
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 40
    sget-object v2, Landroid/support/v17/leanback/R$styleable;->LeanbackGuidedStepTheme:[I

    .line 39
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v17/leanback/R$styleable;->LeanbackGuidedStepTheme_guidedStepKeyline:I

    .line 42
    const/high16 v2, 0x42200000    # 40.0f

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->mTitleKeylinePercent:F

    .line 43
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 48
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 50
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v11

    sget v12, Landroid/support/v17/leanback/R$id;->guidance_title:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 51
    .local v7, "mTitleView":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v11

    sget v12, Landroid/support/v17/leanback/R$id;->guidance_breadcrumb:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 52
    .local v2, "mBreadcrumbView":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v11

    .line 53
    sget v12, Landroid/support/v17/leanback/R$id;->guidance_description:I

    .line 52
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 54
    .local v4, "mDescriptionView":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v11

    sget v12, Landroid/support/v17/leanback/R$id;->guidance_icon:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 55
    .local v5, "mIconView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->mTitleKeylinePercent:F

    mul-float/2addr v11, v12

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    float-to-int v6, v11

    .line 57
    .local v6, "mTitleKeylinePixels":I
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-ne v11, p0, :cond_1

    .line 58
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 59
    .local v9, "textPaint":Landroid/graphics/Paint;
    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v10, v11

    .line 60
    .local v10, "titleViewTextHeight":I
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    .line 61
    .local v3, "mBreadcrumbViewHeight":I
    sub-int v11, v6, v10

    sub-int/2addr v11, v3

    .line 62
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v12

    .line 61
    sub-int v1, v11, v12

    .line 63
    .local v1, "guidanceTextContainerTop":I
    invoke-virtual {v2}, Landroid/widget/TextView;->getTop()I

    move-result v11

    sub-int v8, v1, v11

    .line 65
    .local v8, "offset":I
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-ne v11, p0, :cond_0

    .line 66
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->offsetTopAndBottom(I)V

    .line 69
    :cond_0
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->offsetTopAndBottom(I)V

    .line 71
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-ne v11, p0, :cond_1

    .line 72
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->offsetTopAndBottom(I)V

    .line 76
    .end local v1    # "guidanceTextContainerTop":I
    .end local v3    # "mBreadcrumbViewHeight":I
    .end local v8    # "offset":I
    .end local v9    # "textPaint":Landroid/graphics/Paint;
    .end local v10    # "titleViewTextHeight":I
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-ne v11, p0, :cond_2

    .line 77
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 78
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int v11, v6, v11

    .line 79
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 47
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method
