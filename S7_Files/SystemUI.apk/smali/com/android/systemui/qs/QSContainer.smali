.class public Lcom/android/systemui/qs/QSContainer;
.super Landroid/widget/FrameLayout;
.source "QSContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSContainer$1;,
        Lcom/android/systemui/qs/QSContainer$2;
    }
.end annotation


# instance fields
.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field private mContext:Landroid/content/Context;

.field private mDelay:J

.field private mDeskMode:Z

.field protected mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

.field private mHeaderAnimating:Z

.field private mHeightOverride:I

.field private mKeyguardShowing:Z

.field private mListening:Z

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

.field private mQSBarController:Lcom/android/systemui/qs/QSBarController;

.field private mQSDetail:Lcom/android/systemui/qs/QSDetail;

.field protected mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQSPanelOverlappedHeight:F

.field private final mQsBounds:Landroid/graphics/Rect;

.field private mQsExpanded:Z

.field protected mQsExpansion:F

.field private mQsPanelTopMargin:F

.field private mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

.field private final mSizePoint:Landroid/graphics/Point;

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSContainer;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSContainer;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/qs/QSContainer;->mDelay:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateQsState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mSizePoint:Landroid/graphics/Point;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQsBounds:Landroid/graphics/Rect;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    .line 415
    new-instance v0, Lcom/android/systemui/qs/QSContainer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSContainer$1;-><init>(Lcom/android/systemui/qs/QSContainer;)V

    .line 414
    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 432
    new-instance v0, Lcom/android/systemui/qs/QSContainer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSContainer$2;-><init>(Lcom/android/systemui/qs/QSContainer;)V

    .line 431
    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    .line 90
    iput-object p1, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method private updateBottom()V
    .locals 4

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->calculateContainerHeight()I

    move-result v0

    .line 243
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSContainer;->setBottom(I)V

    .line 244
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSDetail;->setBottom(I)V

    .line 246
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 247
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSDetail;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 248
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 249
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/QSDetail;->setClipBounds(Landroid/graphics/Rect;)V

    .line 241
    return-void
.end method

.method private updateQsState()V
    .locals 6

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 271
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    .line 272
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    .line 273
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/QSDetail;->setExpanded(Z)V

    .line 274
    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    if-eqz v1, :cond_4

    :cond_0
    move v1, v3

    :goto_1
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setVisibility(I)V

    .line 277
    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    if-eqz v1, :cond_5

    .line 278
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mStackScrollerOverscrolling:Z

    if-eqz v1, :cond_6

    :cond_2
    move v1, v3

    .line 277
    :goto_2
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setExpanded(Z)V

    .line 280
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v0, :cond_7

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 270
    return-void

    .line 271
    :cond_3
    const/4 v0, 0x1

    .local v0, "expandVisually":Z
    goto :goto_0

    .end local v0    # "expandVisually":Z
    :cond_4
    move v1, v2

    .line 276
    goto :goto_1

    :cond_5
    move v1, v4

    .line 277
    goto :goto_2

    :cond_6
    move v1, v4

    .line 278
    goto :goto_2

    :cond_7
    move v3, v2

    .line 280
    goto :goto_3
.end method


# virtual methods
.method public animateHeaderSlidingIn(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    if-nez v0, :cond_0

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    .line 385
    iput-wide p1, p0, Lcom/android/systemui/qs/QSContainer;->mDelay:J

    .line 386
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 379
    :cond_0
    return-void
.end method

.method public animateHeaderSlidingOut()V
    .locals 4

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    if-nez v0, :cond_0

    return-void

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    .line 399
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 400
    const-wide/16 v2, 0x0

    .line 399
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 401
    const-wide/16 v2, 0x168

    .line 399
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 402
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 399
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 403
    new-instance v1, Lcom/android/systemui/qs/QSContainer$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSContainer$3;-><init>(Lcom/android/systemui/qs/QSContainer;)V

    .line 399
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 390
    return-void
.end method

.method protected calculateContainerHeight()I
    .locals 5

    .prologue
    .line 254
    iget v3, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v2, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    .line 255
    .local v2, "heightOverride":I
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 258
    .local v0, "barItemHeight":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getHeight()I

    move-result v3

    :goto_2
    int-to-float v1, v3

    .line 266
    .local v1, "containerHeight":F
    float-to-int v3, v1

    return v3

    .line 254
    .end local v0    # "barItemHeight":I
    .end local v1    # "containerHeight":F
    .end local v2    # "heightOverride":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getMeasuredHeight()I

    move-result v2

    .restart local v2    # "heightOverride":I
    goto :goto_0

    .line 255
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSBarController;->getCollapsedHeight()I

    move-result v0

    .restart local v0    # "barItemHeight":I
    goto :goto_1

    .line 259
    :cond_2
    iget v3, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpansion:F

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getCollapsedHeight()I

    move-result v4

    add-int/2addr v4, v0

    sub-int v4, v2, v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 260
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getCollapsedHeight()I

    move-result v4

    .line 259
    add-int/2addr v3, v4

    add-int/2addr v3, v0

    goto :goto_2
.end method

.method public getBarController()Lcom/android/systemui/qs/QSBarController;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    return-object v0
.end method

.method public getDesiredHeight()I
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getHeight()I

    move-result v0

    return v0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isClosingDetail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->getMeasuredHeight()I

    move-result v0

    return v0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isShowingDetail()Z

    move-result v0

    .line 218
    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->getMeasuredHeight()I

    move-result v0

    return v0

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getHeader()Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    return-object v0
.end method

.method public getOverlappedHeight()I
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarController;->hasBarOnHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanelOverlappedHeight:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getQsMinExpansionHeight()I
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSBarController;->getCollapsedHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getQsPanel()Lcom/android/systemui/qs/QSPanel;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method public getSecCustomizer()Lcom/android/systemui/qs/customize/SecQSCustomizer;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    return-object v0
.end method

.method public isCustomizing()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v0

    return v0
.end method

.method public isShowingDetail()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingCustomize()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isShowingDetail()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyCustomizeChanged()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    .line 230
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsHeightChanged()V

    .line 226
    return-void

    :cond_0
    move v0, v2

    .line 230
    goto :goto_0

    :cond_1
    move v1, v2

    .line 231
    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const v8, 0x7f0d0380

    const v7, 0x7f0d01dc

    .line 95
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 96
    const v2, 0x7f1302df

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel;

    iput-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 97
    const v2, 0x7f1302e0

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSDetail;

    iput-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    .line 98
    const v2, 0x7f130306

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iput-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    .line 99
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/qs/QSDetail;->setQsPanel(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;)V

    .line 101
    const v2, 0x7f1302e2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iput-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    .line 102
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v2, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setQsContainer(Lcom/android/systemui/qs/QSContainer;)V

    .line 109
    const v2, 0x7f130054

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSContainer;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    .local v0, "desk":Ljava/lang/String;
    new-instance v2, Lcom/android/systemui/qs/QSBarController;

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    const-string/jumbo v6, "desk"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/systemui/qs/QSBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;Z)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    .line 113
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSBarController;->hasBarOnHeader()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_0
    iput v2, p0, Lcom/android/systemui/qs/QSContainer;->mQsPanelTopMargin:F

    .line 115
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 116
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 115
    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanelOverlappedHeight:F

    .line 117
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 118
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/android/systemui/qs/QSContainer;->mQsPanelTopMargin:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 119
    new-instance v3, Lcom/android/systemui/qs/QSAnimator;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    const v4, 0x7f13030f

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QuickQSPanel;

    .line 120
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 119
    invoke-direct {v3, p0, v2, v4}, Lcom/android/systemui/qs/QSAnimator;-><init>(Lcom/android/systemui/qs/QSContainer;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V

    iput-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    .line 121
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSAnimator;->setBarController(Lcom/android/systemui/qs/QSBarController;)V

    .line 123
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "qs_detail_content_primary_text_color"

    .line 124
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0128

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 123
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 125
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "qs_detail_content_secondary_text_color"

    .line 126
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    const v5, 0x7f0b012b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 125
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 94
    return-void

    .line 114
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 185
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    .line 184
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 163
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 164
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    .line 163
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/systemui/qs/QSPanel;->measure(II)V

    .line 165
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getMeasuredWidth()I

    move-result v1

    .line 166
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 167
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getMeasuredHeight()I

    move-result v3

    .line 166
    add-int v0, v2, v3

    .line 168
    .local v0, "height":I
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 169
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 168
    invoke-super {p0, v2, v3}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSizePoint:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 175
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    .line 176
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSizePoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 175
    invoke-virtual {v2, p1, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->measure(II)V

    .line 159
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSAnimator;->onRtlChanged()V

    .line 135
    return-void
.end method

.method public setDeskMode(Z)V
    .locals 1
    .param p1, "desk"    # Z

    .prologue
    .line 447
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mDeskMode:Z

    .line 448
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setDeskMode(Z)V

    .line 449
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetail;->setDeskMode(Z)V

    .line 446
    return-void
.end method

.method public setExpanded(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    .line 319
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mListening:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setListening(Z)V

    .line 321
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mListening:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 322
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateQsState()V

    .line 315
    return-void

    .line 321
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHeaderClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setClickable(Z)V

    .line 310
    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0
    .param p1, "heightOverride"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    .line 203
    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 2
    .param p1, "qsh"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetail;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSBarController;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 140
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    .line 328
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setOnKeyguard(Z)V

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateQsState()V

    .line 325
    return-void
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    const/4 v1, 0x0

    .line 340
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mListening:Z

    .line 342
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setListening(Z)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSContainer;->mListening:Z

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 338
    return-void

    :cond_1
    move v0, v1

    .line 342
    goto :goto_0
.end method

.method public setOverscrolling(Z)V
    .locals 0
    .param p1, "stackScrollerOverscrolling"    # Z

    .prologue
    .line 334
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mStackScrollerOverscrolling:Z

    .line 335
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateQsState()V

    .line 332
    return-void
.end method

.method public setPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p1, "panelView"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/systemui/qs/QSContainer;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 154
    return-void
.end method

.method public setQsExpansion(FF)V
    .locals 9
    .param p1, "expansion"    # F
    .param p2, "headerTranslation"    # F

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 351
    iput p1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpansion:F

    .line 352
    sub-float v3, p1, v5

    .line 353
    .local v3, "translationScaleY":F
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    if-nez v4, :cond_1

    .line 354
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float p2, v3, v4

    .end local p2    # "headerTranslation":F
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSContainer;->setTranslationY(F)V

    .line 358
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v4, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setExpansion(F)V

    .line 360
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v7, p0, Lcom/android/systemui/qs/QSContainer;->mQsPanelTopMargin:F

    sub-float v1, v4, v7

    .line 361
    .local v1, "overlappedSpace":F
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v4, :cond_3

    move v4, v6

    :goto_1
    int-to-float v0, v4

    .line 362
    .local v0, "barHeight":F
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    sub-float/2addr v4, v1

    mul-float v2, v3, v4

    .line 363
    .local v2, "transY":F
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/QSPanel;->setTranslationY(F)V

    .line 364
    iget-object v7, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v4, :cond_4

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Lcom/android/systemui/qs/QSBarController;->setPosition(F)V

    .line 366
    iget-object v7, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    cmpl-float v4, p1, v5

    if-nez v4, :cond_5

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v7, v4}, Lcom/android/systemui/qs/QSDetail;->setFullyExpanded(Z)V

    .line 367
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v4, p1}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    .line 368
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    .line 372
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQsBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v7

    iget-boolean v8, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v8, :cond_6

    :goto_4
    sub-int v6, v7, v6

    int-to-float v6, v6

    sub-float/2addr v5, p1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 374
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQsBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 375
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQsBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 376
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mQsBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSPanel;->setClipBounds(Landroid/graphics/Rect;)V

    .line 349
    return-void

    .end local v0    # "barHeight":F
    .end local v1    # "overlappedSpace":F
    .end local v2    # "transY":F
    :cond_2
    move v4, p1

    .line 358
    goto :goto_0

    .line 361
    .restart local v1    # "overlappedSpace":F
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSBarController;->getCollapsedHeight()I

    move-result v4

    goto :goto_1

    .restart local v0    # "barHeight":F
    .restart local v2    # "transY":F
    :cond_4
    move v4, p1

    .line 364
    goto :goto_2

    :cond_5
    move v4, v6

    .line 366
    goto :goto_3

    .line 372
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSBarController;->getCollapsedHeight()I

    move-result v6

    goto :goto_4
.end method
