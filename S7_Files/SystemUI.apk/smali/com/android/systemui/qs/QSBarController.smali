.class public Lcom/android/systemui/qs/QSBarController;
.super Ljava/lang/Object;
.source "QSBarController.java"


# instance fields
.field private mBarSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCollapsedBars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCollapsedHeight:I

.field private mContext:Landroid/content/Context;

.field private mDeskMode:Z

.field private mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

.field private mHeaderBars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mPanelBars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mQSDataUsage:Lcom/android/systemui/qs/QSDataUsageView;

.field private mQsBrightness:Lcom/android/systemui/qs/QSBrightnessView;

.field private mQsMultiSimPreferredSlotView:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQsSFinder:Lcom/android/systemui/qs/QSSFinderView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSBarController;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSBarController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSBarController;->calculateActiveBarHeight()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSBarController;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSBarController;->setBarVisibilty(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;
    .param p3, "header"    # Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;
    .param p4, "deskMode"    # Z

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mHeaderBars:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mPanelBars:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedBars:Ljava/util/ArrayList;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedHeight:I

    .line 69
    iput-object p1, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/systemui/qs/QSBarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    new-instance v1, Lcom/android/systemui/qs/QSBarController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSBarController$1;-><init>(Lcom/android/systemui/qs/QSBarController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setBarCallback(Lcom/android/systemui/qs/QSPanel$QsBarCallback;)V

    .line 77
    iput-object p3, p0, Lcom/android/systemui/qs/QSBarController;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    .line 78
    iput-boolean p4, p0, Lcom/android/systemui/qs/QSBarController;->mDeskMode:Z

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSBarController;->loadBarSpecs()V

    .line 68
    return-void
.end method

.method private addBars()V
    .locals 5

    .prologue
    .line 152
    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mHeaderBars:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 153
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 154
    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 153
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 155
    .local v2, "param":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 156
    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 159
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    .end local v2    # "param":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mPanelBars:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 160
    .restart local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 163
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedBars:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 164
    .restart local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 151
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_2
    return-void
.end method

.method private calculateActiveBarHeight()V
    .locals 5

    .prologue
    .line 191
    const/4 v2, 0x0

    .line 192
    .local v2, "sum":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 193
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->getBarType()I

    move-result v3

    sget v4, Lcom/android/systemui/qs/QSBarItem;->ON_BOTH:I

    if-ne v3, v4, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->getBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 197
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_1
    iput v2, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedHeight:I

    .line 190
    return-void
.end method

.method private loadBarSpecs()V
    .locals 6

    .prologue
    .line 83
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSBarController;->mDeskMode:Z

    if-nez v2, :cond_a

    .line 87
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isSFinderEnabled()Z

    move-result v2

    .line 86
    if-eqz v2, :cond_0

    .line 88
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_S_FINDER_QS_BAR:Z

    .line 86
    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isSupportSFinder(Landroid/content/Context;)Z

    move-result v2

    .line 86
    if-eqz v2, :cond_0

    .line 90
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_0

    .line 91
    new-instance v2, Lcom/android/systemui/qs/QSSFinderView;

    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/qs/QSBarItem;->ON_HEADER:I

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/qs/QSSFinderView;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mQsSFinder:Lcom/android/systemui/qs/QSSFinderView;

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isBrightnessControllerEnabled()Z

    move-result v2

    .line 93
    if-eqz v2, :cond_1

    .line 95
    new-instance v2, Lcom/android/systemui/qs/QSBrightnessView;

    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/qs/QSBarItem;->ON_PANEL:I

    .line 96
    iget-object v5, p0, Lcom/android/systemui/qs/QSBarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 95
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/qs/QSBrightnessView;-><init>(Landroid/content/Context;ILcom/android/systemui/qs/QSPanel;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mQsBrightness:Lcom/android/systemui/qs/QSBrightnessView;

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mQsSFinder:Lcom/android/systemui/qs/QSSFinderView;

    if-eqz v2, :cond_2

    .line 99
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mQsSFinder:Lcom/android/systemui/qs/QSSFinderView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mQsBrightness:Lcom/android/systemui/qs/QSBrightnessView;

    if-eqz v2, :cond_3

    .line 101
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mQsBrightness:Lcom/android/systemui/qs/QSBrightnessView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_3
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_QUICKPANEL_DATAUSAGE:Z

    if-eqz v2, :cond_4

    .line 105
    new-instance v2, Lcom/android/systemui/qs/QSDataUsageView;

    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/qs/QSBarItem;->ON_BOTH:I

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/qs/QSDataUsageView;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mQSDataUsage:Lcom/android/systemui/qs/QSDataUsageView;

    .line 106
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mQSDataUsage:Lcom/android/systemui/qs/QSDataUsageView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_4
    new-instance v2, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    .line 112
    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/qs/QSBarItem;->ON_BOTH:I

    .line 111
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mQsMultiSimPreferredSlotView:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    .line 113
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/qs/QSBarController;->mQsMultiSimPreferredSlotView:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/qs/QSHandlerView;

    iget-object v4, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/qs/QSBarItem;->ON_BOTH:I

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/qs/QSHandlerView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isQuickConnectEnabled()Z

    move-result v2

    .line 118
    if-eqz v2, :cond_5

    .line 121
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/qs/QSQuickConnectView;

    iget-object v4, p0, Lcom/android/systemui/qs/QSBarController;->mContext:Landroid/content/Context;

    .line 122
    sget v5, Lcom/android/systemui/qs/QSBarItem;->ON_BOTH:I

    .line 121
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/qs/QSQuickConnectView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 130
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->getBarType()I

    move-result v2

    sget v3, Lcom/android/systemui/qs/QSBarItem;->ON_HEADER:I

    if-ne v2, v3, :cond_7

    .line 131
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mHeaderBars:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_6
    :goto_1
    new-instance v2, Lcom/android/systemui/qs/QSBarController$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSBarController$2;-><init>(Lcom/android/systemui/qs/QSBarController;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSBarItem;->setCallback(Lcom/android/systemui/qs/QSBarItem$Callback;)V

    goto :goto_0

    .line 132
    :cond_7
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->getBarType()I

    move-result v2

    sget v3, Lcom/android/systemui/qs/QSBarItem;->ON_PANEL:I

    if-ne v2, v3, :cond_8

    .line 133
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mPanelBars:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    :cond_8
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->getBarType()I

    move-result v2

    sget v3, Lcom/android/systemui/qs/QSBarItem;->ON_BOTH:I

    if-ne v2, v3, :cond_6

    .line 135
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedBars:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget v2, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedHeight:I

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->getBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedHeight:I

    goto :goto_1

    .line 147
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/qs/QSBarController;->addBars()V

    .line 82
    .end local v1    # "bar$iterator":Ljava/util/Iterator;
    :cond_a
    return-void
.end method

.method private setBarVisibilty(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 185
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 186
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSBarItem;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    .line 183
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_1
    return-void
.end method


# virtual methods
.method public collapseIfNeeded()V
    .locals 3

    .prologue
    .line 209
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 210
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->collapseIfNeeded()V

    goto :goto_0

    .line 208
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_0
    return-void
.end method

.method public getCollapsedHeight()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/android/systemui/qs/QSBarController;->mCollapsedHeight:I

    return v0
.end method

.method public hasBarOnHeader()Z
    .locals 3

    .prologue
    .line 239
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mHeaderBars:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 240
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->getBarVisibility()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    .line 242
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public onEmergencyModeChanged()V
    .locals 3

    .prologue
    .line 216
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->onEmergencyModeChanged()V

    .line 218
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 219
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->onEmergencyModeChanged()V

    goto :goto_0

    .line 215
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_0
    return-void
.end method

.method public onExpandingFinished(F)V
    .locals 3
    .param p1, "mExpandedHeight"    # F

    .prologue
    .line 246
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 247
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSBarItem;->onExpandingFinished(F)V

    goto :goto_0

    .line 245
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_0
    return-void
.end method

.method public onPanelVisible()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mQSDataUsage:Lcom/android/systemui/qs/QSDataUsageView;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mQSDataUsage:Lcom/android/systemui/qs/QSDataUsageView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDataUsageView;->onPanelVisible()V

    .line 231
    :cond_0
    return-void
.end method

.method public setBarState(I)V
    .locals 3
    .param p1, "statusBarState"    # I

    .prologue
    .line 264
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 265
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSBarItem;->setBarState(I)V

    goto :goto_0

    .line 263
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_0
    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 1
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mQsBrightness:Lcom/android/systemui/qs/QSBrightnessView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mQsBrightness:Lcom/android/systemui/qs/QSBrightnessView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSBrightnessView;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 204
    :cond_0
    return-void
.end method

.method public setDataUsageController(Lcom/android/settingslib/net/DataUsageController;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/settingslib/net/DataUsageController;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mQSDataUsage:Lcom/android/systemui/qs/QSDataUsageView;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/systemui/qs/QSBarController;->mQSDataUsage:Lcom/android/systemui/qs/QSDataUsageView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDataUsageView;->setDataUsageController(Lcom/android/settingslib/net/DataUsageController;)V

    .line 225
    :cond_0
    return-void
.end method

.method public setFullyCollapsed(Z)V
    .locals 3
    .param p1, "fullyCollapsed"    # Z

    .prologue
    .line 258
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 259
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSBarItem;->setFullyCollapsed(Z)V

    goto :goto_0

    .line 257
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_0
    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 3
    .param p1, "fullyExpanded"    # Z

    .prologue
    .line 252
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 253
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSBarItem;->setFullyExpanded(Z)V

    goto :goto_0

    .line 251
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_0
    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 3
    .param p1, "qsh"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/systemui/qs/QSBarController;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 178
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 179
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSBarItem;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    goto :goto_0

    .line 176
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_0
    return-void
.end method

.method public setPosition(F)V
    .locals 3
    .param p1, "expansion"    # F

    .prologue
    .line 169
    iget-object v2, p0, Lcom/android/systemui/qs/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bar$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBarItem;

    .line 170
    .local v0, "bar":Lcom/android/systemui/qs/QSBarItem;
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarItem;->getAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSBarItem;->setPosition(F)V

    goto :goto_0

    .line 168
    .end local v0    # "bar":Lcom/android/systemui/qs/QSBarItem;
    :cond_1
    return-void
.end method
