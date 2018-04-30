.class public abstract Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;
.super Ljava/lang/Object;
.source "ConfirmationViewHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private mButtonBarAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonBarContainer:Landroid/view/View;

.field private mButtonBarFloatingHeight:F

.field private mContent:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mCurrentPageText:Landroid/widget/TextView;

.field private mCurrentTranslation:F

.field private mHiddenBefore:Z

.field private mHideHandler:Landroid/os/Handler;

.field private mHorizontalButtonBar:Landroid/view/ViewGroup;

.field private mIcon:Landroid/widget/ImageView;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMessage:Landroid/widget/TextView;

.field private mRoot:Landroid/view/View;

.field private mScrollingContainer:Landroid/widget/ScrollView;

.field private mVerticalButton1:Landroid/widget/Button;

.field private mVerticalButton2:Landroid/widget/Button;

.field private mVerticalButton3:Landroid/widget/Button;

.field private mVerticalButtonBar:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private generateButtonBarAnimator(FFFFJ)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "ConfirmationViewHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ConfirmationViewHandler"

    const-string/jumbo v1, "generateButtonBarAnimator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ConfirmationViewHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    startY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ConfirmationViewHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    endY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ConfirmationViewHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    startZ: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ConfirmationViewHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    endZ: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ConfirmationViewHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    new-array v1, v6, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v6, [F

    aput p1, v3, v4

    aput p2, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v3, v6, [F

    aput p3, v3, v4

    aput p4, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarAnimator:Landroid/animation/ObjectAnimator;

    iput p2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mCurrentTranslation:F

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p5, p6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private hideButtonBar()V
    .locals 13

    const-string/jumbo v1, "ConfirmationViewHandler"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ConfirmationViewHandler"

    const-string/jumbo v2, "hideButtonBar"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int v8, v1, v11

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v10

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int v1, v10, v0

    sub-int/2addr v1, v8

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mScrollingContainer:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v9, v1, v2

    if-lez v9, :cond_5

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v12, v1, v9

    :goto_0
    const-string/jumbo v1, "ConfirmationViewHandler"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ConfirmationViewHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    topMargin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ConfirmationViewHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    contentHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ConfirmationViewHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    screenHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ConfirmationViewHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ConfirmationViewHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    buttonBarHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ConfirmationViewHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    mContent.getPaddingBottom(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ConfirmationViewHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    mScrollingContainer.getScrollY(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mScrollingContainer:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ConfirmationViewHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    translationY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mHiddenBefore:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_6

    :cond_2
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mHideHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    int-to-float v3, v12

    iget v4, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarFloatingHeight:F

    const/4 v5, 0x0

    const-wide/16 v6, 0x1f4

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->generateButtonBarAnimator(FFFFJ)V

    :cond_4
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mHiddenBefore:Z

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v12

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mCurrentTranslation:F

    int-to-float v2, v12

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    int-to-float v2, v12

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    int-to-float v1, v12

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-long v2, v1

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    int-to-float v3, v12

    iget v4, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarFloatingHeight:F

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->generateButtonBarAnimator(FFFFJ)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    int-to-float v2, v12

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationZ(F)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    int-to-float v2, v12

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationZ(F)V

    goto :goto_1
.end method

.method private showButtonBar()V
    .locals 12

    const/16 v4, 0x3ea

    const/4 v3, 0x3

    const-string/jumbo v1, "ConfirmationViewHandler"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ConfirmationViewHandler"

    const-string/jumbo v2, "showButtonBar"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mHideHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mHiddenBefore:Z

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    div-int/lit8 v10, v11, 0x2

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int v9, v1, v0

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    const-string/jumbo v1, "ConfirmationViewHandler"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ConfirmationViewHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    screenHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ConfirmationViewHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    contentHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ConfirmationViewHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    buttonBarHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ConfirmationViewHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    buttonBarMaxHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    iget v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarFloatingHeight:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationZ(F)V

    sub-int v1, v11, v0

    if-gt v9, v1, :cond_3

    if-le v0, v10, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mHideHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    int-to-float v2, v0

    sub-int v1, v0, v8

    int-to-float v3, v1

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarFloatingHeight:F

    const-wide/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->generateButtonBarAnimator(FFFFJ)V

    return-void
.end method


# virtual methods
.method public createView()Landroid/view/View;
    .locals 5

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mRoot:Landroid/view/View;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mRoot:Landroid/view/View;

    const v3, 0x7f110080

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mMessage:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mRoot:Landroid/view/View;

    const v3, 0x7f11007f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mCurrentPageText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mRoot:Landroid/view/View;

    const v3, 0x7f110051

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mRoot:Landroid/view/View;

    const v3, 0x7f110081

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mRoot:Landroid/view/View;

    const v3, 0x7f11007e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mContent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mRoot:Landroid/view/View;

    const v3, 0x7f11007d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mScrollingContainer:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mRoot:Landroid/view/View;

    const v3, 0x7f110082

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mHorizontalButtonBar:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mRoot:Landroid/view/View;

    const v3, 0x7f110085

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mVerticalButtonBar:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mRoot:Landroid/view/View;

    const v3, 0x7f110084

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mRoot:Landroid/view/View;

    const v3, 0x7f110083

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mRoot:Landroid/view/View;

    const v3, 0x7f110086

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mVerticalButton1:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mRoot:Landroid/view/View;

    const v3, 0x7f110087

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mVerticalButton2:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mRoot:Landroid/view/View;

    const v3, 0x7f110088

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mVerticalButton3:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mVerticalButton1:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mVerticalButton2:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mVerticalButton3:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mContext:Landroid/content/Context;

    const v3, 0x10c000d

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarFloatingHeight:F

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mHideHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mScrollingContainer:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mRoot:Landroid/view/View;

    return-object v2
.end method

.method public getButtonBarMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getCurrentPageText()Ljava/lang/CharSequence;
.end method

.method public abstract getMessage()Ljava/lang/CharSequence;
.end method

.method public abstract getPermissionIcon()Landroid/graphics/drawable/Icon;
.end method

.method public abstract getVerticalButton1Icon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getVerticalButton1Text()Ljava/lang/CharSequence;
.end method

.method public abstract getVerticalButton2Icon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getVerticalButton2Text()Ljava/lang/CharSequence;
.end method

.method public abstract getVerticalButton3Icon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getVerticalButton3Text()Ljava/lang/CharSequence;
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->showButtonBar()V

    return v1

    :pswitch_1
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->hideButtonBar()V

    return v1

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public invalidate()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->getCurrentPageText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mCurrentPageText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mCurrentPageText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->getPermissionIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->getMessage()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->getButtonBarMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_2
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mScrollingContainer:Landroid/widget/ScrollView;

    invoke-virtual {v3, v6, v6}, Landroid/widget/ScrollView;->scrollTo(II)V

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mHideHandler:Landroid/os/Handler;

    const/16 v4, 0x3ea

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mHideHandler:Landroid/os/Handler;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mCurrentPageText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_0
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mHorizontalButtonBar:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mVerticalButtonBar:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    :pswitch_1
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mHorizontalButtonBar:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mVerticalButtonBar:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mVerticalButton1:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->getVerticalButton1Text()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mVerticalButton2:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->getVerticalButton2Text()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mVerticalButton1:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->getVerticalButton1Icon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mVerticalButton2:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->getVerticalButton2Icon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->getVerticalButton3Text()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mVerticalButton3:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mVerticalButton3:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->getVerticalButton3Text()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mVerticalButton3:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->getVerticalButton3Icon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract onButton1()V
.end method

.method public abstract onButton2()V
.end method

.method public abstract onButton3()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->onButton1()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->onButton2()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->onButton3()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f110083
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 7

    const/16 v6, 0x3e9

    const/4 v5, 0x3

    const-string/jumbo v0, "ConfirmationViewHandler"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ConfirmationViewHandler"

    const-string/jumbo v1, "onGlobalLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ConfirmationViewHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    contentHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mContent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const-string/jumbo v0, "ConfirmationViewHandler"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ConfirmationViewHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    set mContent.PaddingBottom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mButtonBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mHideHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mHideHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mHideHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onScrollChanged()V
    .locals 2

    const-string/jumbo v0, "ConfirmationViewHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ConfirmationViewHandler"

    const-string/jumbo v1, "onScrollChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->mHideHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/wear/ConfirmationViewHandler;->hideButtonBar()V

    return-void
.end method
