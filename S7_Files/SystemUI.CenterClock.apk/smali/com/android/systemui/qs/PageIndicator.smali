.class public Lcom/android/systemui/qs/PageIndicator;
.super Landroid/widget/LinearLayout;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PageIndicator$1;
    }
.end annotation


# instance fields
.field private mAnimating:Z

.field private final mAnimationDone:Ljava/lang/Runnable;

.field private mNumPages:I

.field private final mPageDotWidth:I

.field private final mPageIndicatorHeight:I

.field private final mPageIndicatorWidth:I

.field private mPosition:I

.field private final mQueuedPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/PageIndicator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/PageIndicator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/PageIndicator;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/PageIndicator;->setPosition(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mNumPages:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    .line 305
    new-instance v0, Lcom/android/systemui/qs/PageIndicator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PageIndicator$1;-><init>(Lcom/android/systemui/qs/PageIndicator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    .line 45
    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0200

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 44
    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    .line 47
    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0201

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 46
    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    .line 48
    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PageIndicator;->setFocusable(Z)V

    .line 42
    return-void
.end method

.method private animate(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v2, 0x1

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/PageIndicator;->playAnimation(Landroid/widget/ImageView;Z)V

    .line 156
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/qs/PageIndicator;->playAnimation(Landroid/widget/ImageView;Z)V

    .line 189
    iput-boolean v2, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    .line 153
    return-void
.end method

.method private playAnimation(Landroid/widget/ImageView;Z)V
    .locals 6
    .param p1, "indicator"    # Landroid/widget/ImageView;
    .param p2, "selected"    # Z

    .prologue
    const-wide/16 v4, 0xfa

    const/4 v3, 0x2

    .line 201
    if-eqz p2, :cond_0

    .line 202
    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 203
    .local v0, "alphaAnimator":Landroid/animation/ValueAnimator;
    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 208
    .local v1, "scaleAnimator":Landroid/animation/ValueAnimator;
    :goto_0
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 209
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 210
    new-instance v2, Lcom/android/systemui/qs/PageIndicator$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/qs/PageIndicator$2;-><init>(Lcom/android/systemui/qs/PageIndicator;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 217
    new-instance v2, Lcom/android/systemui/qs/PageIndicator$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/systemui/qs/PageIndicator$3;-><init>(Lcom/android/systemui/qs/PageIndicator;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 226
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 227
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 197
    return-void

    .line 205
    .end local v0    # "alphaAnimator":Landroid/animation/ValueAnimator;
    .end local v1    # "scaleAnimator":Landroid/animation/ValueAnimator;
    :cond_0
    new-array v2, v3, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 206
    .restart local v0    # "alphaAnimator":Landroid/animation/ValueAnimator;
    new-array v2, v3, [F

    fill-array-data v2, :array_3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .restart local v1    # "scaleAnimator":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 202
    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 203
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
    .end array-data

    .line 205
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    .line 206
    :array_3
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private resetIndicator()V
    .locals 5

    .prologue
    const v4, 0x3f8ccccd    # 1.1f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-nez v0, :cond_2

    move v2, v4

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    const v2, 0x3e4ccccd    # 0.2f

    goto :goto_1

    :cond_1
    move v2, v3

    .line 136
    goto :goto_2

    :cond_2
    move v2, v3

    .line 137
    goto :goto_3

    .line 133
    :cond_3
    return-void
.end method

.method private setPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 119
    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/PageIndicator;->animate(II)V

    .line 129
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    .line 117
    return-void

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/PageIndicator;->resetIndicator()V

    goto :goto_0
.end method


# virtual methods
.method public setLocation(F)V
    .locals 8
    .param p1, "location"    # F

    .prologue
    const/4 v7, 0x1

    .line 88
    float-to-int v0, p1

    .line 89
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 90
    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 89
    const v5, 0x7f0f05c4

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getLayoutDirection()I

    move-result v3

    if-ne v3, v7, :cond_2

    const/4 v1, 0x1

    .line 94
    .local v1, "isRtl":Z
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 96
    .local v2, "position":I
    if-eqz v1, :cond_0

    iget v3, p0, Lcom/android/systemui/qs/PageIndicator;->mNumPages:I

    add-int/lit8 v3, v3, -0x1

    sub-int v2, v3, v2

    .line 98
    :cond_0
    iget v3, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    if-eq v3, v2, :cond_1

    .line 99
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/PageIndicator;->setPosition(I)V

    .line 87
    :cond_1
    return-void

    .line 93
    .end local v1    # "isRtl":Z
    .end local v2    # "position":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isRtl":Z
    goto :goto_0
.end method

.method public setNumPages(I)V
    .locals 5
    .param p1, "numPages"    # I

    .prologue
    const/4 v3, 0x0

    .line 53
    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/PageIndicator;->setVisibility(I)V

    .line 54
    iget-boolean v2, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    if-eqz v2, :cond_0

    .line 55
    const-string/jumbo v2, "PageIndicator"

    const-string/jumbo v4, "setNumPages during animation"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/PageIndicator;->mNumPages:I

    .line 60
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 61
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/PageIndicator;->removeViewAt(I)V

    goto :goto_1

    .line 53
    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    .line 63
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, p1, :cond_4

    .line 64
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/qs/PageIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 65
    .local v1, "v":Landroid/widget/ImageView;
    const v2, 0x7f020354

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    iget v4, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/PageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    add-int/lit8 v2, p1, -0x1

    if-eq v0, v2, :cond_3

    .line 68
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/qs/PageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 69
    const v4, 0x7f0d0202

    .line 68
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 63
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 72
    .end local v1    # "v":Landroid/widget/ImageView;
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/PageIndicator;->resetIndicator()V

    .line 52
    return-void
.end method
