.class public Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;
.super Ljava/lang/Object;
.source "NearbyScanningEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;,
        Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;,
        Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsInit:Z

.field private mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

.field private mNearbyScanningObserver:Landroid/database/ContentObserver;

.field private mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mOnSwitchChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 26
    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 27
    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    .line 171
    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    .line 190
    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnSwitchChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    .line 215
    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nearbyScanning"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 26
    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 27
    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    .line 171
    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    .line 190
    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnSwitchChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    .line 215
    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 45
    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    .line 46
    instance-of v0, p2, Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v0, :cond_1

    .line 47
    check-cast p2, Lcom/samsung/android/settings/SettingsSwitchPreference;

    .end local p2    # "nearbyScanning":Ljava/lang/Object;
    iput-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 48
    .restart local p2    # "nearbyScanning":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_2

    .line 49
    check-cast p2, Lcom/android/settings/widget/SwitchBar;

    .end local p2    # "nearbyScanning":Ljava/lang/Object;
    iput-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    goto :goto_0

    .line 50
    .restart local p2    # "nearbyScanning":Ljava/lang/Object;
    :cond_2
    instance-of v0, p2, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 51
    check-cast p2, Landroid/preference/SwitchPreference;

    .end local p2    # "nearbyScanning":Ljava/lang/Object;
    iput-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

    goto :goto_0
.end method


# virtual methods
.method public getNearbyScanningSwitchBar()Lcom/android/settings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public init()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 56
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/Util;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v0

    .line 57
    .local v0, "nsValue":I
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v1, :cond_2

    .line 58
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 59
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-ne v0, v3, :cond_1

    const v1, 0x7f0b19db

    :goto_0
    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    .line 61
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 62
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 61
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    iput-boolean v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    .line 73
    :cond_0
    :goto_1
    const-string/jumbo v1, "NearbyScanningEnabler"

    const-string/jumbo v2, "Switch is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-boolean v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    return v1

    .line 60
    :cond_1
    const v1, 0x7f0b19dc

    goto :goto_0

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_3

    .line 65
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnSwitchChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 66
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 67
    iput-boolean v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    goto :goto_1

    .line 68
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 70
    iput-boolean v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    goto :goto_1
.end method

.method public onDestroyView()Z
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnSwitchChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 161
    const/4 v0, 0x1

    return v0

    .line 164
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 131
    iget-boolean v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    if-nez v2, :cond_0

    .line 132
    const-string/jumbo v2, "NearbyScanningEnabler"

    const-string/jumbo v3, "Init is faild"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return v4

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 137
    const-string/jumbo v2, "NearbyScanningEnabler"

    const-string/jumbo v3, "Context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v4

    .line 141
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 143
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_2

    .line 144
    const-string/jumbo v2, "NearbyScanningEnabler"

    const-string/jumbo v3, "ContentResolver is null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v4

    .line 149
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 84
    iget-boolean v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    if-nez v3, :cond_0

    .line 85
    const-string/jumbo v3, "NearbyScanningEnabler"

    const-string/jumbo v4, "Init is faild"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v5

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 90
    const-string/jumbo v3, "NearbyScanningEnabler"

    const-string/jumbo v4, "Context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return v5

    .line 94
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_2

    .line 97
    const-string/jumbo v3, "NearbyScanningEnabler"

    const-string/jumbo v4, "ContentResolver is null"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v5

    .line 103
    :cond_2
    :try_start_0
    const-string/jumbo v3, "nearby_scanning_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 104
    iget-object v6, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x1

    .line 102
    invoke-virtual {v0, v3, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/Util;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v2

    .line 111
    .local v2, "nsValue":I
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v3, :cond_5

    .line 112
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 113
    iget-object v6, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-ne v2, v4, :cond_3

    const v3, 0x7f0b19db

    :goto_1
    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    .line 115
    iget-object v6, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-ne v2, v4, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 116
    return v4

    .line 105
    .end local v2    # "nsValue":I
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 114
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "nsValue":I
    :cond_3
    const v3, 0x7f0b19dc

    goto :goto_1

    :cond_4
    move v3, v5

    .line 115
    goto :goto_2

    .line 117
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_7

    .line 118
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-ne v2, v4, :cond_6

    move v5, v4

    :cond_6
    invoke-virtual {v3, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 119
    return v4

    .line 122
    :cond_7
    const-string/jumbo v3, "NearbyScanningEnabler"

    const-string/jumbo v4, "Switch is null"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v5
.end method
