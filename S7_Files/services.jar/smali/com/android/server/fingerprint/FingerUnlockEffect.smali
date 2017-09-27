.class public Lcom/android/server/fingerprint/FingerUnlockEffect;
.super Landroid/widget/FrameLayout;
.source "FingerUnlockEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerUnlockEffect$1;,
        Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;
    }
.end annotation


# static fields
.field private static CIRCLE_BAND_RES:[I

.field private static EFFECT_INTRO_CIRCL_BAND_ALPHA_DELAY:I

.field private static EFFECT_INTRO_CIRCL_BAND_ALPHA_GAP:I

.field private static EFFECT_SCALE_MAX:F

.field private static EFFECT_SIZE_DP:F


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAnim:Landroid/view/animation/Animation;

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCenterCircle:Landroid/view/View;

.field private mCircleBandContainer:Landroid/widget/FrameLayout;

.field private mCircleBands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectSize:I

.field private mStatus:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;


# direct methods
.method static synthetic -get0(Lcom/android/server/fingerprint/FingerUnlockEffect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/fingerprint/FingerUnlockEffect;)Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mStatus:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/fingerprint/FingerUnlockEffect;Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;)Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mStatus:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const v0, 0x3f8ccccd    # 1.1f

    sput v0, Lcom/android/server/fingerprint/FingerUnlockEffect;->EFFECT_SCALE_MAX:F

    .line 24
    const v0, 0x43106000    # 144.375f

    sput v0, Lcom/android/server/fingerprint/FingerUnlockEffect;->EFFECT_SIZE_DP:F

    .line 25
    const/16 v0, 0x53

    sput v0, Lcom/android/server/fingerprint/FingerUnlockEffect;->EFFECT_INTRO_CIRCL_BAND_ALPHA_DELAY:I

    .line 26
    const/16 v0, 0x21

    sput v0, Lcom/android/server/fingerprint/FingerUnlockEffect;->EFFECT_INTRO_CIRCL_BAND_ALPHA_GAP:I

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/fingerprint/FingerUnlockEffect;->CIRCLE_BAND_RES:[I

    .line 18
    return-void

    .line 30
    :array_0
    .array-data 4
        0x108032d
        0x108032e
        0x108032f
        0x1080330
        0x1080331
        0x1080332
        0x1080333
        0x1080334
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const-string/jumbo v0, "FingerUnlockEffect"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mCircleBands:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerUnlockEffect$1;-><init>(Lcom/android/server/fingerprint/FingerUnlockEffect;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerUnlockEffect;->initialize(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const-string/jumbo v0, "FingerUnlockEffect"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mCircleBands:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerUnlockEffect$1;-><init>(Lcom/android/server/fingerprint/FingerUnlockEffect;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerUnlockEffect;->initialize(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const-string/jumbo v0, "FingerUnlockEffect"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mCircleBands:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerUnlockEffect$1;-><init>(Lcom/android/server/fingerprint/FingerUnlockEffect;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerUnlockEffect;->initialize(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    const-string/jumbo v0, "FingerUnlockEffect"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mCircleBands:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerUnlockEffect$1;-><init>(Lcom/android/server/fingerprint/FingerUnlockEffect;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerUnlockEffect;->initialize(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerUnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    sget v5, Lcom/android/server/fingerprint/FingerUnlockEffect;->EFFECT_SIZE_DP:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 75
    .local v1, "effectViewSize":I
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mCircleBandContainer:Landroid/widget/FrameLayout;

    .line 76
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/android/server/fingerprint/FingerUnlockEffect;->CIRCLE_BAND_RES:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 77
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, "circlBandView":Landroid/view/View;
    sget-object v4, Lcom/android/server/fingerprint/FingerUnlockEffect;->CIRCLE_BAND_RES:[I

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 79
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mCircleBandContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 80
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mCircleBands:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "circlBandView":Landroid/view/View;
    :cond_0
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 84
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mCircleBandContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/fingerprint/FingerUnlockEffect;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/fingerprint/FingerUnlockEffect;->setAlpha(F)V

    .line 94
    sget-object v4, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->HIDDEN:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    iput-object v4, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mStatus:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    .line 96
    sget v4, Lcom/android/server/fingerprint/FingerUnlockEffect;->EFFECT_SCALE_MAX:F

    int-to-float v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mEffectSize:I

    .line 71
    return-void
.end method

.method private removeAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 206
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerUnlockEffect;->clearAnimation()V

    .line 207
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mAnim:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mCircleBandContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 213
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mCircleBands:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cbView$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 214
    .local v0, "cbView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    .line 205
    .end local v0    # "cbView":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerUnlockEffect;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mEffectSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerUnlockEffect;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mEffectSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 65
    return-void
.end method

.method public runFailAnimation()Z
    .locals 6

    .prologue
    .line 176
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "runFailAnimation mStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mStatus:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mStatus:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    sget-object v3, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->SHOWN:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    if-eq v2, v3, :cond_1

    .line 178
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mStatus:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    sget-object v3, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->INTRO:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    if-ne v2, v3, :cond_0

    .line 179
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 180
    .local v1, "mHandler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/fingerprint/FingerUnlockEffect$3;

    invoke-direct {v2, p0}, Lcom/android/server/fingerprint/FingerUnlockEffect$3;-><init>(Lcom/android/server/fingerprint/FingerUnlockEffect;)V

    .line 185
    const-wide/16 v4, 0xc8

    .line 180
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    .end local v1    # "mHandler":Landroid/os/Handler;
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 190
    :cond_1
    sget-object v2, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->FAIL:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mStatus:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    .line 192
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerUnlockEffect;->removeAnimation()V

    .line 193
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerUnlockEffect;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 194
    .local v0, "context":Landroid/content/Context;
    const v2, 0x10a0035

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mAnim:Landroid/view/animation/Animation;

    .line 195
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mCircleBandContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 200
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mAnim:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 202
    const/4 v2, 0x1

    return v2
.end method

.method public runIntroAnimation()Z
    .locals 10

    .prologue
    .line 100
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mStatus:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    sget-object v7, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->HIDDEN:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    if-eq v6, v7, :cond_0

    .line 101
    const/4 v6, 0x0

    return v6

    .line 104
    :cond_0
    sget-object v6, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->INTRO:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    iput-object v6, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mStatus:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    .line 106
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0, v6}, Lcom/android/server/fingerprint/FingerUnlockEffect;->setAlpha(F)V

    .line 107
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerUnlockEffect;->removeAnimation()V

    .line 108
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerUnlockEffect;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 110
    .local v2, "context":Landroid/content/Context;
    sget v0, Lcom/android/server/fingerprint/FingerUnlockEffect;->EFFECT_INTRO_CIRCL_BAND_ALPHA_DELAY:I

    .line 111
    .local v0, "base_offset":I
    sget v3, Lcom/android/server/fingerprint/FingerUnlockEffect;->EFFECT_INTRO_CIRCL_BAND_ALPHA_GAP:I

    .line 114
    .local v3, "diff_offset":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mCircleBands:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 115
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mCircleBands:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 116
    .local v1, "cbView":Landroid/view/View;
    const v6, 0x10a006b

    invoke-static {v2, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mAnim:Landroid/view/animation/Animation;

    .line 117
    mul-int v6, v3, v4

    add-int v5, v0, v6

    .line 118
    .local v5, "start_offset":I
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mAnim:Landroid/view/animation/Animation;

    int-to-long v8, v5

    invoke-virtual {v6, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 119
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mCircleBands:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_1

    .line 120
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mAnim:Landroid/view/animation/Animation;

    iget-object v7, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 122
    :cond_1
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "cbView":Landroid/view/View;
    .end local v5    # "start_offset":I
    :cond_2
    const/4 v6, 0x1

    return v6
.end method

.method public runUnlockAnimation()Z
    .locals 10

    .prologue
    .line 133
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "runUnlockAnimation mStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mStatus:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mStatus:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    sget-object v7, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->SHOWN:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    if-eq v6, v7, :cond_1

    .line 136
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mStatus:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    sget-object v7, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->INTRO:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    if-ne v6, v7, :cond_0

    .line 137
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 138
    .local v4, "mHandler":Landroid/os/Handler;
    new-instance v6, Lcom/android/server/fingerprint/FingerUnlockEffect$2;

    invoke-direct {v6, p0}, Lcom/android/server/fingerprint/FingerUnlockEffect$2;-><init>(Lcom/android/server/fingerprint/FingerUnlockEffect;)V

    .line 144
    const-wide/16 v8, 0xc8

    .line 138
    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    .end local v4    # "mHandler":Landroid/os/Handler;
    :cond_0
    const/4 v6, 0x0

    return v6

    .line 149
    :cond_1
    sget-object v6, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->UNLOCK:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    iput-object v6, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mStatus:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    .line 151
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerUnlockEffect;->removeAnimation()V

    .line 152
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerUnlockEffect;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 154
    .local v1, "context":Landroid/content/Context;
    sget v2, Lcom/android/server/fingerprint/FingerUnlockEffect;->EFFECT_INTRO_CIRCL_BAND_ALPHA_GAP:I

    .line 157
    .local v2, "diff_offset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mCircleBands:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 158
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mCircleBands:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 159
    .local v0, "cbView":Landroid/view/View;
    const v6, 0x10a00d4

    invoke-static {v1, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mAnim:Landroid/view/animation/Animation;

    .line 160
    mul-int v5, v2, v3

    .line 161
    .local v5, "start_offset":I
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mAnim:Landroid/view/animation/Animation;

    int-to-long v8, v5

    invoke-virtual {v6, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 162
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mCircleBands:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_2

    .line 163
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mAnim:Landroid/view/animation/Animation;

    iget-object v7, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 165
    :cond_2
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerUnlockEffect;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "cbView":Landroid/view/View;
    .end local v5    # "start_offset":I
    :cond_3
    const/4 v6, 0x1

    return v6
.end method
