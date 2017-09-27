.class public Lcom/android/systemui/statusbar/NotificationSettingsIconRow;
.super Landroid/widget/FrameLayout;
.source "NotificationSettingsIconRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;
    }
.end annotation


# instance fields
.field private mAnimating:Z

.field private mDismissing:Z

.field private mFadeAnimator:Landroid/animation/ValueAnimator;

.field private mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

.field private mGearLocation:[I

.field private mHorizSpaceForGear:F

.field private mIconPlaced:Z

.field private mListener:Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;

.field private mOnLeft:Z

.field private mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mParentLocation:[I

.field private mSettingsFadedIn:Z

.field private mSnapping:Z

.field private mVertSpaceForGear:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationSettingsIconRow;)Lcom/android/systemui/statusbar/AlphaOptimizedImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationSettingsIconRow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mSettingsFadedIn:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/NotificationSettingsIconRow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mAnimating:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/NotificationSettingsIconRow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mSettingsFadedIn:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mSettingsFadedIn:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mAnimating:Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mOnLeft:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mDismissing:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mSnapping:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mIconPlaced:Z

    .line 60
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearLocation:[I

    .line 61
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParentLocation:[I

    .line 77
    return-void
.end method


# virtual methods
.method public cancelFadeAnimator()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 158
    :cond_0
    return-void
.end method

.method public fadeInSettings(ZFF)V
    .locals 4
    .param p1, "fromLeft"    # Z
    .param p2, "transX"    # F
    .param p3, "notiThreshold"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 186
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mDismissing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mAnimating:Z

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->isIconLocationChange(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setGearAlpha(F)V

    .line 192
    :cond_2
    cmpl-float v0, p2, v3

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setIconLocation(Z)V

    .line 193
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getAlpha()F

    move-result v3

    aput v3, v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$1;-><init>(Lcom/android/systemui/statusbar/NotificationSettingsIconRow;FZF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$2;-><init>(Lcom/android/systemui/statusbar/NotificationSettingsIconRow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 185
    return-void

    :cond_3
    move v0, v2

    .line 192
    goto :goto_0
.end method

.method public getSpaceForGear()F
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mHorizSpaceForGear:F

    return v0
.end method

.method public isIconLocationChange(F)Z
    .locals 3
    .param p1, "translation"    # F

    .prologue
    .line 264
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getPaddingStart()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    const/4 v0, 0x1

    .line 265
    .local v0, "onLeft":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getPaddingStart()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3

    const/4 v1, 0x1

    .line 266
    .local v1, "onRight":Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mOnLeft:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mOnLeft:Z

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    .line 267
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 264
    .end local v0    # "onLeft":Z
    .end local v1    # "onRight":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "onLeft":Z
    goto :goto_0

    .line 265
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "onRight":Z
    goto :goto_1

    .line 269
    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method public isIconOnLeft()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mOnLeft:Z

    return v0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f1302a0

    if-ne v4, v5, :cond_0

    .line 283
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mListener:Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;

    if-eqz v4, :cond_0

    .line 284
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearLocation:[I

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getLocationOnScreen([I)V

    .line 285
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParentLocation:[I

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLocationOnScreen([I)V

    .line 287
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mHorizSpaceForGear:F

    div-float/2addr v4, v6

    float-to-int v0, v4

    .line 289
    .local v0, "centerX":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getTranslationY()F

    move-result v4

    mul-float/2addr v4, v6

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v1, v4, 0x2

    .line 290
    .local v1, "centerY":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearLocation:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParentLocation:[I

    aget v5, v5, v7

    sub-int/2addr v4, v5

    add-int v2, v4, v0

    .line 291
    .local v2, "x":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearLocation:[I

    aget v4, v4, v8

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParentLocation:[I

    aget v5, v5, v8

    sub-int/2addr v4, v5

    add-int v3, v4, v1

    .line 292
    .local v3, "y":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mListener:Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v4, v5, v2, v3}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;->onGearTouched(Lcom/android/systemui/statusbar/ExpandableNotificationRow;II)V

    .line 281
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 84
    const v0, 0x7f1302a0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 87
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mHorizSpaceForGear:F

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mVertSpaceForGear:I

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->resetState()V

    .line 82
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mOnLeft:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setIconLocation(Z)V

    .line 242
    return-void
.end method

.method public resetState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setGearAlpha(F)V

    .line 95
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mIconPlaced:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mSettingsFadedIn:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mAnimating:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mSnapping:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mDismissing:Z

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setIconLocation(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mListener:Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mListener:Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;->onSettingsIconRowReset(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 93
    :cond_0
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 5
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 117
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0f0535

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 118
    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 117
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "description":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method

.method public setGearAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    const/4 v1, 0x0

    .line 127
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 128
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mSettingsFadedIn:Z

    .line 129
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setVisibility(I)V

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setAlpha(F)V

    .line 126
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setVisibility(I)V

    goto :goto_0
.end method

.method public setGearListener(Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mListener:Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;

    .line 106
    return-void
.end method

.method public setIconLocation(Z)V
    .locals 6
    .param p1, "onLeft"    # Z

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mIconPlaced:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mOnLeft:Z

    if-ne p1, v4, :cond_1

    .line 250
    :cond_0
    return-void

    .line 247
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mSnapping:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    .line 248
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getWidth()I

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLayoutRtl()Z

    move-result v1

    .line 255
    .local v1, "isRtl":Z
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mHorizSpaceForGear:F

    sub-float/2addr v4, v5

    neg-float v2, v4

    .line 256
    .local v2, "left":F
    :goto_0
    if-eqz v1, :cond_3

    .line 257
    .local v3, "right":F
    :goto_1
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mHorizSpaceForGear:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v0, v4, v5

    .line 258
    .local v0, "centerX":F
    if-eqz p1, :cond_4

    add-float v4, v2, v0

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setTranslationX(F)V

    .line 259
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mOnLeft:Z

    .line 260
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mIconPlaced:Z

    .line 246
    return-void

    .end local v0    # "centerX":F
    .end local v2    # "left":F
    .end local v3    # "right":F
    :cond_2
    move v2, v3

    .line 255
    goto :goto_0

    .line 256
    .restart local v2    # "left":F
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mHorizSpaceForGear:F

    sub-float v3, v4, v5

    goto :goto_1

    .line 258
    .restart local v0    # "centerX":F
    .restart local v3    # "right":F
    :cond_4
    add-float v4, v3, v0

    goto :goto_2
.end method

.method public setNotificationRowParent(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "parent"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 112
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mOnLeft:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setIconLocation(Z)V

    .line 110
    return-void
.end method

.method public setSnapping(Z)V
    .locals 0
    .param p1, "snapping"    # Z

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mSnapping:Z

    .line 276
    return-void
.end method

.method public updateSettingsIcons(FF)V
    .locals 5
    .param p1, "transX"    # F
    .param p2, "size"    # F

    .prologue
    .line 165
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mAnimating:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mSettingsFadedIn:Z

    if-eqz v3, :cond_0

    .line 170
    const v3, 0x3e99999a    # 0.3f

    mul-float v2, p2, v3

    .line 171
    .local v2, "fadeThreshold":F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 172
    .local v0, "absTrans":F
    const/4 v1, 0x0

    .line 174
    .local v1, "desiredAlpha":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_1

    .line 175
    const/4 v1, 0x0

    .line 181
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setGearAlpha(F)V

    .line 164
    return-void

    .line 167
    .end local v0    # "absTrans":F
    .end local v1    # "desiredAlpha":F
    .end local v2    # "fadeThreshold":F
    :cond_0
    return-void

    .line 176
    .restart local v0    # "absTrans":F
    .restart local v1    # "desiredAlpha":F
    .restart local v2    # "fadeThreshold":F
    :cond_1
    cmpg-float v3, v0, v2

    if-gtz v3, :cond_2

    .line 177
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 179
    :cond_2
    sub-float v3, v0, v2

    sub-float v4, p2, v2

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v3

    goto :goto_0
.end method

.method public updateVerticalLocation()V
    .locals 4

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v1, :cond_0

    .line 231
    return-void

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v0

    .line 234
    .local v0, "parentHeight":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mVertSpaceForGear:I

    if-ge v0, v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    div-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setTranslationY(F)V

    .line 229
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mVertSpaceForGear:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setTranslationY(F)V

    goto :goto_0
.end method
