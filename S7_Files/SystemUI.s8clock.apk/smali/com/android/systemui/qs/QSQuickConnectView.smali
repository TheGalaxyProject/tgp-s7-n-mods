.class public Lcom/android/systemui/qs/QSQuickConnectView;
.super Lcom/android/systemui/qs/QSBarItem;
.source "QSQuickConnectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSQuickConnectView$H;,
        Lcom/android/systemui/qs/QSQuickConnectView$RemoteViewReceiver;,
        Lcom/android/systemui/qs/QSQuickConnectView$State;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFraction:F

.field private mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

.field private mHeight:I

.field private mIsFullyCollapsed:Z

.field private mIsFullyExpanded:Z

.field mReceiver:Lcom/android/systemui/qs/QSQuickConnectView$RemoteViewReceiver;

.field private mRemoteViewsContainer:Landroid/view/ViewGroup;

.field private mSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field private mState:Lcom/android/systemui/qs/QSQuickConnectView$State;

.field private mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

.field private mViewUpdateDelyed:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSQuickConnectView;)Lcom/android/systemui/qs/QSQuickConnectView$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSQuickConnectView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSQuickConnectView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/QSQuickConnectView;)Lcom/android/systemui/qs/QSQuickConnectView$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSQuickConnectView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSQuickConnectView;Lcom/android/systemui/qs/QSQuickConnectView$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSQuickConnectView$State;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSQuickConnectView;->refresh(Lcom/android/systemui/qs/QSQuickConnectView$State;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "barType"    # I

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSBarItem;-><init>(Landroid/content/Context;I)V

    .line 47
    new-instance v0, Lcom/android/systemui/qs/QSQuickConnectView$State;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSQuickConnectView$State;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    .line 48
    new-instance v0, Lcom/android/systemui/qs/QSQuickConnectView$State;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSQuickConnectView$State;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    .line 57
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mViewUpdateDelyed:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mIsFullyExpanded:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mIsFullyCollapsed:Z

    .line 63
    iput-object p1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mContext:Landroid/content/Context;

    .line 64
    iput v1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHeight:I

    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mContext:Landroid/content/Context;

    const v1, 0x7f040108

    invoke-static {v0, v1, p0}, Lcom/android/systemui/qs/QSQuickConnectView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    const v0, 0x7f1302f8

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSQuickConnectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    .line 69
    new-instance v0, Lcom/android/systemui/qs/QSQuickConnectView$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSQuickConnectView$H;-><init>(Lcom/android/systemui/qs/QSQuickConnectView;Lcom/android/systemui/qs/QSQuickConnectView$H;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

    .line 71
    new-instance v0, Lcom/android/systemui/qs/QSQuickConnectView$RemoteViewReceiver;

    iget-object v1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSQuickConnectView$RemoteViewReceiver;-><init>(Lcom/android/systemui/qs/QSQuickConnectView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mReceiver:Lcom/android/systemui/qs/QSQuickConnectView$RemoteViewReceiver;

    .line 61
    return-void
.end method

.method private animateViews(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p1, "in"    # Landroid/view/View;
    .param p2, "out"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x1a0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 211
    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 220
    const/high16 v1, 0x3f800000    # 1.0f

    .line 219
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 227
    :cond_0
    if-eqz p2, :cond_1

    .line 228
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 231
    new-instance v1, Lcom/android/systemui/qs/QSQuickConnectView$1;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/qs/QSQuickConnectView$1;-><init>(Lcom/android/systemui/qs/QSQuickConnectView;Landroid/view/View;)V

    .line 228
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 210
    :cond_1
    return-void
.end method

.method private clearView(Z)V
    .locals 4
    .param p1, "immediately"    # Z

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    iput-object v1, v0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mCollapsed:Landroid/widget/RemoteViews;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    iput-object v1, v0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mExpanded:Landroid/widget/RemoteViews;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mIsExpanded:Z

    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSQuickConnectView;->refresh(Lcom/android/systemui/qs/QSQuickConnectView$State;)V

    .line 111
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

    iget-object v1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mTmpState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/qs/QSQuickConnectView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSQuickConnectView$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private isViewUpdateAvailable()Z
    .locals 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mIsFullyExpanded:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mFraction:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mFraction:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 158
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mIsFullyCollapsed:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/QSQuickConnectView;->isViewVisible()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isViewVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 153
    iget v1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHeight:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private refresh(Lcom/android/systemui/qs/QSQuickConnectView$State;)V
    .locals 7
    .param p1, "state"    # Lcom/android/systemui/qs/QSQuickConnectView$State;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 162
    const/4 v1, 0x0

    .line 164
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v3, p1, Lcom/android/systemui/qs/QSQuickConnectView$State;->mExpanded:Landroid/widget/RemoteViews;

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/android/systemui/qs/QSQuickConnectView$State;->mCollapsed:Landroid/widget/RemoteViews;

    if-nez v3, :cond_1

    .line 165
    iget-object v3, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lcom/android/systemui/qs/QSQuickConnectView$State;->copyTo(Lcom/android/systemui/qs/QSQuickConnectView$State;Z)Z

    .line 166
    invoke-direct {p0, v5, v6}, Lcom/android/systemui/qs/QSQuickConnectView;->updateView(Landroid/view/View;Z)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-boolean v3, p1, Lcom/android/systemui/qs/QSQuickConnectView$State;->mIsExpanded:Z

    if-eqz v3, :cond_2

    iget-object v0, p1, Lcom/android/systemui/qs/QSQuickConnectView$State;->mExpanded:Landroid/widget/RemoteViews;

    .line 170
    .local v0, "remote":Landroid/widget/RemoteViews;
    :goto_1
    if-eqz v0, :cond_0

    .line 171
    iget-object v3, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 173
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    invoke-virtual {p1, v3, v6}, Lcom/android/systemui/qs/QSQuickConnectView$State;->copyTo(Lcom/android/systemui/qs/QSQuickConnectView$State;Z)Z

    .line 174
    invoke-direct {p0, v2, v6}, Lcom/android/systemui/qs/QSQuickConnectView;->updateView(Landroid/view/View;Z)V

    goto :goto_0

    .line 169
    .end local v0    # "remote":Landroid/widget/RemoteViews;
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/qs/QSQuickConnectView$State;->mCollapsed:Landroid/widget/RemoteViews;

    goto :goto_1
.end method

.method private startSizeChangeAnimation(II)V
    .locals 4
    .param p1, "oldHeight"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 244
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 246
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 247
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 248
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/qs/QSQuickConnectView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSQuickConnectView$2;-><init>(Lcom/android/systemui/qs/QSQuickConnectView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/qs/QSQuickConnectView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSQuickConnectView$3;-><init>(Lcom/android/systemui/qs/QSQuickConnectView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 241
    return-void
.end method

.method private updateContainerHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 202
    iget v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHeight:I

    if-ne v0, p1, :cond_0

    return-void

    .line 204
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHeight:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/QSQuickConnectView;->startSizeChangeAnimation(II)V

    .line 205
    iput p1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHeight:I

    .line 201
    return-void
.end method

.method private updateView(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/qs/QSQuickConnectView;->isViewUpdateAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mViewUpdateDelyed:Z

    .line 183
    return-void

    .line 185
    :cond_0
    if-nez p1, :cond_2

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/QSQuickConnectView;->updateContainerHeight(I)V

    .line 187
    if-eqz p2, :cond_4

    .line 189
    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 190
    .local v0, "childCount":I
    if-nez v0, :cond_3

    const/4 v1, 0x0

    .line 191
    :goto_1
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 192
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/qs/QSQuickConnectView;->animateViews(Landroid/view/View;Landroid/view/View;)V

    .line 180
    .end local v0    # "childCount":I
    :goto_2
    return-void

    .line 185
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 190
    .restart local v0    # "childCount":I
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "oldView":Landroid/view/View;
    goto :goto_1

    .line 195
    .end local v0    # "childCount":I
    .end local v1    # "oldView":Landroid/view/View;
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 196
    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2
.end method


# virtual methods
.method public collapseIfNeeded()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mIsExpanded:Z

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mIsExpanded:Z

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

    iget-object v1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHandler:Lcom/android/systemui/qs/QSQuickConnectView$H;

    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/qs/QSQuickConnectView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSQuickConnectView$H;->sendMessage(Landroid/os/Message;)Z

    .line 99
    return-void
.end method

.method public getAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 2

    .prologue
    .line 93
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    .line 95
    .local v0, "animator":Lcom/android/systemui/qs/TouchAnimator;
    return-object v0
.end method

.method public getBarHeight()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mHeight:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getBarVisibility()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/systemui/qs/QSBarItem;->onDetachedFromWindow()V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mReceiver:Lcom/android/systemui/qs/QSQuickConnectView$RemoteViewReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    return-void
.end method

.method public onEmergencyModeChanged()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSQuickConnectView;->clearView(Z)V

    .line 107
    return-void
.end method

.method public onExpandingFinished(F)V
    .locals 1
    .param p1, "mExpandedHeight"    # F

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mViewUpdateDelyed:Z

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mViewUpdateDelyed:Z

    .line 138
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSQuickConnectView;->refresh(Lcom/android/systemui/qs/QSQuickConnectView$State;)V

    .line 135
    :cond_0
    return-void
.end method

.method public setFullyCollapsed(Z)V
    .locals 0
    .param p1, "fullyExpanded"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mIsFullyCollapsed:Z

    .line 148
    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 0
    .param p1, "fullyExpanded"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mIsFullyExpanded:Z

    .line 143
    return-void
.end method

.method public setPosition(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSBarItem;->setPosition(F)V

    .line 127
    iput p1, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mFraction:F

    .line 128
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mViewUpdateDelyed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mViewUpdateDelyed:Z

    .line 130
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView;->mState:Lcom/android/systemui/qs/QSQuickConnectView$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSQuickConnectView;->refresh(Lcom/android/systemui/qs/QSQuickConnectView$State;)V

    .line 125
    :cond_1
    return-void
.end method
