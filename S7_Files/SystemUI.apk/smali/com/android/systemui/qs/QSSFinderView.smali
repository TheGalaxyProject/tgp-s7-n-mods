.class public Lcom/android/systemui/qs/QSSFinderView;
.super Lcom/android/systemui/qs/QSBarItem;
.source "QSSFinderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSFinderEditText:Landroid/widget/RelativeLayout;

.field private mSFinderIconView:Landroid/widget/ImageView;

.field private mSFinderView:Landroid/view/View;

.field private mSFinederTranslation:F

.field private mTouchable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "barType"    # I

    .prologue
    const/4 v2, 0x1

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSBarItem;-><init>(Landroid/content/Context;I)V

    .line 46
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSSFinderView;->mTouchable:Z

    .line 51
    iput-object p1, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 53
    const v1, 0x7f040105

    .line 52
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    const v0, 0x7f1302f4

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSSFinderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderView:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0379

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinederTranslation:F

    .line 56
    const v0, 0x7f1302f7

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSSFinderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderIconView:Landroid/widget/ImageView;

    .line 57
    const v0, 0x7f1302f5

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSSFinderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderEditText:Landroid/widget/RelativeLayout;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderEditText:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v1, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSFinderView;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    return-void

    .line 60
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private startSFinderActivity(Ljava/lang/String;)V
    .locals 5
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    .line 130
    const-string/jumbo v3, "com.samsung.android.app.galaxyfinder"

    const-string/jumbo v4, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    .line 129
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "launch_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/android/systemui/qs/QSSFinderView;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    .line 128
    return-void
.end method


# virtual methods
.method public getAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 101
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 102
    const-string/jumbo v2, "alpha"

    .line 101
    new-array v3, v8, [F

    .line 102
    aput v5, v3, v6

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v7

    .line 101
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 103
    const-string/jumbo v2, "translationY"

    .line 101
    new-array v3, v8, [F

    .line 103
    iget v4, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinederTranslation:F

    neg-float v4, v4

    aput v4, v3, v6

    aput v5, v3, v7

    .line 101
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 104
    const/high16 v2, 0x3f000000    # 0.5f

    .line 101
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    .line 106
    .local v0, "animator":Lcom/android/systemui/qs/TouchAnimator;
    return-object v0
.end method

.method public getBarHeight()I
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSFinderView;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d037a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBarVisibility()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    return v0

    .line 89
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mTouchable:Z

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isSFinderTileBlocked()Z

    move-result v0

    .line 112
    if-eqz v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderIconView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 117
    const-string/jumbo v0, "voice_input"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSSFinderView;->startSFinderActivity(Ljava/lang/String;)V

    .line 121
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.systemui.statusbar.policy.quicksetting"

    .line 123
    const-string/jumbo v2, "QP03"

    .line 122
    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    :cond_2
    return-void

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderEditText:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_1

    .line 119
    const-string/jumbo v0, "text_input"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSSFinderView;->startSFinderActivity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEmergencyModeChanged()V
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSFinderView;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSBarItem$Callback;->onHeightChanged()V

    .line 93
    :cond_0
    return-void

    .line 94
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setPosition(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSBarItem;->setPosition(F)V

    .line 75
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 76
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mTouchable:Z

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mTouchable:Z

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mTouchable:Z

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mTouchable:Z

    goto :goto_0
.end method
