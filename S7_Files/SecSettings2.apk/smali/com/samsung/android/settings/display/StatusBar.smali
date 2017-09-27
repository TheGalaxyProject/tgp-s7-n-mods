.class public Lcom/samsung/android/settings/display/StatusBar;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "StatusBar.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/StatusBar$1;,
        Lcom/samsung/android/settings/display/StatusBar$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final isSupportNetworkSpeedFeature:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mNetworkSpeed:Landroid/preference/SwitchPreference;

.field private mRecentNotiStatusBar:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/display/StatusBar;->isSupportNetworkSpeedFeature:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/StatusBar;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/StatusBar;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/StatusBar;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mRecentNotiStatusBar:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_SupportRealTimeNetworkSpeed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/display/StatusBar;->isSupportNetworkSpeedFeature:Z

    .line 184
    new-instance v0, Lcom/samsung/android/settings/display/StatusBar$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/StatusBar$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/StatusBar;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 66
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mCurConfig:Landroid/content/res/Configuration;

    .line 207
    new-instance v0, Lcom/samsung/android/settings/display/StatusBar$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/StatusBar$2;-><init>(Lcom/samsung/android/settings/display/StatusBar;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 53
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x2e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 148
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 84
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 86
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 88
    .local v1, "resolver":Landroid/content/ContentResolver;
    const v2, 0x7f080127

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/StatusBar;->addPreferencesFromResource(I)V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mContext:Landroid/content/Context;

    .line 91
    const-string/jumbo v2, "recent_notification_status_bar"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/StatusBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mRecentNotiStatusBar:Landroid/preference/SwitchPreference;

    .line 92
    const-string/jumbo v2, "display_battery_percent"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/StatusBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

    .line 94
    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mRecentNotiStatusBar:Landroid/preference/SwitchPreference;

    new-array v5, v3, [Ljava/lang/Object;

    .line 95
    const v6, 0x7f0b0447

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/StatusBar;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 94
    const v6, 0x7f0b0569

    invoke-virtual {p0, v6, v5}, Lcom/samsung/android/settings/display/StatusBar;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v5, p0, Lcom/samsung/android/settings/display/StatusBar;->mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 98
    const-string/jumbo v6, "display_battery_percentage"

    .line 97
    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 99
    const-string/jumbo v2, "On"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_SystemUI_ConfigDefStatusSimpleStatusBar"

    const-string/jumbo v7, "On"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mRecentNotiStatusBar:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 101
    const-string/jumbo v6, "simple_status_bar"

    .line 100
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 106
    :goto_2
    sget-boolean v2, Lcom/samsung/android/settings/display/StatusBar;->isSupportNetworkSpeedFeature:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 109
    const-string/jumbo v2, "network_speed"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/StatusBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mNetworkSpeed:Landroid/preference/SwitchPreference;

    .line 110
    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mNetworkSpeed:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mRecentNotiStatusBar:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 83
    return-void

    :cond_0
    move v2, v4

    .line 97
    goto :goto_0

    :cond_1
    move v3, v4

    .line 100
    goto :goto_1

    .line 103
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mRecentNotiStatusBar:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 104
    const-string/jumbo v6, "simple_status_bar"

    .line 103
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    :goto_4
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_3
    move v3, v4

    goto :goto_4

    .line 107
    :cond_4
    const-string/jumbo v2, "network_speed"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/StatusBar;->removePreference(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "StatusBar"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 157
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 154
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 168
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/display/StatusBar;->mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 170
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 171
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 172
    const-string/jumbo v5, "display_battery_percentage"

    if-eqz v1, :cond_0

    move v2, v3

    .line 171
    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    .end local v1    # "value":Z
    :cond_1
    :goto_0
    return v3

    .line 173
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/display/StatusBar;->mRecentNotiStatusBar:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 174
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 175
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "simple_status_bar"

    .line 176
    if-eqz v1, :cond_3

    move v2, v3

    .line 175
    :cond_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 177
    .end local v1    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/display/StatusBar;->mNetworkSpeed:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 179
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "network_speed"

    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 129
    iget-object v3, p0, Lcom/samsung/android/settings/display/StatusBar;->mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 130
    const-string/jumbo v4, "display_battery_percentage"

    .line 129
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 131
    const-string/jumbo v0, "On"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_SystemUI_ConfigDefStatusSimpleStatusBar"

    const-string/jumbo v5, "On"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    iget-object v3, p0, Lcom/samsung/android/settings/display/StatusBar;->mRecentNotiStatusBar:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    const-string/jumbo v4, "simple_status_bar"

    .line 132
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 138
    :goto_2
    sget-boolean v0, Lcom/samsung/android/settings/display/StatusBar;->isSupportNetworkSpeedFeature:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mNetworkSpeed:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mNetworkSpeed:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 140
    const-string/jumbo v4, "network_speed"

    .line 139
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_5

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/StatusBar;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/StatusBar;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "StatusBar"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 127
    return-void

    :cond_1
    move v0, v2

    .line 129
    goto :goto_0

    :cond_2
    move v0, v2

    .line 132
    goto :goto_1

    .line 135
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/display/StatusBar;->mRecentNotiStatusBar:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/StatusBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    const-string/jumbo v4, "simple_status_bar"

    .line 135
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    .line 139
    goto :goto_3
.end method
