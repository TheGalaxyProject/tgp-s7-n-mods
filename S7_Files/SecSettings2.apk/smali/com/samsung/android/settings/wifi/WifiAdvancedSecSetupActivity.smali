.class public Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "WifiAdvancedSecSetupActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;
    }
.end annotation


# static fields
.field private static DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mPoorNetworkDetection:Landroid/preference/SwitchPreference;

.field private mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSmartNetworkSwitchEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

.field private mWifiState:I

.field private mWpsDialog:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->refreshWifiInfo()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->DBG:Z

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetection:Landroid/preference/SwitchPreference;

    .line 98
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    .line 102
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;-><init>(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    return-void
.end method

.method private RemoveNotUsedWpsButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 459
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WpsDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WpsDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 458
    return-void
.end method

.method private initPreferences()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 189
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiState:I

    .line 190
    const-string/jumbo v6, "wifi_poor_network_detection"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetection:Landroid/preference/SwitchPreference;

    .line 191
    const-string/jumbo v6, "wifi_poor_network_detection_aggressive_mode"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    .line 192
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 193
    new-instance v6, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-direct {v6, v0, v7}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiSmartNetworkSwitchEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->updateSmartNetworkSwitchVisible()V

    .line 197
    const-string/jumbo v6, "wps_push_button"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 198
    .local v5, "wpspushpref":Landroid/preference/Preference;
    if-eqz v5, :cond_1

    .line 199
    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiState:I

    if-eq v6, v8, :cond_6

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 210
    :cond_1
    :goto_0
    const-string/jumbo v6, "wps_pin_entry"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 211
    .local v4, "wpspinpref":Landroid/preference/Preference;
    if-eqz v4, :cond_3

    .line 212
    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiState:I

    if-ne v6, v8, :cond_2

    const-string/jumbo v6, "KTT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 213
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    :cond_3
    :goto_1
    const-string/jumbo v6, "sleep_policy"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 225
    .local v1, "sleepPolicyPref":Landroid/preference/ListPreference;
    if-eqz v1, :cond_5

    .line 226
    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 227
    const v6, 0x7f0c0057

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 229
    :cond_4
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 231
    const-string/jumbo v7, "wifi_sleep_policy"

    .line 232
    const/4 v8, 0x2

    .line 230
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 233
    .local v3, "value":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "stringValue":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 235
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 186
    .end local v2    # "stringValue":Ljava/lang/String;
    .end local v3    # "value":I
    :cond_5
    return-void

    .line 202
    .end local v1    # "sleepPolicyPref":Landroid/preference/ListPreference;
    .end local v4    # "wpspinpref":Landroid/preference/Preference;
    :cond_6
    new-instance v6, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$2;-><init>(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 215
    .restart local v4    # "wpspinpref":Landroid/preference/Preference;
    :cond_7
    new-instance v6, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$3;-><init>(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)V

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1
.end method

.method private refreshWifiInfo()V
    .locals 8

    .prologue
    const v7, 0x7f0b13a5

    const/4 v2, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 352
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 354
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string/jumbo v6, "mac_address"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 355
    .local v5, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v3, :cond_1

    .line 356
    .local v2, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .end local v2    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 359
    const-string/jumbo v6, "current_ip_address"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 360
    .local v4, "wifiIpAddressPref":Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "ipAddress":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 362
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 361
    .end local v1    # "ipAddress":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 350
    return-void

    .line 355
    .end local v4    # "wifiIpAddressPref":Landroid/preference/Preference;
    :cond_1
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 357
    .restart local v2    # "macAddress":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .param p1, "sleepPolicyPref"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 241
    if-eqz p2, :cond_4

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 244
    const v2, 0x7f0c0057

    .line 245
    .local v2, "summaryArrayResId":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "summaries":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 247
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 248
    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 249
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 250
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f0b04a3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 256
    :goto_2
    return-void

    .line 244
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    :cond_0
    const v2, 0x7f0c0056

    .restart local v2    # "summaryArrayResId":I
    goto :goto_0

    .line 251
    .restart local v0    # "i":I
    .restart local v1    # "summaries":[Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 252
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f0b04a4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 254
    :cond_2
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 246
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 262
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    const-string/jumbo v4, "WifiAdvancedSecSetupActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method private updateSmartNetworkSwitchVisible()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 410
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetection:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 411
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetection:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 412
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 414
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->locateSmartNetworkSwitch(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 415
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 416
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 418
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 419
    const-string/jumbo v4, "wifi_watchdog_poor_network_test_enabled"

    .line 418
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 420
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetectionAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 409
    :cond_1
    :goto_0
    return-void

    .line 422
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetection:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 423
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetection:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 424
    const-string/jumbo v4, "wifi_watchdog_poor_network_test_enabled"

    .line 423
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 425
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mPoorNetworkDetection:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 183
    const/16 v0, 0x67

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mContext:Landroid/content/Context;

    .line 144
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    const v0, 0x7f08014b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->addPreferencesFromResource(I)V

    .line 134
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 327
    packed-switch p1, :pswitch_data_0

    .line 347
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 329
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 330
    const v1, 0x7f0b0c7f

    .line 329
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 331
    const v1, 0x7f0b0c80

    .line 329
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 332
    new-instance v1, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$4;-><init>(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)V

    const v2, 0x104000a

    .line 329
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 338
    new-instance v1, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$5;-><init>(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)V

    const/high16 v2, 0x1040000

    .line 329
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 322
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 321
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 175
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiSmartNetworkSwitchEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiSmartNetworkSwitchEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->pause()V

    .line 178
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 169
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 279
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 280
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v5, "sleep_policy"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 284
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 285
    .local v4, "stringValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_sleep_policy"

    .line 286
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 285
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 287
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v4    # "stringValue":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    return v5

    .line 288
    :catch_0
    move-exception v2

    .line 289
    .local v2, "e":Ljava/lang/NumberFormatException;
    const v5, 0x7f0b124e

    invoke-static {v1, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 291
    return v8
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 268
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v1, "wifi_reset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->showDialog(I)V

    .line 274
    return v2

    .line 272
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 155
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->initPreferences()V

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    .line 158
    const-string/jumbo v3, "android.permission.CHANGE_NETWORK_STATE"

    .line 157
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->refreshWifiInfo()V

    .line 162
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiSmartNetworkSwitchEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiSmartNetworkSwitchEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->resume()V

    .line 165
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 154
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 299
    const-string/jumbo v2, "wifi_poor_network_detection"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 301
    .local v0, "isChecked":Z
    const-string/jumbo v2, "WifiAdvancedSecSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SNS enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 305
    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 304
    :cond_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 306
    const-string/jumbo v2, "SNSU"

    if-eqz v0, :cond_2

    const-string/jumbo v1, "ON"

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->sendGSIMdata(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .end local v0    # "isChecked":Z
    :cond_1
    return-void

    .line 306
    .restart local v0    # "isChecked":Z
    :cond_2
    const-string/jumbo v1, "OFF"

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 312
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStart()V

    .line 311
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 317
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 316
    return-void
.end method

.method public onWpsPinBtnPressed()V
    .locals 3

    .prologue
    .line 449
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    .line 450
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->show()V

    .line 451
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->RemoveNotUsedWpsButton()V

    .line 448
    return-void
.end method

.method public onWpsPushBtnPressed()V
    .locals 3

    .prologue
    .line 454
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    .line 455
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->show()V

    .line 456
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->RemoveNotUsedWpsButton()V

    .line 453
    return-void
.end method

.method sendGSIMdata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "featureValue"    # Ljava/lang/String;
    .param p2, "dataValue"    # Ljava/lang/String;

    .prologue
    .line 435
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 436
    :cond_0
    return-void

    .line 438
    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 439
    .local v1, "msgLog":Landroid/os/Message;
    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 440
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 441
    .local v0, "argsLog":Landroid/os/Bundle;
    const-string/jumbo v2, "feature"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string/jumbo v2, "extra"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 444
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_2

    .line 445
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 434
    :cond_2
    return-void
.end method
