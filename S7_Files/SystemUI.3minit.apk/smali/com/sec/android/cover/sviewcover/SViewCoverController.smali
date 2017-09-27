.class public Lcom/sec/android/cover/sviewcover/SViewCoverController;
.super Lcom/sec/android/cover/BaseCoverController;
.source "SViewCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverController$1;,
        Lcom/sec/android/cover/sviewcover/SViewCoverController$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

.field private mPreviewRootView:Landroid/widget/FrameLayout;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/sviewcover/SViewCoverController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/sviewcover/SViewCoverController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/sviewcover/SViewCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverController;->addView()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sec/android/cover/sviewcover/SViewCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverController;->removeView()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/sec/android/cover/sviewcover/SViewCoverController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/widget/FrameLayout;
    .param p3, "previewRootView"    # Landroid/widget/FrameLayout;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/cover/BaseCoverController;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverController$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverController;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mUpdateHandler:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverController$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverController;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 51
    iput-object p2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mRootView:Landroid/widget/FrameLayout;

    .line 52
    iput-object p3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mPreviewRootView:Landroid/widget/FrameLayout;

    .line 53
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SViewCoverController instance created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method private addView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_view:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    .line 71
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 73
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SViewCoverView added at rootview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    instance-of v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mPreviewRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setPreviewRootView(Landroid/widget/FrameLayout;)V

    .line 78
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SViewCoverView added at rootview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    return-void
.end method

.method private removeView()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 91
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverController;->addView()V

    .line 88
    return-void
.end method

.method public onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverController;->removeView()V

    .line 102
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    .line 103
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mRootView:Landroid/widget/FrameLayout;

    .line 95
    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onStatusBarStateChanged(I)V
    .locals 1
    .param p1, "statusBarState"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onStatusBarStateChanged(I)V

    .line 116
    :cond_0
    return-void
.end method

.method public setCoverUiAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->setCoverUiAlpha(F)V

    .line 141
    :cond_0
    return-void
.end method

.method public showCoverOpenPopup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v0

    .line 126
    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_view_detail:I

    const/4 v2, 0x1

    .line 125
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    .line 123
    :cond_0
    return-void
.end method

.method public showCoverOpenPopup(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v0

    .line 135
    const/4 v1, 0x1

    .line 134
    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(Ljava/lang/String;ILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    .line 132
    :cond_0
    return-void
.end method
