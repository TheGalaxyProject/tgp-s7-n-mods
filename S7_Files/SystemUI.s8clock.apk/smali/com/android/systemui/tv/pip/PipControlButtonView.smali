.class public Lcom/android/systemui/tv/pip/PipControlButtonView;
.super Landroid/widget/LinearLayout;
.source "PipControlButtonView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tv/pip/PipControlButtonView$1;
    }
.end annotation


# instance fields
.field private mButtonImageView:Landroid/widget/ImageView;

.field private mDescriptionTextView:Landroid/widget/TextView;

.field private mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mFocusGainAnimator:Landroid/animation/Animator;

.field private mFocusLoseAnimator:Landroid/animation/Animator;

.field private final mInternalFocusChangeListener:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/tv/pip/PipControlButtonView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/tv/pip/PipControlButtonView;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mFocusGainAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/tv/pip/PipControlButtonView;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mFocusLoseAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/systemui/tv/pip/PipControlButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    new-instance v3, Lcom/android/systemui/tv/pip/PipControlButtonView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/tv/pip/PipControlButtonView$1;-><init>(Lcom/android/systemui/tv/pip/PipControlButtonView;)V

    .line 44
    iput-object v3, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mInternalFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 82
    const-string/jumbo v4, "layout_inflater"

    .line 81
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 83
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04016b

    invoke-virtual {v0, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 85
    invoke-virtual {p0, v6}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setOrientation(I)V

    .line 86
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setGravity(I)V

    .line 88
    const v3, 0x7f1301ee

    invoke-virtual {p0, v3}, Lcom/android/systemui/tv/pip/PipControlButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    .line 89
    const v3, 0x7f1303fc

    invoke-virtual {p0, v3}, Lcom/android/systemui/tv/pip/PipControlButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mDescriptionTextView:Landroid/widget/TextView;

    .line 91
    const v3, 0x1010119

    const v4, 0x101014f

    filled-new-array {v3, v4}, [I

    move-result-object v2

    .line 93
    .local v2, "values":[I
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 95
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setImageResource(I)V

    .line 96
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/tv/pip/PipControlButtonView;->setText(I)V

    .line 98
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isFocused()Z

    move-result v0

    return v0
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mInternalFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    const v1, 0x7f0500d5

    .line 106
    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mFocusGainAnimator:Landroid/animation/Animator;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mFocusGainAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 110
    const v1, 0x7f0500d6

    .line 109
    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mFocusLoseAnimator:Landroid/animation/Animator;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mFocusLoseAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 120
    return-void
.end method

.method public setText(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 134
    return-void
.end method
