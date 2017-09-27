.class public Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ShowInfomationMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$1;,
        Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;
    }
.end annotation


# static fields
.field public static final ACCU_SETTING_URI:Landroid/net/Uri;

.field public static final ACCU_WEATHERINFO_URI:Landroid/net/Uri;

.field private static INFO_AND_SHORTCUT:I

.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAdditionalInfo:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFromCoverSetting:Z

.field private mLockAppShortcut:Landroid/preference/PreferenceScreen;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mWeatherSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settingslib/RestrictedPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    .line 72
    const-string/jumbo v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    .line 84
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    .line 448
    new-instance v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$1;-><init>()V

    .line 447
    sput-object v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    .line 491
    new-instance v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;-><init>(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 58
    return-void
.end method

.method private InitValue()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 132
    const-string/jumbo v3, "ShowInfomationMenu"

    const-string/jumbo v6, "onResume() 1"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string/jumbo v3, "lock_screen_dualclock"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/SettingsSwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 134
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v3, p0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v7, "dualclock_menu_settings"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 137
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 138
    const-string/jumbo v3, "oversea"

    const-string/jumbo v6, "ril.currentplmn"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 139
    .local v1, "isRoamingArea":Z
    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0871

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0af2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "sText":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 148
    .end local v1    # "isRoamingArea":Z
    .end local v2    # "sText":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string/jumbo v3, "lock_screen_additional_info"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/SettingsSwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mAdditionalInfo:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 149
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mAdditionalInfo:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v3, :cond_1

    .line 150
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mAdditionalInfo:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v3, p0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mAdditionalInfo:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v7, "additional_information_val"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 154
    :cond_1
    const-string/jumbo v3, "lock_screen_menu_owner_infomation"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settingslib/RestrictedPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 155
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v3, :cond_2

    .line 156
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 158
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 163
    .end local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->updateOwnerInfo()V

    .line 166
    :cond_2
    const-string/jumbo v3, "lock_app_shortcut"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    .line 168
    const-string/jumbo v3, "lock_screen_settings_weather"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mWeatherSettings:Landroid/preference/PreferenceScreen;

    .line 169
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mWeatherSettings:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportWeatherMenu(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getRegisteredCityCount(Landroid/content/Context;)I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getWidgetCount(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_a

    .line 171
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mWeatherSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->isWeatherState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 172
    const v3, 0x7f0b19db

    .line 171
    :goto_4
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 131
    :cond_3
    :goto_5
    return-void

    :cond_4
    move v3, v5

    .line 136
    goto/16 :goto_0

    .line 144
    .restart local v1    # "isRoamingArea":Z
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "dualclock_menu_settings"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .end local v1    # "isRoamingArea":Z
    :cond_6
    move v3, v5

    .line 151
    goto/16 :goto_2

    .line 160
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v3, v9}, Lcom/samsung/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 161
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_6
    invoke-virtual {v3, v5}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_8
    move v5, v4

    goto :goto_6

    .line 172
    :cond_9
    const v3, 0x7f0b19dc

    goto :goto_4

    .line 174
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mWeatherSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v9}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method private RemoveMenu()V
    .locals 2

    .prologue
    .line 181
    const-string/jumbo v0, "ShowInfomationMenu"

    const-string/jumbo v1, "onResume() 2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 184
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->hasCoverSettingOwnerInfo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 189
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    const-string/jumbo v0, "lock_screen_dualclock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    .line 193
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 194
    const-string/jumbo v0, "lock_screen_additional_info"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportWeatherMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->hasCoverSettingWeather(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 200
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportWeatherStateSettings()Z

    move-result v0

    if-nez v0, :cond_9

    .line 201
    const-string/jumbo v0, "lock_screen_settings_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    .line 206
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_6

    .line 207
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->hasCoverSettingAppShortcut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 208
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportLockAppShortcut()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v0

    .line 207
    if-eqz v0, :cond_a

    .line 209
    :cond_5
    const-string/jumbo v0, "lock_app_shortcut"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    .line 180
    :cond_6
    :goto_2
    return-void

    .line 185
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 198
    :cond_8
    const-string/jumbo v0, "lock_screen_settings_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    .line 199
    const-string/jumbo v0, "lock_screen_menu_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :cond_9
    const-string/jumbo v0, "lock_screen_menu_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 210
    :cond_a
    const-string/jumbo v0, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 211
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    :cond_b
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static existWeatherWidgetOnLauncher(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 331
    if-nez p0, :cond_0

    .line 332
    const-string/jumbo v1, "ShowInfomationMenu"

    const-string/jumbo v2, "context is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return v10

    .line 336
    :cond_0
    const-string/jumbo v6, "WIDGET_COUNT"

    .line 337
    .local v6, "WEATHER_DAEMON_COLUMN_WIDGET_COUNT":Ljava/lang/String;
    const/4 v8, 0x0

    .line 339
    .local v8, "widgetCnt":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 340
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 341
    sget-object v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    .line 342
    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v4, "WIDGET_COUNT"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    .line 341
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 343
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 344
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    const-string/jumbo v1, "WIDGET_COUNT"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 347
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 350
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    if-lez v8, :cond_3

    move v1, v9

    :goto_0
    return v1

    :cond_3
    move v1, v10

    goto :goto_0
.end method

.method public static getRegisteredCityCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 427
    const/4 v6, 0x0

    .line 428
    .local v6, "count":I
    if-nez p0, :cond_0

    .line 429
    const/4 v1, -0x1

    return v1

    .line 431
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 432
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_3

    .line 433
    sget-object v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "LOCATION"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 434
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 435
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 438
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 444
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return v6

    .line 441
    :cond_3
    const/4 v6, -0x1

    goto :goto_0
.end method

.method public static getWidgetCount(Landroid/content/Context;)I
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 354
    const/4 v6, 0x0

    .line 355
    .local v6, "count":I
    if-nez p0, :cond_0

    .line 356
    return v6

    .line 359
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 360
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 361
    sget-object v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "WIDGET_COUNT"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 362
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 363
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 370
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 373
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    return v6

    .line 366
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 367
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isWeatherState(Landroid/content/Context;)Z
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 404
    const/4 v8, 0x0

    .line 405
    .local v8, "result":I
    if-nez p0, :cond_0

    .line 406
    return v10

    .line 409
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 410
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 411
    sget-object v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v4, "LOCKSCREEN_AND_S_VIEW_COVER"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 412
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 413
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 420
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 423
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    if-lez v8, :cond_3

    move v1, v9

    :goto_1
    return v1

    .line 416
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 417
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    move v1, v10

    .line 423
    goto :goto_1
.end method

.method public static showWeatherWidgetMessageDialog(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 377
    if-nez p0, :cond_0

    .line 378
    const-string/jumbo v2, "ShowInfomationMenu"

    const-string/jumbo v3, "context is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-void

    .line 382
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 384
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Lcom/android/settings/Utils;->hasCoverSettingWeather(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 385
    const v2, 0x7f0b0852

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "dialogMsg":Ljava/lang/String;
    :goto_0
    const v2, 0x7f0b0850

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 390
    const/4 v3, 0x1

    .line 388
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 391
    new-instance v3, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;

    invoke-direct {v3}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;-><init>()V

    const v4, 0x7f0b042c

    .line 388
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 400
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 376
    return-void

    .line 387
    .end local v1    # "dialogMsg":Ljava/lang/String;
    :cond_1
    const v2, 0x7f0b0853

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "dialogMsg":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateOwnerInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 217
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "info":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settingslib/RestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingOwnerInfo(Landroid/content/Context;)Z

    move-result v1

    .line 227
    if-eqz v1, :cond_3

    .line 229
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    const v2, 0x7f0b0851

    invoke-virtual {v1, v2}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(I)V

    .line 233
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settingslib/RestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    const v2, 0x7f0b113a

    invoke-virtual {v1, v2}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(I)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->INFO_AND_SHORTCUT:I

    .line 91
    sget v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->INFO_AND_SHORTCUT:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 242
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 243
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->updateOwnerInfo()V

    .line 240
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v1, 0x7f080098

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->addPreferencesFromResource(I)V

    .line 100
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 101
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 104
    const-string/jumbo v1, "coversetting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    .line 108
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 95
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "InfoAndAppShortcuts"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 250
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "key":Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 252
    .local v1, "value":Z
    const-string/jumbo v2, "lock_screen_dualclock"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "dualclock_menu_settings"

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v1, :cond_0

    move v4, v3

    :cond_0
    invoke-static {v5, v4}, Lcom/android/settings/Utils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 255
    return v3

    :cond_1
    move v2, v4

    .line 253
    goto :goto_0

    .line 256
    :cond_2
    const-string/jumbo v2, "lock_screen_additional_info"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "additional_information_val"

    if-eqz v1, :cond_3

    move v4, v3

    :cond_3
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    return v3

    .line 260
    :cond_4
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 266
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 268
    .local v9, "key":Ljava/lang/String;
    const-string/jumbo v0, "lock_screen_dualclock"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 270
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 269
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "SViewCover"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "LockScreen"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_2
    const-string/jumbo v0, "lock_screen_menu_weather"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 277
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->existWeatherWidgetOnLauncher(Landroid/content/Context;)Z

    move-result v7

    .line 278
    .local v7, "existWeatherWidgetToLauncher":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "easy_mode_switch"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v6, 0x1

    .line 279
    .local v6, "easylaunchermode":Z
    :goto_1
    if-nez v7, :cond_3

    if-eqz v6, :cond_5

    .line 280
    :cond_3
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "com.sec.android.widgetapp.weather.intent.action.START_ACTIVITY_SETTING_VIEW"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v8, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 282
    const-string/jumbo v0, "PACKAGE"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 287
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 288
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 287
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_6

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "SViewCover"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    .end local v6    # "easylaunchermode":Z
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "easylaunchermode":Z
    goto :goto_1

    .line 285
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->showWeatherWidgetMessageDialog(Landroid/content/Context;)V

    goto :goto_2

    .line 292
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "LockScreen"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    .end local v6    # "easylaunchermode":Z
    .end local v7    # "existWeatherWidgetToLauncher":Z
    :cond_7
    const-string/jumbo v0, "lock_screen_settings_weather"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 296
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getWidgetCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_8

    .line 297
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 298
    .local v5, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "com.android.settings.WeatherSettings"

    const v3, 0x7f0b0850

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 301
    .end local v5    # "args":Landroid/os/Bundle;
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->showWeatherWidgetMessageDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 305
    :cond_9
    const-string/jumbo v0, "lock_screen_menu_owner_infomation"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "dialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v11

    .line 307
    .local v11, "prev":Landroid/app/Fragment;
    if-eqz v11, :cond_a

    .line 308
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 311
    :cond_a
    const v0, 0x7f0b113b

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->newInstance(I)Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    move-result-object v10

    .line 312
    .local v10, "newFragment":Landroid/app/DialogFragment;
    const/16 v0, 0xc8

    invoke-virtual {v10, p0, v0}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 313
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "dialog"

    invoke-virtual {v10, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 315
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 314
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_b

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "SViewCover"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "LockScreen"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 114
    const-string/jumbo v0, "ShowInfomationMenu"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->InitValue()V

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->RemoveMenu()V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "InfoAndAppShortcuts"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 112
    return-void
.end method
