.class public Lcom/android/settings/widget/SecIntervalSeekbarPreference;
.super Landroid/preference/Preference;
.source "SecIntervalSeekbarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SecIntervalSeekbarPreference$1;,
        Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;
    }
.end annotation


# instance fields
.field private fadeIn:Landroid/view/animation/AlphaAnimation;

.field private fadeOut:Landroid/view/animation/AlphaAnimation;

.field private mBottomCurrentText:Ljava/lang/String;

.field private mBottomMaxTextView:Landroid/widget/TextView;

.field private mBottomMediumTextView:Landroid/widget/TextView;

.field private mBottomMediumTextView1:Landroid/widget/TextView;

.field private mBottomMediumTextView2:Landroid/widget/TextView;

.field private mBottomMediumTextView3:Landroid/widget/TextView;

.field private mBottomMinText:Ljava/lang/String;

.field private mBottomMinTextView:Landroid/widget/TextView;

.field private mBottomSupportMediumText:Z

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mMax:I

.field private mProgress:I

.field private mSetProgressChange:Z

.field private mSupportMediumText:Z

.field private mTopMaxText:Landroid/text/SpannableString;

.field private mTopMaxTextView:Landroid/widget/TextView;

.field private mTopMediumText:Landroid/text/SpannableString;

.field private mTopMediumTextView:Landroid/widget/TextView;

.field private mTopMediumTextView1:Landroid/widget/TextView;

.field private mTopMediumTextView2:Landroid/widget/TextView;

.field private mTopMediumTextView3:Landroid/widget/TextView;

.field private mTopMinText:Landroid/text/SpannableString;

.field private mTopMinTextView:Landroid/widget/TextView;

.field private mTrackingTouch:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeOut:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomSupportMediumText:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSupportMediumText:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSupportMediumText:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomSupportMediumText:Z

    .line 313
    new-instance v0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference$1;-><init>(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)V

    iput-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mHandler:Landroid/os/Handler;

    .line 113
    const v0, 0x7f0401c6

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setLayoutResource(I)V

    .line 90
    return-void
.end method


# virtual methods
.method public cancelAnim()V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    const/16 v1, 0x3e9

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->isBrightnessSeekBar()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSupportMediumText:Z

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 399
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 400
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 404
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public fadeInOutAnim()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x14d

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->cancelAnim()V

    .line 338
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeIn:Landroid/view/animation/AlphaAnimation;

    .line 339
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeIn:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 341
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeIn:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/settings/widget/SecIntervalSeekbarPreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference$2;-><init>(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->isBrightnessSeekBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSupportMediumText:Z

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 365
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomSupportMediumText:Z

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 369
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeOut:Landroid/view/animation/AlphaAnimation;

    .line 370
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeOut:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 373
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeOut:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/settings/widget/SecIntervalSeekbarPreference$3;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference$3;-><init>(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 335
    return-void
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    return v0
.end method

.method public isBrightnessSeekBar()Z
    .locals 2

    .prologue
    .line 268
    iget v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFadeInOutRunning()Z
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 130
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 131
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0580

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 135
    .local v1, "seekBarSidePadding":I
    const v2, 0x7f11052b

    .line 134
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 136
    .local v0, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 137
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 138
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 139
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 140
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 143
    const v2, 0x7f110526

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMinTextView:Landroid/widget/TextView;

    .line 144
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMinTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMinText:Landroid/text/SpannableString;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const v2, 0x7f11052c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMinTextView:Landroid/widget/TextView;

    .line 146
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMinTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMinText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const v2, 0x7f110527

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView1:Landroid/widget/TextView;

    .line 149
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView1:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumText:Landroid/text/SpannableString;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView1:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    const v2, 0x7f110528

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView2:Landroid/widget/TextView;

    .line 152
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView2:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumText:Landroid/text/SpannableString;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    const v2, 0x7f110529

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView3:Landroid/widget/TextView;

    .line 155
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView3:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumText:Landroid/text/SpannableString;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView3:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    const v2, 0x7f11052d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView1:Landroid/widget/TextView;

    .line 159
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView1:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomCurrentText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView1:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    const v2, 0x7f11052e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView2:Landroid/widget/TextView;

    .line 162
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView2:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomCurrentText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    const v2, 0x7f11052f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView3:Landroid/widget/TextView;

    .line 165
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView3:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomCurrentText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView3:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    const v2, 0x7f110530

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMaxTextView:Landroid/widget/TextView;

    .line 169
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMaxTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomCurrentText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    div-int/lit8 v5, v5, 0x2

    if-ge v2, v5, :cond_3

    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    if-eqz v2, :cond_3

    .line 172
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView1:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    .line 173
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView1:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    .line 183
    :goto_0
    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomSupportMediumText:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomCurrentText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSupportMediumText:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumText:Landroid/text/SpannableString;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    const v2, 0x7f11052a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMaxTextView:Landroid/widget/TextView;

    .line 190
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMaxTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMaxText:Landroid/text/SpannableString;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMinTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 194
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMaxTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 196
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMinTextView:Landroid/widget/TextView;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 197
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMaxTextView:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 200
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSetProgressChange:Z

    if-nez v2, :cond_8

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->isFadeInOutRunning()Z

    move-result v2

    if-nez v2, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->isBrightnessSeekBar()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMaxTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    :cond_2
    :goto_3
    return-void

    .line 174
    :cond_3
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    div-int/lit8 v5, v5, 0x2

    if-le v2, v5, :cond_4

    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    if-eq v2, v5, :cond_4

    .line 175
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView3:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    .line 176
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView3:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 178
    :cond_4
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    if-ne v2, v5, :cond_5

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMaxTextView:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    .line 180
    :goto_4
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView2:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 179
    :cond_5
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView2:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    goto :goto_4

    :cond_6
    move v2, v4

    .line 183
    goto/16 :goto_1

    :cond_7
    move v2, v4

    .line 186
    goto/16 :goto_2

    .line 207
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeInOutAnim()V

    .line 208
    iput-boolean v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSetProgressChange:Z

    goto :goto_3
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getProgress()I

    move-result v0

    .line 226
    .local v0, "progress":I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v2, :cond_8

    .line 227
    const/16 v1, 0x51

    if-eq p2, v1, :cond_0

    .line 228
    const/16 v1, 0x46

    if-ne p2, v1, :cond_1

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 230
    return v2

    .line 232
    :cond_1
    const/16 v1, 0x45

    if-ne p2, v1, :cond_2

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 234
    return v2

    .line 236
    :cond_2
    const/16 v1, 0x15

    if-ne p2, v1, :cond_5

    .line 237
    if-nez v0, :cond_3

    .line 238
    return v2

    .line 241
    :cond_3
    add-int/lit8 v1, v0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 244
    :cond_4
    return v2

    .line 246
    :cond_5
    const/16 v1, 0x16

    if-ne p2, v1, :cond_8

    .line 247
    iget v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    if-ne v0, v1, :cond_6

    .line 248
    return v2

    .line 251
    :cond_6
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 254
    :cond_7
    return v2

    .line 257
    :cond_8
    return v3
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v2, 0x4

    .line 519
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTrackingTouch:Z

    if-eqz v0, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->cancelAnim()V

    .line 521
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMaxTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSetProgressChange:Z

    .line 525
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 581
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 583
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 584
    return-void

    :cond_0
    move-object v0, p1

    .line 588
    check-cast v0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;

    .line 589
    .local v0, "myState":Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;
    invoke-virtual {v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 590
    iget v1, v0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;->progress:I

    iput v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    .line 591
    iget v1, v0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;->max:I

    iput v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    .line 592
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->notifyChanged()V

    .line 580
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 566
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 567
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    return-object v1

    .line 573
    :cond_0
    new-instance v0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 574
    .local v0, "myState":Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iput v2, v0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;->progress:I

    .line 575
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    iput v2, v0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;->max:I

    .line 576
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 214
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 213
    return-void

    .line 215
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v2, 0x4

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->cancelAnim()V

    .line 532
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMaxTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTrackingTouch:Z

    .line 530
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v2, 0x0

    .line 541
    iput-boolean v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTrackingTouch:Z

    .line 542
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 543
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeInOutAnim()V

    .line 546
    iput-boolean v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSetProgressChange:Z

    .line 540
    return-void
.end method

.method public setBottomText(ILjava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 445
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 444
    :cond_1
    :goto_0
    return-void

    .line 450
    :pswitch_0
    iput-object p2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMinText:Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMinTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMinTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMinText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 454
    :pswitch_1
    iput-object p2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomCurrentText:Ljava/lang/String;

    .line 455
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 456
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_2

    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    if-eq v2, v3, :cond_2

    .line 457
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView3:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    .line 467
    :goto_1
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomSupportMediumText:Z

    if-eqz v3, :cond_6

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomCurrentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeInOutAnim()V

    goto :goto_0

    .line 458
    :cond_2
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_3

    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    if-eqz v2, :cond_3

    .line 459
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView1:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    goto :goto_1

    .line 460
    :cond_3
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    div-int/lit8 v3, v3, 0x2

    if-ne v2, v3, :cond_4

    .line 461
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView2:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    goto :goto_1

    .line 462
    :cond_4
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    if-ne v2, v3, :cond_5

    .line 463
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMaxTextView:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    goto :goto_1

    .line 465
    :cond_5
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    move v0, v1

    .line 467
    goto :goto_2

    .line 448
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 261
    iget v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 262
    iput p1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->notifyChanged()V

    .line 260
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 476
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(IZ)V

    .line 475
    return-void
.end method

.method public setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "notifyChanged"    # Z

    .prologue
    .line 480
    iget v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 481
    iget p1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    .line 483
    :cond_0
    if-gez p1, :cond_1

    .line 484
    const/4 p1, 0x0

    .line 486
    :cond_1
    iget v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 487
    iput p1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    .line 488
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->persistInt(I)Z

    .line 489
    if-eqz p2, :cond_2

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->notifyChanged()V

    .line 493
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSetProgressChange:Z

    .line 479
    return-void
.end method

.method public setTopText(ILandroid/text/SpannableString;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "text"    # Landroid/text/SpannableString;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 281
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 280
    :cond_1
    :goto_0
    return-void

    .line 286
    :pswitch_0
    iput-object p2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMinText:Landroid/text/SpannableString;

    .line 287
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMinTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMinTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMinText:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 290
    :pswitch_1
    iput-object p2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumText:Landroid/text/SpannableString;

    .line 291
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 292
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_2

    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    if-eq v2, v3, :cond_2

    .line 293
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView3:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    .line 301
    :goto_1
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSupportMediumText:Z

    if-eqz v3, :cond_5

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumText:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    :cond_2
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_3

    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    if-eqz v2, :cond_3

    .line 295
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView1:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    goto :goto_1

    .line 296
    :cond_3
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    div-int/lit8 v3, v3, 0x2

    if-ne v2, v3, :cond_4

    .line 297
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView2:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    goto :goto_1

    .line 299
    :cond_4
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 301
    goto :goto_2

    .line 306
    :pswitch_2
    iput-object p2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMaxText:Landroid/text/SpannableString;

    .line 307
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMaxTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMaxTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMaxText:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTopText(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 277
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILandroid/text/SpannableString;)V

    .line 276
    return-void
.end method

.method public supportMediumText(ZZ)V
    .locals 0
    .param p1, "top"    # Z
    .param p2, "bottom"    # Z

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSupportMediumText:Z

    .line 273
    iput-boolean p2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomSupportMediumText:Z

    .line 271
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 506
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 507
    .local v0, "progress":I
    iget v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 508
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 509
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(IZ)V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
