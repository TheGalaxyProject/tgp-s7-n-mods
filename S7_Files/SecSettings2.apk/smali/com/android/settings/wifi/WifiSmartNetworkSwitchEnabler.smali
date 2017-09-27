.class public Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiSmartNetworkSwitchEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;,
        Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$2;
    }
.end annotation


# instance fields
.field private mAggressiveMode:Landroid/preference/SwitchPreference;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSnsSettingPref:Landroid/preference/PreferenceScreen;

.field private final mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchPreferences:Landroid/preference/SwitchPreference;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateSmartNetworkSwitchServiceCheck()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchPreference"    # Landroid/preference/SwitchPreference;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v3}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;-><init>(Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 69
    new-instance v0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$2;-><init>(Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    .line 115
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 124
    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    .line 123
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    .line 125
    const-string/jumbo v0, "WifiSmartNetworkSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WifiSnsSettingDialog appears with SNS Enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 130
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 135
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->setPreferenceState()V

    .line 112
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 123
    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/preference/PreferenceScreen;Landroid/preference/SwitchPreference;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/settings/widget/SwitchBar;
    .param p3, "snsSettingPref"    # Landroid/preference/PreferenceScreen;
    .param p4, "aggressiveMode"    # Landroid/preference/SwitchPreference;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v3}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;-><init>(Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 69
    new-instance v0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$2;-><init>(Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    .line 141
    iput-object p3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSnsSettingPref:Landroid/preference/PreferenceScreen;

    .line 142
    iput-object p4, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAggressiveMode:Landroid/preference/SwitchPreference;

    .line 143
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 152
    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    .line 151
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    .line 153
    const-string/jumbo v0, "WifiSmartNetworkSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WifiSnsSettingDialog appears with SNS Enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 157
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 139
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 151
    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_1
.end method

.method private updateSmartNetworkSwitchServiceCheck()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    if-nez v0, :cond_0

    .line 249
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 247
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 272
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->setPreferenceState()V

    .line 273
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 257
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b12cf

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 262
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b12d0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 267
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b12d1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 268
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 197
    check-cast v0, Ljava/lang/Boolean;

    .line 199
    .local v0, "value":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->setSmartNetworkSwitchEnable(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->setPreferenceState()V

    .line 201
    const/4 v1, 0x1

    return v1

    .line 203
    .end local v0    # "value":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 190
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->setSmartNetworkSwitchEnable(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->setRadioPreferenceState()V

    .line 189
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    .line 166
    const-string/jumbo v3, "android.permission.CHANGE_NETWORK_STATE"

    .line 165
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 167
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateSmartNetworkSwitchServiceCheck()V

    .line 173
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    :cond_1
    return-void
.end method

.method sendGSIMdata(Ljava/lang/String;)V
    .locals 6
    .param p1, "dataValue"    # Ljava/lang/String;

    .prologue
    .line 316
    const-string/jumbo v2, "feature"

    .line 317
    .local v2, "featureKey":Ljava/lang/String;
    const-string/jumbo v3, "SNSU"

    .line 318
    .local v3, "featureValue":Ljava/lang/String;
    const-string/jumbo v1, "extra"

    .line 320
    .local v1, "dataKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 321
    :cond_0
    return-void

    .line 320
    :cond_1
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 323
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 324
    .local v4, "msgLog":Landroid/os/Message;
    const/16 v5, 0x4d

    iput v5, v4, Landroid/os/Message;->what:I

    .line 325
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v0, "argsLog":Landroid/os/Bundle;
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 329
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_2

    .line 330
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 315
    :cond_2
    return-void
.end method

.method public setPreferenceState()V
    .locals 6

    .prologue
    const v5, 0x7f0b0c93

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 207
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 208
    const-string/jumbo v4, "wifi_watchdog_poor_network_test_enabled"

    .line 207
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v0, 0x1

    .line 209
    .local v0, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 210
    if-eqz v0, :cond_4

    .line 211
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSnsAggMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 212
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 213
    const-string/jumbo v4, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 212
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 214
    .local v1, "mAggressiveEnabled":Z
    :cond_0
    if-eqz v1, :cond_2

    .line 215
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    const v4, 0x7f0b0c92

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 222
    .end local v1    # "mAggressiveEnabled":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 205
    :goto_2
    return-void

    .line 207
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 217
    .restart local v1    # "mAggressiveEnabled":Z
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 220
    .end local v1    # "mAggressiveEnabled":Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 224
    :cond_4
    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 225
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    const v3, 0x7f0b0ca0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 229
    :goto_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_2

    .line 227
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    const v3, 0x7f0b12c0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_3
.end method

.method public setRadioPreferenceState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 234
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 235
    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    .line 234
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    const/4 v0, 0x1

    .line 236
    .local v0, "enabled":Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 237
    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 236
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2

    const/4 v1, 0x1

    .line 238
    .local v1, "mAggressiveEnabled":Z
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSnsSettingPref:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAggressiveMode:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 239
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSnsAggMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSnsSettingPref:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 241
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 233
    :cond_0
    :goto_2
    return-void

    .line 234
    .end local v0    # "enabled":Z
    .end local v1    # "mAggressiveEnabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 236
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "mAggressiveEnabled":Z
    goto :goto_1

    .line 243
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSnsSettingPref:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public setSmartNetworkSwitchEnable(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 282
    if-eqz p1, :cond_1

    .line 283
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 284
    const-string/jumbo v4, "wifi_watchdog_poor_network_test_enabled"

    .line 283
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 285
    const-string/jumbo v3, "WifiSmartNetworkSwitchEnabler"

    const-string/jumbo v4, "SNS On pressed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 297
    const-string/jumbo v4, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 296
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_2

    const/4 v0, 0x1

    .line 299
    .local v0, "mAggressiveEnabled":Z
    :goto_1
    if-eqz p1, :cond_4

    .line 300
    if-eqz v0, :cond_3

    .line 301
    const-string/jumbo v3, "AGG"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->sendGSIMdata(Ljava/lang/String;)V

    .line 309
    :goto_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_5

    const/4 v1, 0x1

    .line 311
    .local v1, "value":Z
    :goto_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eqz v1, :cond_0

    const/16 v2, 0x3e8

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 281
    return-void

    .line 291
    .end local v0    # "mAggressiveEnabled":Z
    .end local v1    # "value":Z
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 292
    const-string/jumbo v4, "wifi_watchdog_poor_network_test_enabled"

    .line 291
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
    const-string/jumbo v3, "WifiSmartNetworkSwitchEnabler"

    const-string/jumbo v4, "SNS Off pressed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "mAggressiveEnabled":Z
    goto :goto_1

    .line 303
    :cond_3
    const-string/jumbo v3, "ON"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_2

    .line 306
    :cond_4
    const-string/jumbo v3, "OFF"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_2

    .line 309
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "value":Z
    goto :goto_3
.end method
