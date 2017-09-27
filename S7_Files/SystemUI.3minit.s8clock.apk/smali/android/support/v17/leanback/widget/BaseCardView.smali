.class public Landroid/support/v17/leanback/widget/BaseCardView;
.super Landroid/widget/FrameLayout;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/BaseCardView$1;,
        Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;,
        Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;,
        Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;,
        Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    }
.end annotation


# static fields
.field private static final LB_PRESSED_STATE_SET:[I


# instance fields
.field private final mActivatedAnimDuration:I

.field private mAnim:Landroid/view/animation/Animation;

.field private final mAnimationTrigger:Ljava/lang/Runnable;

.field private mCardType:I

.field private mDelaySelectedAnim:Z

.field private mExtraViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraVisibility:I

.field private mInfoAlpha:F

.field private mInfoOffset:F

.field private mInfoViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoVisFraction:F

.field private mInfoVisibility:I

.field private mMainViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private final mSelectedAnimDuration:I

.field private mSelectedAnimationDelay:I


# direct methods
.method static synthetic -get0(Landroid/support/v17/leanback/widget/BaseCardView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v17/leanback/widget/BaseCardView;)F
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    return v0
.end method

.method static synthetic -get2(Landroid/support/v17/leanback/widget/BaseCardView;)F
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    return v0
.end method

.method static synthetic -get3(Landroid/support/v17/leanback/widget/BaseCardView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Landroid/support/v17/leanback/widget/BaseCardView;F)F
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    return p1
.end method

.method static synthetic -set1(Landroid/support/v17/leanback/widget/BaseCardView;F)F
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    return p1
.end method

.method static synthetic -set2(Landroid/support/v17/leanback/widget/BaseCardView;F)F
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    return p1
.end method

.method static synthetic -wrap0(Landroid/support/v17/leanback/widget/BaseCardView;Z)V
    .locals 0
    .param p1, "shown"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->animateInfoOffset(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 134
    const v1, 0x10100a7

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 133
    sput-object v0, Landroid/support/v17/leanback/widget/BaseCardView;->LB_PRESSED_STATE_SET:[I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 148
    sget v0, Landroid/support/v17/leanback/R$attr;->baseCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    .line 136
    new-instance v3, Landroid/support/v17/leanback/widget/BaseCardView$1;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/BaseCardView$1;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    .line 154
    sget-object v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 158
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_cardType:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    .line 159
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_cardForeground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 160
    .local v2, "cardForeground":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/BaseCardView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    :cond_0
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_cardBackground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 164
    .local v1, "cardBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 165
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/BaseCardView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 167
    :cond_1
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_infoVisibility:I

    .line 168
    const/4 v4, 0x1

    .line 167
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 169
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_extraVisibility:I

    .line 170
    const/4 v4, 0x2

    .line 169
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraVisibility:I

    .line 172
    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraVisibility:I

    iget v4, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ge v3, v4, :cond_2

    .line 173
    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraVisibility:I

    .line 177
    :cond_2
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_selectedAnimationDelay:I

    .line 178
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$integer;->lb_card_selected_animation_delay:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 176
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimationDelay:I

    .line 181
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_selectedAnimationDuration:I

    .line 182
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$integer;->lb_card_selected_animation_duration:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 180
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    .line 185
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_activatedAnimationDuration:I

    .line 186
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$integer;->lb_card_activated_animation_duration:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 185
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 184
    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mActivatedAnimDuration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    iput-boolean v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    .line 193
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    .line 194
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 195
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 197
    iput v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 198
    iput v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 151
    return-void

    .line 187
    .end local v1    # "cardBackground":Landroid/graphics/drawable/Drawable;
    .end local v2    # "cardForeground":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v3

    .line 188
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    throw v3
.end method

.method private animateInfoAlpha(Z)V
    .locals 4
    .param p1, "shown"    # Z

    .prologue
    .line 741
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 743
    if-eqz p1, :cond_0

    .line 744
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 745
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 744
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    .end local v0    # "i":I
    :cond_0
    new-instance v2, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;

    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {v2, p0, v3, v1}, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    .line 750
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mActivatedAnimDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 751
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 752
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v2, Landroid/support/v17/leanback/widget/BaseCardView$4;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/widget/BaseCardView$4;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 771
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/BaseCardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 740
    return-void

    .line 749
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private animateInfoHeight(Z)V
    .locals 8
    .param p1, "shown"    # Z

    .prologue
    const/4 v7, 0x0

    .line 696
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 698
    const/4 v0, 0x0

    .line 699
    .local v0, "extraHeight":I
    if-eqz p1, :cond_0

    .line 700
    iget v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 701
    .local v4, "widthSpec":I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 703
    .local v2, "heightSpec":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 704
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 705
    .local v1, "extraView":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 706
    invoke-virtual {v1, v4, v2}, Landroid/view/View;->measure(II)V

    .line 707
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 703
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 711
    .end local v1    # "extraView":Landroid/view/View;
    .end local v2    # "heightSpec":I
    .end local v3    # "i":I
    .end local v4    # "widthSpec":I
    :cond_0
    new-instance v6, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;

    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    if-eqz p1, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {v6, p0, v7, v5}, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V

    iput-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    .line 712
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 713
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 714
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v6, Landroid/support/v17/leanback/widget/BaseCardView$3;

    invoke-direct {v6, p0}, Landroid/support/v17/leanback/widget/BaseCardView$3;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 733
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/BaseCardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 695
    return-void

    .line 711
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private animateInfoOffset(Z)V
    .locals 8
    .param p1, "shown"    # Z

    .prologue
    const/4 v5, 0x0

    .line 653
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, "extraHeight":I
    if-eqz p1, :cond_0

    .line 657
    iget v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 658
    .local v4, "widthSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 660
    .local v2, "heightSpec":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 661
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 662
    .local v1, "extraView":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 663
    invoke-virtual {v1, v4, v2}, Landroid/view/View;->measure(II)V

    .line 664
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 660
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 668
    .end local v1    # "extraView":Landroid/view/View;
    .end local v2    # "heightSpec":I
    .end local v3    # "i":I
    .end local v4    # "widthSpec":I
    :cond_0
    new-instance v6, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;

    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    if-eqz p1, :cond_1

    .end local v0    # "extraHeight":I
    :goto_1
    int-to-float v5, v0

    invoke-direct {v6, p0, v7, v5}, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V

    iput-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    .line 669
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 670
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 671
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v6, Landroid/support/v17/leanback/widget/BaseCardView$2;

    invoke-direct {v6, p0}, Landroid/support/v17/leanback/widget/BaseCardView$2;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 690
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/BaseCardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 652
    return-void

    .restart local v0    # "extraHeight":I
    :cond_1
    move v0, v5

    .line 668
    goto :goto_1
.end method

.method private applyActiveState(Z)V
    .locals 2
    .param p1, "active"    # Z

    .prologue
    const/4 v1, 0x1

    .line 582
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-gt v0, v1, :cond_0

    .line 583
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->setInfoViewVisibility(Z)V

    .line 585
    :cond_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasExtraRegion()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraVisibility:I

    if-gt v0, v1, :cond_1

    .line 581
    :cond_1
    return-void
.end method

.method private applySelectedState(Z)V
    .locals 4
    .param p1, "focused"    # Z

    .prologue
    .line 623
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 625
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 627
    if-eqz p1, :cond_2

    .line 628
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    if-nez v0, :cond_1

    .line 629
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->post(Ljava/lang/Runnable;)Z

    .line 630
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimationDelay:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v17/leanback/widget/BaseCardView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 635
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->animateInfoOffset(Z)V

    goto :goto_0

    .line 637
    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 638
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->setInfoViewVisibility(Z)V

    goto :goto_0
.end method

.method private cancelAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 643
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 645
    iput-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    .line 642
    :cond_0
    return-void
.end method

.method private findChildrenViews()V
    .locals 11

    .prologue
    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 518
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 519
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 520
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 522
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getChildCount()I

    move-result v1

    .line 524
    .local v1, "count":I
    iget v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    invoke-direct {p0, v6}, Landroid/support/v17/leanback/widget/BaseCardView;->isRegionVisible(I)Z

    move-result v4

    .line 525
    .local v4, "infoVisible":Z
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasExtraRegion()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_1

    const/4 v2, 0x1

    .line 527
    .local v2, "extraVisible":Z
    :goto_0
    iget v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    if-ne v6, v10, :cond_0

    iget v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v6, v10, :cond_0

    .line 528
    if-eqz v4, :cond_2

    iget v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_2

    const/4 v4, 0x1

    .line 531
    .end local v4    # "infoVisible":Z
    :cond_0
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_8

    .line 532
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/BaseCardView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 534
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_3

    .line 531
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 525
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "extraVisible":Z
    .end local v3    # "i":I
    .restart local v4    # "infoVisible":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "extraVisible":Z
    goto :goto_0

    .line 528
    :cond_2
    const/4 v4, 0x0

    .local v4, "infoVisible":Z
    goto :goto_1

    .line 538
    .end local v4    # "infoVisible":Z
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    .line 540
    .local v5, "lp":Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    iget v6, v5, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    const/4 v9, 0x1

    if-ne v6, v9, :cond_5

    .line 541
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    if-eqz v4, :cond_4

    move v6, v7

    :goto_4
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    move v6, v8

    goto :goto_4

    .line 543
    :cond_5
    iget v6, v5, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    if-ne v6, v10, :cond_7

    .line 544
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    if-eqz v2, :cond_6

    move v6, v7

    :goto_5
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    move v6, v8

    goto :goto_5

    .line 548
    :cond_7
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 517
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    :cond_8
    return-void
.end method

.method private hasExtraRegion()Z
    .locals 2

    .prologue
    .line 500
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasInfoRegion()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 496
    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isRegionVisible(I)Z
    .locals 2
    .param p1, "regionVisibility"    # I

    .prologue
    const/4 v0, 0x0

    .line 504
    packed-switch p1, :pswitch_data_0

    .line 513
    return v0

    .line 506
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 508
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isActivated()Z

    move-result v0

    return v0

    .line 510
    :pswitch_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    :cond_0
    return v0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setInfoViewVisibility(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 591
    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 594
    if-eqz p1, :cond_0

    .line 595
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 596
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 595
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 600
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 602
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 603
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 602
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 605
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 590
    .end local v0    # "i":I
    :cond_3
    :goto_3
    return-void

    .line 607
    :cond_4
    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    if-ne v1, v5, :cond_7

    .line 609
    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v1, v5, :cond_5

    .line 610
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->animateInfoHeight(Z)V

    goto :goto_3

    .line 612
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 613
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz p1, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v2, v4

    .line 613
    goto :goto_5

    .line 616
    .end local v0    # "i":I
    :cond_7
    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 618
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->animateInfoAlpha(Z)V

    goto :goto_3
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 796
    instance-of v0, p1, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 781
    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 780
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->generateDefaultLayoutParams()Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 776
    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 787
    instance-of v0, p1, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    if-eqz v0, :cond_0

    .line 788
    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    check-cast p1, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;)V

    return-object v0

    .line 790
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 786
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 775
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7
    .param p1, "extraSpace"    # I

    .prologue
    .line 558
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 559
    .local v4, "s":[I
    array-length v0, v4

    .line 560
    .local v0, "N":I
    const/4 v3, 0x0

    .line 561
    .local v3, "pressed":Z
    const/4 v1, 0x0

    .line 562
    .local v1, "enabled":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 563
    aget v5, v4, v2

    const v6, 0x10100a7

    if-ne v5, v6, :cond_0

    .line 564
    const/4 v3, 0x1

    .line 566
    :cond_0
    aget v5, v4, v2

    const v6, 0x101009e

    if-ne v5, v6, :cond_1

    .line 567
    const/4 v1, 0x1

    .line 562
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 570
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 571
    sget-object v5, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    return-object v5

    .line 572
    :cond_3
    if-eqz v3, :cond_4

    .line 573
    sget-object v5, Landroid/support/v17/leanback/widget/BaseCardView;->LB_PRESSED_STATE_SET:[I

    return-object v5

    .line 574
    :cond_4
    if-eqz v1, :cond_5

    .line 575
    sget-object v5, Landroid/view/View;->ENABLED_STATE_SET:[I

    return-object v5

    .line 577
    :cond_5
    sget-object v5, Landroid/view/View;->EMPTY_STATE_SET:[I

    return-object v5
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 488
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 489
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 490
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 491
    iput v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 492
    iput v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 487
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 416
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingTop()I

    move-result v7

    int-to-float v0, v7

    .line 419
    .local v0, "currBottom":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 420
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 421
    .local v5, "mainView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    .line 422
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v7

    .line 423
    float-to-int v8, v0

    .line 424
    iget v9, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    .line 425
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v0

    float-to-int v10, v10

    .line 422
    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 426
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v0, v7

    .line 419
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    .end local v5    # "mainView":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 431
    const/4 v3, 0x0

    .line 432
    .local v3, "infoHeight":F
    const/4 v2, 0x0

    :goto_1
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 433
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v3, v7

    .line 432
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 436
    :cond_2
    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 438
    sub-float/2addr v0, v3

    .line 439
    const/4 v7, 0x0

    cmpg-float v7, v0, v7

    if-gez v7, :cond_3

    .line 440
    const/4 v0, 0x0

    .line 450
    :cond_3
    :goto_2
    const/4 v2, 0x0

    :goto_3
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 451
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 452
    .local v4, "infoView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_9

    .line 453
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 454
    .local v6, "viewHeight":I
    int-to-float v7, v6

    cmpl-float v7, v7, v3

    if-lez v7, :cond_4

    .line 455
    float-to-int v6, v3

    .line 457
    :cond_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v7

    .line 458
    float-to-int v8, v0

    .line 459
    iget v9, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    .line 460
    int-to-float v10, v6

    add-float/2addr v10, v0

    float-to-int v10, v10

    .line 457
    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 461
    int-to-float v7, v6

    add-float/2addr v0, v7

    .line 462
    int-to-float v7, v6

    sub-float/2addr v3, v7

    .line 463
    const/4 v7, 0x0

    cmpg-float v7, v3, v7

    if-gtz v7, :cond_9

    .line 469
    .end local v4    # "infoView":Landroid/view/View;
    .end local v6    # "viewHeight":I
    :cond_5
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasExtraRegion()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 470
    const/4 v2, 0x0

    :goto_4
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_a

    .line 471
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 472
    .local v1, "extraView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_6

    .line 473
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v7

    .line 474
    float-to-int v8, v0

    .line 475
    iget v9, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    .line 476
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v0

    float-to-int v10, v10

    .line 473
    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 477
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v0, v7

    .line 470
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 442
    .end local v1    # "extraView":Landroid/view/View;
    :cond_7
    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    .line 443
    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 444
    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    mul-float/2addr v3, v7

    goto/16 :goto_2

    .line 447
    :cond_8
    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    sub-float/2addr v0, v7

    goto/16 :goto_2

    .line 450
    .restart local v4    # "infoView":Landroid/view/View;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 483
    .end local v3    # "infoHeight":F
    .end local v4    # "infoView":Landroid/view/View;
    :cond_a
    sub-int v7, p4, p2

    sub-int v8, p5, p3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10, v7, v8}, Landroid/support/v17/leanback/widget/BaseCardView;->onSizeChanged(IIII)V

    .line 415
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 351
    const/4 v12, 0x0

    iput v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 352
    const/4 v12, 0x0

    iput v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredHeight:I

    .line 353
    const/4 v10, 0x0

    .line 354
    .local v10, "state":I
    const/4 v8, 0x0

    .line 355
    .local v8, "mainHeight":I
    const/4 v6, 0x0

    .line 356
    .local v6, "infoHeight":I
    const/4 v2, 0x0

    .line 358
    .local v2, "extraHeight":I
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->findChildrenViews()V

    .line 360
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 362
    .local v11, "unspecifiedSpec":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_1

    .line 363
    iget-object v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 364
    .local v9, "mainView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_0

    .line 365
    invoke-virtual {p0, v9, v11, v11}, Landroid/support/v17/leanback/widget/BaseCardView;->measureChild(Landroid/view/View;II)V

    .line 366
    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 367
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v8, v12

    .line 368
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v12

    invoke-static {v10, v12}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    .line 362
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 371
    .end local v9    # "mainView":Landroid/view/View;
    :cond_1
    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {p0, v12}, Landroid/support/v17/leanback/widget/BaseCardView;->setPivotX(F)V

    .line 372
    div-int/lit8 v12, v8, 0x2

    int-to-float v12, v12

    invoke-virtual {p0, v12}, Landroid/support/v17/leanback/widget/BaseCardView;->setPivotY(F)V

    .line 376
    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 378
    .local v1, "cardWidthMeasureSpec":I
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 379
    const/4 v4, 0x0

    :goto_1
    iget-object v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_4

    .line 380
    iget-object v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 381
    .local v7, "infoView":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_3

    .line 382
    invoke-virtual {p0, v7, v1, v11}, Landroid/support/v17/leanback/widget/BaseCardView;->measureChild(Landroid/view/View;II)V

    .line 383
    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_2

    .line 384
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v6, v12

    .line 386
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    move-result v12

    invoke-static {v10, v12}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    .line 379
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 390
    .end local v7    # "infoView":Landroid/view/View;
    :cond_4
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasExtraRegion()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 391
    const/4 v4, 0x0

    :goto_2
    iget-object v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_6

    .line 392
    iget-object v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 393
    .local v3, "extraView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_5

    .line 394
    invoke-virtual {p0, v3, v1, v11}, Landroid/support/v17/leanback/widget/BaseCardView;->measureChild(Landroid/view/View;II)V

    .line 395
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v2, v12

    .line 396
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v12

    invoke-static {v10, v12}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    .line 391
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 402
    .end local v3    # "extraView":Landroid/view/View;
    :cond_6
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v12

    if-eqz v12, :cond_7

    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    const/4 v5, 0x1

    .line 403
    .local v5, "infoAnimating":Z
    :goto_3
    int-to-float v13, v8

    .line 404
    if-eqz v5, :cond_8

    int-to-float v12, v6

    iget v14, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    mul-float/2addr v12, v14

    .line 403
    :goto_4
    add-float/2addr v12, v13

    .line 405
    int-to-float v13, v2

    .line 403
    add-float/2addr v13, v12

    .line 405
    if-eqz v5, :cond_9

    const/4 v12, 0x0

    .line 403
    :goto_5
    sub-float v12, v13, v12

    float-to-int v12, v12

    iput v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredHeight:I

    .line 408
    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v13

    add-int/2addr v12, v13

    .line 409
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingRight()I

    move-result v13

    .line 408
    add-int/2addr v12, v13

    move/from16 v0, p1

    invoke-static {v12, v0, v10}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v12

    .line 410
    iget v13, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredHeight:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingTop()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    .line 411
    shl-int/lit8 v14, v10, 0x10

    .line 410
    move/from16 v0, p2

    invoke-static {v13, v0, v14}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v13

    .line 408
    invoke-virtual {p0, v12, v13}, Landroid/support/v17/leanback/widget/BaseCardView;->setMeasuredDimension(II)V

    .line 350
    return-void

    .line 402
    .end local v5    # "infoAnimating":Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 404
    .restart local v5    # "infoAnimating":Z
    :cond_8
    int-to-float v12, v6

    goto :goto_4

    .line 405
    :cond_9
    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    goto :goto_5
.end method

.method public setActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 322
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isActivated()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 323
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 324
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isActivated()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->applyActiveState(Z)V

    .line 321
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 338
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 339
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 340
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->applySelectedState(Z)V

    .line 337
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 947
    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
