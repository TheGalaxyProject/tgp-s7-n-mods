.class public abstract Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;
.super Landroid/widget/FrameLayout;
.source "WarnView.java"


# instance fields
.field protected mAnimator:Landroid/animation/ValueAnimator;

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->mStatus:I

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->internalInitialize(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->mStatus:I

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->internalInitialize(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->mStatus:I

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->internalInitialize(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->mStatus:I

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->internalInitialize(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    .prologue
    .line 9
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->mStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;
    .param p1, "x1"    # I

    .prologue
    .line 9
    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->mStatus:I

    return p1
.end method

.method static synthetic access$008(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    .prologue
    .line 9
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->mStatus:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->mStatus:I

    return v0
.end method

.method private internalInitialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 45
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$1;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->initialize(Landroid/content/Context;)V

    .line 92
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 41
    return-void
.end method

.method protected abstract getMaxStatus()I
.end method

.method protected abstract initialize(Landroid/content/Context;)V
.end method

.method protected onCancel()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method protected onEnd()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method protected onRepeat()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method protected abstract onUpdate(IF)V
.end method

.method protected setAnimator(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->setAnimator(IZ)V

    .line 96
    return-void
.end method

.method protected abstract setAnimator(IZ)V
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->mStatus:I

    .line 35
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->mStatus:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->setAnimator(IZ)V

    .line 36
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 37
    return-void
.end method
