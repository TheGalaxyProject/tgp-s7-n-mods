.class public Lcom/android/settings/wifi/SmartNetworkSwitchSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SmartNetworkSwitchSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;,
        Lcom/android/settings/wifi/SmartNetworkSwitchSettings$WifiSnsExcludedAPInfo;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private excludedApCount:I

.field private mAggressiveEnabled:Z

.field private final mBixbyCurrentStateId:Ljava/lang/String;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEnabled:Z

.field private mExcludedGroup:Landroid/preference/PreferenceGroup;

.field private mIsSupportAggMode:Z

.field private mNoDevicesPreference:Landroid/preference/Preference;

.field private mSnsEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private snsAggressiveSwitching:Landroid/preference/SwitchPreference;

.field private snsSettingPref:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->setExcludedDevicesLayout()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;IZ)V
    .locals 0
    .param p1, "networkId"    # I
    .param p2, "skipInternetCheck"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->setSkipInternetCheck(IZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 78
    const-string/jumbo v0, " SmartNetworkSwitchSettings"

    iput-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->TAG:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "SmartNetworkSwitch"

    iput-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mBixbyCurrentStateId:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    .line 97
    iput-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    .line 102
    iput v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->excludedApCount:I

    .line 378
    new-instance v0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;-><init>(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 76
    return-void
.end method

.method private buildExcludedApExplainPref(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    new-instance v0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, "pref":Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;
    const v1, 0x7f04029d

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->setLayoutResource(I)V

    .line 201
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->setSelectable(Z)V

    .line 202
    return-object v0
.end method

.method private buildExcludedApPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 205
    move-object v0, p1

    .line 206
    .local v0, "mContext":Landroid/content/Context;
    move-object v1, p2

    .line 207
    .local v1, "mWifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 209
    .local v2, "networkId":Ljava/lang/String;
    new-instance v3, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;

    invoke-direct {v3, p1}, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;-><init>(Landroid/content/Context;)V

    .line 210
    .local v3, "pref":Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;
    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    new-instance v4, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;

    invoke-direct {v4, p0, p2, p1, v2}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;-><init>(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;Landroid/net/wifi/WifiConfiguration;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 250
    return-object v3
.end method

.method private setExcludedDevicesLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 166
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 167
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->buildExcludedApExplainPref(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v2, "currentConfiguredNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 171
    .local v4, "tempConfiguredNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_1

    :try_start_0
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 172
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 173
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    if-lt v5, v8, :cond_0

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 174
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->buildExcludedApPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "config$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 179
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, " SmartNetworkSwitchSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error calling configuredNetworks "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    .line 184
    const-string/jumbo v5, " SmartNetworkSwitchSettings"

    const-string/jumbo v6, "No Item"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 186
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    if-nez v5, :cond_2

    .line 187
    new-instance v5, Lcom/android/settings/wifi/WifiSNSNoItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/android/settings/wifi/WifiSNSNoItemPreference;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    .line 189
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    const v6, 0x7f040367

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 190
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b12ce

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 192
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 193
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    iget-object v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 165
    :cond_3
    return-void
.end method

.method private setPreferenceVisible(Z)V
    .locals 2
    .param p1, "mEnabled"    # Z

    .prologue
    .line 307
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsSettingPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 306
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsSettingPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private setSkipInternetCheck(IZ)V
    .locals 5
    .param p1, "networkId"    # I
    .param p2, "skipInternetCheck"    # Z

    .prologue
    .line 254
    const-string/jumbo v2, " SmartNetworkSwitchSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSkipInternetCheck(), networkId :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    .line 256
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 257
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x12d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 258
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 259
    .local v0, "agrs":Landroid/os/Bundle;
    const-string/jumbo v2, "excluded_networkId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 261
    iget-object v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 253
    .end local v0    # "agrs":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 263
    :cond_0
    const-string/jumbo v2, " SmartNetworkSwitchSettings"

    const-string/jumbo v3, "WifiManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateRadioButtonStatus()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 339
    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 338
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    .line 340
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 337
    return-void

    :cond_0
    move v0, v1

    .line 338
    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 147
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 148
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 149
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 151
    new-instance v1, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v4, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsSettingPref:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/preference/PreferenceScreen;Landroid/preference/SwitchPreference;)V

    iput-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    .line 153
    iget-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->setPreferenceVisible(Z)V

    .line 155
    const-string/jumbo v1, "sns_excluded_device"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    .line 156
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->setExcludedDevicesLayout()V

    .line 142
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 107
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v2, 0x7f08011c

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->addPreferencesFromResource(I)V

    .line 111
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 114
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v2, 0x7f0b0ca1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 116
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSnsAggMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 118
    const-string/jumbo v5, "wifi_watchdog_poor_network_test_enabled"

    .line 117
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 120
    const-string/jumbo v5, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 119
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    .line 121
    const-string/jumbo v2, " SmartNetworkSwitchSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Smart Network Switch Aggressive Mode Enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string/jumbo v2, "sns_help"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 124
    .local v1, "snsSetting":Landroid/preference/Preference;
    const-string/jumbo v2, "sns_aggressive_switching"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    .line 126
    iget-boolean v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    if-eqz v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 128
    iget-object v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsSettingPref:Landroid/preference/PreferenceScreen;

    .line 106
    return-void

    .end local v1    # "snsSetting":Landroid/preference/Preference;
    :cond_0
    move v2, v4

    .line 117
    goto :goto_0

    :cond_1
    move v3, v4

    .line 119
    goto :goto_1

    .line 130
    .restart local v1    # "snsSetting":Landroid/preference/Preference;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 303
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 304
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 302
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 292
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 294
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->pause()V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SmartNetworkSwitch"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 291
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 315
    iget-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 316
    check-cast v0, Ljava/lang/Boolean;

    .line 317
    .local v0, "value":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->radioButtonClicked(Z)V

    .line 318
    const/4 v1, 0x1

    return v1

    .line 321
    .end local v0    # "value":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 269
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 271
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->resume()V

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 275
    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    .line 274
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    .line 276
    iget-boolean v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->setPreferenceVisible(Z)V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 279
    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 278
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    .line 280
    iget-boolean v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    .line 287
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 288
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "SmartNetworkSwitch"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 268
    return-void

    :cond_2
    move v0, v2

    .line 274
    goto :goto_0

    :cond_3
    move v1, v2

    .line 278
    goto :goto_1
.end method

.method public radioButtonClicked(Z)V
    .locals 3
    .param p1, "mEnabled"    # Z

    .prologue
    .line 325
    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 327
    const-string/jumbo v1, "wifi_watchdog_poor_network_aggressive_mode_on"

    const/4 v2, 0x1

    .line 326
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    const-string/jumbo v0, "AGG"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->sendGSIMdata(Ljava/lang/String;)V

    .line 334
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->updateRadioButtonStatus()V

    .line 324
    return-void

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 331
    const-string/jumbo v1, "wifi_watchdog_poor_network_aggressive_mode_on"

    const/4 v2, 0x0

    .line 330
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    const-string/jumbo v0, "ON"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_0
.end method

.method sendGSIMdata(Ljava/lang/String;)V
    .locals 6
    .param p1, "dataValue"    # Ljava/lang/String;

    .prologue
    .line 346
    const-string/jumbo v2, "feature"

    .line 347
    .local v2, "featureKey":Ljava/lang/String;
    const-string/jumbo v3, "SNSU"

    .line 348
    .local v3, "featureValue":Ljava/lang/String;
    const-string/jumbo v1, "extra"

    .line 350
    .local v1, "dataKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 351
    :cond_0
    return-void

    .line 350
    :cond_1
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 353
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 354
    .local v4, "msgLog":Landroid/os/Message;
    const/16 v5, 0x4d

    iput v5, v4, Landroid/os/Message;->what:I

    .line 355
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 356
    .local v0, "argsLog":Landroid/os/Bundle;
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 359
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_2

    .line 360
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 345
    :cond_2
    return-void
.end method
