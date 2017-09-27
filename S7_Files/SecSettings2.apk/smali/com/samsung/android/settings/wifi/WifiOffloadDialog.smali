.class public Lcom/samsung/android/settings/wifi/WifiOffloadDialog;
.super Landroid/app/Activity;
.source "WifiOffloadDialog.java"


# instance fields
.field private dialogLayout:Landroid/view/View;

.field private mActivityMgr:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mIsUserAction:Z

.field private mOrientation:I

.field private mPackageName:Ljava/lang/String;

.field private mTaskID:I

.field private mWifiOffloadManager:Landroid/net/wifi/WifiOffloadManager;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;Z)V
    .locals 0
    .param p1, "startTimer"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->doFinish(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mActivityMgr:Landroid/app/ActivityManager;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mIsUserAction:Z

    .line 28
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mPackageName:Ljava/lang/String;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mTaskID:I

    .line 31
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->dialogLayout:Landroid/view/View;

    .line 22
    return-void
.end method

.method private doFinish(Z)V
    .locals 3
    .param p1, "startTimer"    # Z

    .prologue
    const/4 v2, 0x1

    .line 152
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mIsUserAction:Z

    .line 153
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mWifiOffloadManager:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v0, :cond_0

    .line 154
    const-string/jumbo v0, "WifiOffloadDialog"

    const-string/jumbo v1, "Start 12 hours timer"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mWifiOffloadManager:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiOffloadManager;->startTimer()V

    .line 158
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->moveTaskToBack(Z)Z

    .line 159
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 151
    return-void
.end method

.method private getDimension(I)I
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getTopActivityFromStack()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mActivityMgr:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 48
    const-string/jumbo v2, "activity"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mActivityMgr:Landroid/app/ActivityManager;

    .line 49
    const-string/jumbo v2, "wifioffload"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiOffloadManager;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mWifiOffloadManager:Landroid/net/wifi/WifiOffloadManager;

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getTaskId()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mTaskID:I

    .line 53
    const v2, 0x7f1107e5

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 54
    .local v1, "notNow":Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 55
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;-><init>(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    :cond_0
    const v2, 0x7f1107e6

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 63
    .local v0, "dontShowAgain":Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 64
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$2;-><init>(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_1
    return-void
.end method

.method private updateLayoutOnOrientationChange()V
    .locals 3

    .prologue
    .line 133
    const v2, 0x7f1107e3

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 134
    .local v1, "wifiFragmentLayout":Landroid/widget/FrameLayout;
    const v2, 0x7f0a0671

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getDimension(I)I

    move-result v0

    .line 135
    .local v0, "height":I
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 132
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->doFinish(Z)V

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 111
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    const-string/jumbo v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged() ===>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->updateLayoutOnOrientationChange()V

    .line 128
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mOrientation:I

    .line 121
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iput-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    .line 39
    const v1, 0x7f040352

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 43
    const-string/jumbo v1, "EXTRA_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mPackageName:Ljava/lang/String;

    .line 35
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getTaskId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mTaskID:I

    .line 88
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mIsUserAction:Z

    if-nez v0, :cond_0

    .line 89
    const-string/jumbo v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "top activity :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string/jumbo v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packageName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string/jumbo v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Dialog TaskID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mTaskID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mWifiOffloadManager:Landroid/net/wifi/WifiOffloadManager;

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mTaskID:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiOffloadManager;->checkAppNeedsMoveToFront(I)V

    .line 82
    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->initialize()V

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 104
    const-string/jumbo v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 105
    .local v0, "mStatusBar":Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 100
    :cond_0
    return-void
.end method
