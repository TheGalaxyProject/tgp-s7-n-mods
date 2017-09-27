.class public Lcom/samsung/android/settings/SettingsActivityWrapper;
.super Lcom/android/settings/SettingsActivity;
.source "SettingsActivityWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {p0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;->onIsHidingHeaders()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 37
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    return v6

    .line 62
    :pswitch_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v7, 0x64

    if-lt v6, v7, :cond_1

    const/4 v4, 0x1

    .line 64
    .local v4, "mIsSecureFolder":Z
    :goto_0
    invoke-static {p0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_2

    .line 87
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;->finish()V

    .line 88
    const/4 v6, 0x1

    return v6

    .line 62
    .end local v4    # "mIsSecureFolder":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "mIsSecureFolder":Z
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v5

    .line 66
    .local v5, "upIntent":Landroid/content/Intent;
    if-eqz v5, :cond_0

    .line 67
    const/4 v3, 0x0

    .line 68
    .local v3, "isHeroMenuTree":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 69
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v6, "Settings$ConnectionsSettingsActivity"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 71
    const-string/jumbo v6, "Settings$CloudAccountSettingsActivity"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 70
    if-nez v6, :cond_3

    .line 72
    const-string/jumbo v6, "Settings$GeneralDeviceSettingsActivity"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 70
    if-eqz v6, :cond_4

    .line 73
    :cond_3
    const/4 v3, 0x1

    .line 76
    .end local v0    # "className":Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v2

    .line 77
    .local v2, "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-virtual {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v3, :cond_6

    .line 78
    :cond_5
    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.android.settings.Settings"

    invoke-direct {v6, p0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 81
    :cond_6
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SettingsActivityWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
