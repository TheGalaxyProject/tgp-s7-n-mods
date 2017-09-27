.class public Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;
.super Landroid/app/Activity;
.source "BoostModeChangeProcessingActivity.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;,
        Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;,
        Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;,
        Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimatedDoneV:Lcom/samsung/android/visualeffect/check/DoneView;

.field private mBoostMode:I

.field private mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

.field private mCircleTextContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDescContainer:Landroid/view/View;

.field private mDoCheckingAnimation:Z

.field private mExtendedTimeTv:Landroid/widget/TextView;

.field private mImgModeBackground:Landroid/widget/ImageView;

.field private mImgModeForeground:Landroid/widget/ImageView;

.field mListView:Landroid/widget/ListView;

.field private mPerformanceIconContainer:Landroid/widget/FrameLayout;

.field private mPrevBoostMode:I

.field private mProcessingDescTv:Landroid/widget/TextView;

.field private mRemainTimeInCircleTv:Landroid/widget/TextView;

.field private mSavingAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Lcom/samsung/android/visualeffect/check/DoneView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mAnimatedDoneV:Lcom/samsung/android/visualeffect/check/DoneView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Lcom/samsung/android/visualeffect/circle/CircleContainer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mDescContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerformanceIconContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPrevBoostMode:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mSavingAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mDoCheckingAnimation:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->startFinishAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    .line 62
    iput-boolean v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mDoCheckingAnimation:Z

    .line 64
    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    .line 65
    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPrevBoostMode:I

    .line 69
    new-instance v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mUiHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method private buildDataFromIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 165
    if-nez p1, :cond_0

    return-void

    .line 167
    :cond_0
    const-string/jumbo v0, "key_next_boost_mode"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    .line 168
    const-string/jumbo v0, "key_prev_boost_mode"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPrevBoostMode:I

    .line 169
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mExtendedTimeTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->updateBoostericon(I)V

    .line 171
    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    packed-switch v0, :pswitch_data_0

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mSavingAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->buildAllItems(Landroid/content/Intent;)V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v5, v4}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    .line 164
    return-void

    .line 173
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    new-array v1, v5, [Ljava/lang/Object;

    .line 174
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPrevBoostMode:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerfModeTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 173
    const v2, 0x7f0b0a74

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 179
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    new-array v1, v5, [Ljava/lang/Object;

    .line 180
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mBoostMode:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerfModeTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 179
    const v2, 0x7f0b0a76

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private startFinishAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 191
    const v4, 0x7f0a00cc

    invoke-static {p0, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getFloatFromDimension(Landroid/content/Context;I)F

    move-result v0

    .line 192
    .local v0, "bounceUpTo":F
    new-instance v1, Lcom/samsung/android/visualeffect/circle/BounceAnimation;

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-direct {v1, v4, v6, v0, v6}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;-><init>(Landroid/view/View;FFF)V

    .line 193
    .local v1, "circleBounce":Lcom/samsung/android/visualeffect/circle/BounceAnimation;
    new-instance v4, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;Lcom/samsung/android/visualeffect/circle/BounceAnimation;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->setBounceListener(Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;)V

    .line 235
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 236
    .local v2, "fadeout":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->getBounceUpDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 237
    new-instance v4, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v4}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 238
    invoke-virtual {v2, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 240
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 241
    .local v3, "fadeoutWithListener":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->getBounceUpDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 242
    new-instance v4, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v4}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 243
    invoke-virtual {v3, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 244
    new-instance v4, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$3;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 262
    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->startAnimation()V

    .line 263
    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleTextContainer:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 265
    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mDescContainer:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 190
    return-void
.end method

.method private updateBoostericon(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mImgModeBackground:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getModeImageBgId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mImgModeForeground:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getModeImageFgId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 130
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    iput-object p0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    .line 98
    const v0, 0x7f0401c2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->setContentView(I)V

    .line 100
    const v0, 0x7f110517

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerformanceIconContainer:Landroid/widget/FrameLayout;

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mPerformanceIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 102
    const v0, 0x7f110518

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mImgModeBackground:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f110519

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mImgModeForeground:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setVisibility(I)V

    .line 107
    const v0, 0x7f11003f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleTextContainer:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleTextContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    const v1, 0x7f0d0191

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircleColor(I)V

    .line 110
    const v0, 0x7f110467

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->SCORE_TEXT:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircle(II)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircleListener(Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;)V

    .line 117
    const v0, 0x7f110516

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/check/DoneView;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mAnimatedDoneV:Lcom/samsung/android/visualeffect/check/DoneView;

    .line 119
    const v0, 0x7f11051a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mDescContainer:Landroid/view/View;

    .line 120
    const v0, 0x7f11051b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f11051c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mExtendedTimeTv:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f11051d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mListView:Landroid/widget/ListView;

    .line 124
    new-instance v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mSavingAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->buildDataFromIntent(Landroid/content/Intent;)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mSavingAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 94
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->removeCircleListener()V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setVisibility(I)V

    .line 153
    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    .line 155
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 149
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 454
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 455
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 456
    return v1

    .line 459
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->finish()V

    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 143
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v1, 0x138a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 136
    return-void
.end method

.method public onRoundEnd()V
    .locals 2

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mDoCheckingAnimation:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x1389

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 159
    :cond_0
    return-void
.end method
