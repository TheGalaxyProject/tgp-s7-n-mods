.class public Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;
.super Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;
.source "FingerPrintAlertView.java"


# instance fields
.field private mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

.field private mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

.field private mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

.field private mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

.field private mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

.field private mImgViewAlertFingerPrint03:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/view/animation/AnimationSet;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/view/animation/AnimationSet;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/view/animation/AnimationSet;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createAnimation()V
    .locals 12

    .prologue
    .line 77
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    .line 78
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    .line 79
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    .line 82
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v3, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 83
    .local v3, "showAnimationAlertFinger01":Landroid/view/animation/Animation;
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 84
    .local v6, "showOnAnimationAlertFinger01":Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v0, "hideAnimationAlertFinger01":Landroid/view/animation/Animation;
    const-wide/16 v10, 0x14d

    .line 86
    invoke-virtual {v3, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 87
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v10, 0x341

    .line 89
    invoke-virtual {v6, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v10, 0x14d

    .line 90
    invoke-virtual {v6, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 91
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v10, 0x341

    .line 93
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v10, 0x48e

    .line 94
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 95
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 98
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v4, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 99
    .local v4, "showAnimationAlertFinger02":Landroid/view/animation/Animation;
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 100
    .local v7, "showOnAnimationAlertFinger02":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {v1, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v1, "hideAnimationAlertFinger02":Landroid/view/animation/Animation;
    const-wide/16 v10, 0x14d

    .line 102
    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 103
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v10, 0x341

    .line 105
    invoke-virtual {v7, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v10, 0x14d

    .line 106
    invoke-virtual {v7, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 107
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v10, 0x341

    .line 109
    invoke-virtual {v1, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v10, 0x48e

    .line 110
    invoke-virtual {v1, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 111
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 113
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    const-wide/16 v10, 0x48e

    invoke-virtual {v9, v10, v11}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 116
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v5, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 117
    .local v5, "showAnimationAlertFinger03":Landroid/view/animation/Animation;
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 118
    .local v8, "showOnAnimationAlertFinger03":Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {v2, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v2, "hideAnimationAlertFinger03":Landroid/view/animation/Animation;
    const-wide/16 v10, 0x14d

    .line 120
    invoke-virtual {v5, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 121
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v10, 0x341

    .line 123
    invoke-virtual {v8, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v10, 0x14d

    .line 124
    invoke-virtual {v8, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 125
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v10, 0x341

    .line 127
    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v10, 0x48e

    .line 128
    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 129
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 131
    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    const-wide/16 v10, 0x91c

    invoke-virtual {v9, v10, v11}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 132
    return-void
.end method

.method private setAnimation()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->createAnimation()V

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setAnimationListener()V

    .line 74
    return-void
.end method

.method private setAnimationListener()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$1;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$2;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$3;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 183
    return-void
.end method

.method private setVerticalGapDP(I)V
    .locals 2
    .param p1, "gap"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 69
    return-void
.end method

.method private startInternalAnimation()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger01:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger03:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 189
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 202
    return-void
.end method

.method protected getMaxStatus()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 214
    return v0
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 46
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$layout;->layout_finger_print_alert_view:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->addView(Landroid/view/View;)V

    .line 49
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$id;->img_alert_fingerprint_01:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    .line 50
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$id;->img_alert_fingerprint_02:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    .line 51
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$id;->img_alert_fingerprint_03:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/visualeffect/progressfingerscan/R$dimen;->popup_alert_vertical_gap:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setVerticalGapDP(I)V

    .line 54
    return-void
.end method

.method protected onUpdate(IF)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "value"    # F

    .prologue
    .line 210
    return-void
.end method

.method protected setAnimator(IZ)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "start"    # Z

    .prologue
    .line 206
    return-void
.end method

.method public setImageResources(III)V
    .locals 2
    .param p1, "resBracket"    # I
    .param p2, "resFinger"    # I
    .param p3, "gap"    # I

    .prologue
    .line 57
    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$id;->img_alert_bracket:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 58
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint01:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint03:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    invoke-direct {p0, p3}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setVerticalGapDP(I)V

    .line 64
    return-void
.end method

.method public startAnimation()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setAnimation()V

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->startInternalAnimation()V

    .line 195
    return-void
.end method
