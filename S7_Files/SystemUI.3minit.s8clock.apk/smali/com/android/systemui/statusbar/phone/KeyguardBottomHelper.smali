.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;
.super Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.source "KeyguardBottomHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;
    }
.end annotation


# instance fields
.field private mAlphaInterpolator:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;

.field private mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field private mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

.field private mPreviewAnimationStarted:Z

.field private mSineIn33:Landroid/view/animation/Interpolator;

.field private mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mAlphaInterpolator:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mSineIn33:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 50
    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 8
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "top"    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .param p4, "bottom"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    const v5, 0x3f547ae1    # 0.83f

    const/4 v6, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;-><init>()V

    .line 41
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mAlphaInterpolator:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;

    .line 42
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    invoke-direct {v0, v1, v2, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mSineIn33:Landroid/view/animation/Interpolator;

    .line 57
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mContext:Landroid/content/Context;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    .line 59
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 60
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->initIcons()V

    .line 62
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v5, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 63
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v5, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 64
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v5, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->initDimens()V

    .line 56
    return-void
.end method


# virtual methods
.method public animateHideLeftRightIcon()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 301
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v3, v2

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 302
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v3, v2

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 300
    return-void
.end method

.method public cancelDAAffordance()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelDAAffordance()V

    .line 479
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelDAAffordance()V

    .line 477
    return-void
.end method

.method protected centerSwipePossible()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 266
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getImageAlpha()I

    move-result v1

    const/16 v2, 0xbf

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 266
    :cond_0
    return v0
.end method

.method protected getIconAtPosition(FF)Landroid/view/View;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->leftSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    return-object v0

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->rightSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    return-object v0

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->centerSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->isOnIconExact(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    return-object v0

    .line 228
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getScale(FLcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F
    .locals 1
    .param p1, "alpha"    # F
    .param p2, "icon"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 316
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected initDimens()V
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 71
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d027d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTouchTargetSize:I

    .line 69
    return-void
.end method

.method protected initIcons()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getUSimCarrierTextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockSecureIcon()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCallback(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCallback(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->setCallbackForDummy(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updatePreviews()V

    .line 75
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    goto :goto_0
.end method

.method protected isOnIcon(Landroid/view/View;FF)Z
    .locals 12
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 233
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 234
    .local v4, "pos":[I
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 236
    aget v7, v4, v6

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float v2, v7, v8

    .line 237
    .local v2, "iconX":F
    aget v7, v4, v5

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float v3, v7, v8

    .line 239
    .local v3, "iconY":F
    sub-float v7, p2, v2

    float-to-double v8, v7

    sub-float v7, p3, v3

    float-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 240
    .local v0, "distance":D
    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTouchTargetSize:I

    div-int/lit8 v7, v7, 0x2

    int-to-double v8, v7

    cmpg-double v7, v0, v8

    if-gtz v7, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method protected isOnIconExact(Landroid/view/View;FF)Z
    .locals 5
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 246
    .local v0, "pos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 248
    aget v3, v0, v2

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_1

    aget v3, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_1

    .line 249
    aget v3, v0, v1

    int-to-float v3, v3

    cmpl-float v3, p3, v3

    if-lez v3, :cond_0

    aget v3, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p3, v3

    if-gez v3, :cond_0

    .line 248
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 249
    goto :goto_0

    :cond_1
    move v1, v2

    .line 248
    goto :goto_0
.end method

.method public isShortcutPreviewAnimationPlaying()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mPreviewAnimationStarted:Z

    return v0
.end method

.method public isSwipingInProgress()Z
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public launchAffordance(ZZ)V
    .locals 0
    .param p1, "animate"    # Z
    .param p2, "left"    # Z

    .prologue
    .line 338
    return-void
.end method

.method protected leftSwipePossible()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 260
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getImageAlpha()I

    move-result v1

    const/16 v2, 0xbf

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 260
    :cond_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 156
    .local v0, "action":I
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mMotionCancelled:Z

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 157
    return v6

    .line 160
    :cond_0
    sget-boolean v5, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v5, :cond_1

    .line 161
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v5

    .line 160
    if-eqz v5, :cond_1

    .line 162
    return v6

    .line 165
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 166
    .local v4, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 168
    .local v3, "x":F
    packed-switch v0, :pswitch_data_0

    .line 205
    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-nez v5, :cond_8

    .line 206
    return v6

    .line 170
    :pswitch_1
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->getIconAtPosition(FF)Landroid/view/View;

    move-result-object v2

    .line 171
    .local v2, "targetView":Landroid/view/View;
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-eq v5, v2, :cond_3

    .line 172
    :cond_2
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mMotionCancelled:Z

    .line 173
    return v6

    .line 176
    :cond_3
    check-cast v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .end local v2    # "targetView":Landroid/view/View;
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 177
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mMotionCancelled:Z

    .line 179
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->startPreviewAnimation(Landroid/view/View;Z)V

    .line 180
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 183
    :pswitch_2
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mMotionCancelled:Z

    .line 188
    :pswitch_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-nez v5, :cond_4

    .line 189
    return v6

    .line 192
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 194
    .local v1, "ret":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-nez v5, :cond_5

    .line 195
    return v1

    .line 198
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isPlayingHintAnimation()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isWaitingLaunchAppInSecure()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 201
    :cond_6
    :goto_0
    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 202
    return v1

    .line 199
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->startPreviewAnimation(Landroid/view/View;Z)V

    goto :goto_0

    .line 209
    .end local v1    # "ret":Z
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public removePreviews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 342
    return-void
.end method

.method public reset(Z)V
    .locals 8
    .param p1, "animate"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 321
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 322
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 323
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->reset()V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->reset()V

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mMotionCancelled:Z

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 320
    return-void
.end method

.method protected rightSwipePossible()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 254
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getImageAlpha()I

    move-result v1

    const/16 v2, 0xbf

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 254
    :cond_0
    return v0
.end method

.method public setBottomArea(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 8
    .param p1, "area"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    const/4 v6, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 484
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 485
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->initIcons()V

    .line 486
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v5, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 487
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v5, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 488
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-object v0, p0

    move v5, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 489
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->initDimens()V

    .line 483
    return-void
.end method

.method public setCallbackForDummy(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 1
    .param p1, "icon"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 349
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCallback(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;)V

    .line 348
    return-void
.end method

.method public startHintAnimation(ZLjava/lang/Runnable;)V
    .locals 12
    .param p1, "right"    # Z
    .param p2, "onFinishedListener"    # Ljava/lang/Runnable;

    .prologue
    .line 272
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    .line 273
    .local v0, "leftView":Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v10

    .line 275
    .local v10, "rightView":Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    if-eqz p1, :cond_1

    move-object v11, v10

    .line 276
    .local v11, "targetView":Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    :goto_0
    if-eqz p1, :cond_2

    move-object v1, v0

    .line 278
    .local v1, "otherView":Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    :goto_1
    invoke-virtual {v11, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->startHintAnimationPhase1(Ljava/lang/Runnable;)V

    .line 280
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->startShortcutHintAnimation()V

    .line 281
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->startShortcutHintAnimation()V

    .line 283
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    if-eqz v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->startShortcutHintAnimation()V

    .line 285
    :cond_0
    new-instance v7, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$1;

    invoke-direct {v7, p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x96

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 291
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    new-instance v9, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$2;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x96

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 271
    return-void

    .line 275
    .end local v1    # "otherView":Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .end local v11    # "targetView":Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    :cond_1
    move-object v11, v0

    .restart local v11    # "targetView":Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    goto :goto_0

    .line 276
    :cond_2
    move-object v1, v10

    .restart local v1    # "otherView":Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    goto :goto_1
.end method

.method protected startPreviewAnimation(Landroid/view/View;Z)V
    .locals 10
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    const-wide/16 v4, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 113
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mPreviewAnimationStarted:Z

    .line 114
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startPreviewAnimation() show="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-eqz p2, :cond_4

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->startShowHelpTextAnimation()V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->startDelayedShowAnimation()V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->startShowHelpTextAnimation()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-ne p1, v0, :cond_2

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const-wide/16 v6, 0xc8

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const-wide/16 v6, 0xc8

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 112
    :goto_1
    return-void

    :cond_1
    move v0, v3

    .line 113
    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-ne p1, v0, :cond_3

    .line 126
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const-wide/16 v6, 0xc8

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 127
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const-wide/16 v6, 0xc8

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 129
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const-wide/16 v6, 0xc8

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const-wide/16 v6, 0xc8

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->startHideHelpTextAnimation()V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->startHideAnimation()V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    if-eqz v0, :cond_5

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->startHideHelpTextAnimation()V

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-ne p1, v0, :cond_6

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    goto :goto_1

    .line 142
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-ne p1, v0, :cond_7

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    goto :goto_1

    .line 146
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    goto :goto_1
.end method

.method protected startSwiping(Landroid/view/View;)V
    .locals 0
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 214
    return-void
.end method

.method protected updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p2, "circleRadius"    # F
    .param p3, "alpha"    # F
    .param p4, "animate"    # Z
    .param p5, "slowRadiusAnimation"    # Z
    .param p6, "force"    # Z
    .param p7, "forceNoCircleAnimation"    # Z

    .prologue
    .line 308
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p6, :cond_1

    .line 311
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FZ)V

    .line 307
    return-void

    .line 309
    :cond_1
    return-void
.end method

.method public updatePreviews()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method
