.class public Lcom/android/settings/search/SecValueTrackerActivity;
.super Lcom/android/settings/SettingsActivity;
.source "SecValueTrackerActivity.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/settings/search/SecValueTrackerActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 19
    invoke-static {p1}, Lcom/android/settings/search/SecValueTrackerActivity;->setSettingsActivityContext(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method public initCategories()V
    .locals 3

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/android/settings/search/SecValueTrackerActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 24
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    new-instance v1, Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/DashboardAdapter;-><init>(Landroid/content/Context;)V

    .line 25
    .local v1, "mAdapter":Lcom/android/settings/dashboard/DashboardAdapter;
    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->updateTileList(Ljava/util/List;)V

    .line 26
    invoke-static {p0}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/search/SecIndex;->setCategories(Ljava/util/List;)V

    .line 27
    invoke-static {p0}, Lcom/android/settings/Utils;->startSearchIndexing(Landroid/app/Activity;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/search/SecValueTrackerActivity;->finish()V

    .line 22
    return-void
.end method

.method public preCheckStatus()V
    .locals 2

    .prologue
    .line 32
    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportVZWNetworkLock(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isVzwNetworkUnLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    new-instance v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;-><init>(Landroid/content/Context;)V

    .line 34
    .local v0, "utils":Lcom/samsung/android/settings/networklock/NetworkLockUtils;
    invoke-virtual {v0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->checkLockStatus()V

    goto :goto_0
.end method
