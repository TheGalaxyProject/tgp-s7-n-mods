.class public Lcom/android/settings/applications/PremiumSmsAccess;
.super Lcom/android/settings/notification/EmptyTextSettings;
.source "PremiumSmsAccess.java"

# interfaces
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;
    }
.end annotation


# instance fields
.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/PremiumSmsAccess;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/notification/EmptyTextSettings;-><init>()V

    return-void
.end method

.method private update()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    sget-object v1, Lcom/android/settings/applications/AppStateSmsPremBridge;->FILTER_APP_PREMIUM_SMS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 129
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 128
    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/PremiumSmsAccess;->updatePrefs(Ljava/util/ArrayList;)V

    .line 127
    return-void
.end method

.method private updatePrefs(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->isAdded()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 103
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 104
    :cond_1
    const v4, 0x7f0b1538

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/PremiumSmsAccess;->setEmptyText(I)V

    .line 105
    invoke-virtual {p0, v6, v7}, Lcom/android/settings/applications/PremiumSmsAccess;->setLoading(ZZ)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    .line 106
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 108
    .local v1, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 112
    new-instance v2, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, p0, v4, v5}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;-><init>(Lcom/android/settings/applications/PremiumSmsAccess;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)V

    .line 113
    .local v2, "smsPreference":Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;
    invoke-virtual {v2, p0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    .end local v2    # "smsPreference":Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 117
    new-instance v3, Lcom/android/settings/DividerPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/DividerPreference;-><init>(Landroid/content/Context;)V

    .line 118
    .local v3, "summary":Lcom/android/settings/DividerPreference;
    invoke-virtual {v3, v6}, Lcom/android/settings/DividerPreference;->setSelectable(Z)V

    .line 119
    const v4, 0x7f0b1b52

    invoke-virtual {v3, v4}, Lcom/android/settings/DividerPreference;->setSummary(I)V

    .line 120
    invoke-virtual {v3, v7}, Lcom/android/settings/DividerPreference;->setDividerAllowedAbove(Z)V

    .line 121
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 124
    .end local v3    # "summary":Lcom/android/settings/DividerPreference;
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/PremiumSmsAccess;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 101
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0x184

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/notification/EmptyTextSettings;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 65
    new-instance v0, Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/applications/AppStateSmsPremBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    .line 60
    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->update()V

    .line 133
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 158
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateSmsPremBridge;->pause()V

    .line 84
    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->pause()V

    .line 85
    invoke-super {p0}, Lcom/android/settings/notification/EmptyTextSettings;->onPause()V

    .line 82
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    move-object v0, p1

    .line 95
    check-cast v0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;

    .line 96
    .local v0, "pref":Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;
    iget-object v1, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-static {v0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->-get0(Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 97
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 96
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/AppStateSmsPremBridge;->setSmsState(Ljava/lang/String;I)V

    .line 98
    const/4 v1, 0x1

    return v1
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-direct {p0, p1}, Lcom/android/settings/applications/PremiumSmsAccess;->updatePrefs(Ljava/util/ArrayList;)V

    .line 138
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/settings/notification/EmptyTextSettings;->onResume()V

    .line 77
    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->resume()V

    .line 78
    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateSmsPremBridge;->resume()V

    .line 75
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 143
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/PremiumSmsAccess;->setLoading(ZZ)V

    .line 69
    return-void
.end method
