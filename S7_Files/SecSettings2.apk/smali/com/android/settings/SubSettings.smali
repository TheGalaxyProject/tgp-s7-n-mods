.class public Lcom/android/settings/SubSettings;
.super Lcom/android/settings/SettingsActivity;
.source "SubSettings.java"


# instance fields
.field private fromSearch:Z

.field private isLaunched:Z

.field private needSearchMenuInSub:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/settings/SubSettings;->isLaunched:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/settings/SubSettings;->needSearchMenuInSub:Z

    .line 37
    return-void
.end method


# virtual methods
.method protected getAssistantBundle(Z)Landroid/os/Bundle;
    .locals 3
    .param p1, "register"    # Z

    .prologue
    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "ActivityName"

    const-string/jumbo v2, "com.android.settings.SubSettings"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    const-string/jumbo v1, "IconName"

    const-string/jumbo v2, "Search"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    const-string/jumbo v1, "register"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string/jumbo v0, "SubSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Launching fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 103
    .local v1, "i":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 104
    const-string/jumbo v2, ":settings:show_fragment_args"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    const-string/jumbo v2, ":settings:show_fragment_args"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 106
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "fromSearch"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const-string/jumbo v2, "fromSearch"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    .line 109
    :cond_0
    if-eqz v0, :cond_1

    .line 110
    const-string/jumbo v2, "needSearchMenuInSub"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SubSettings;->needSearchMenuInSub:Z

    .line 115
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    if-eqz p1, :cond_2

    .line 118
    const-string/jumbo v2, "isLaunched"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SubSettings;->isLaunched:Z

    .line 119
    const-string/jumbo v2, "fromSearch"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    .line 122
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 99
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onDestroy()V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->unregisterAssistant()V

    .line 69
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 165
    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->openSearchView()V

    .line 167
    const/4 v0, 0x1

    return v0

    .line 169
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->finish()V

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPause()V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->unregisterAssistant()V

    .line 61
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPostResume()V

    .line 137
    invoke-static {p0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    iget-boolean v1, p0, Lcom/android/settings/SubSettings;->isLaunched:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->onBackPressed()V

    .line 140
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    if-nez v1, :cond_1

    return-void

    .line 142
    :cond_1
    invoke-static {p0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f110627

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 144
    .local v0, "mCurrentFrag":Landroid/app/Fragment;
    const-class v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {v0}, Landroid/app/Fragment;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    invoke-static {v0}, Lcom/android/settings/Utils;->performClickMenuBySearch(Landroid/app/Fragment;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SubSettings;->isLaunched:Z

    .line 152
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    .line 133
    return-void

    .line 149
    .end local v0    # "mCurrentFrag":Landroid/app/Fragment;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/SubSettings;->mMainContentId:I

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 150
    .restart local v0    # "mCurrentFrag":Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/settings/Utils;->performClickMenuBySearch(Landroid/app/Fragment;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SubSettings;->isLaunched:Z

    goto :goto_0
.end method

.method public onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "caller"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 156
    invoke-static {p0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, ":settings:prefs"

    .line 158
    const/4 v2, 0x1

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 161
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->registerAssistant()V

    .line 53
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 129
    const-string/jumbo v0, "isLaunched"

    iget-boolean v1, p0, Lcom/android/settings/SubSettings;->isLaunched:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    const-string/jumbo v0, "fromSearch"

    iget-boolean v1, p0, Lcom/android/settings/SubSettings;->fromSearch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onWindowFocusChanged(Z)V

    .line 81
    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mIsRunningSearchFragment:Z

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->unregisterAssistant()V

    .line 77
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->registerAssistant()V

    goto :goto_0
.end method

.method public registerAssistant()V
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/settings/SubSettings;->needSearchMenuInSub:Z

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->registerAssistant()V

    .line 89
    return-void
.end method

.method public unregisterAssistant()V
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/settings/SubSettings;->needSearchMenuInSub:Z

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->unregisterAssistant()V

    .line 94
    return-void
.end method
