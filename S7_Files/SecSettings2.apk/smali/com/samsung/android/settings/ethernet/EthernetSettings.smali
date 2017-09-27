.class public Lcom/samsung/android/settings/ethernet/EthernetSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "EthernetSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ethernet/EthernetSettings$1;
    }
.end annotation


# instance fields
.field private mEthConfigDialog:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

.field private mEthConfigPref:Landroid/preference/Preference;

.field private mEthDeviceStateReceiver:Landroid/database/ContentObserver;

.field private mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;


# direct methods
.method static synthetic -set0(Lcom/samsung/android/settings/ethernet/EthernetSettings;Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/ethernet/EthernetSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/ethernet/EthernetSettings;I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->removeDialog(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 124
    new-instance v0, Lcom/samsung/android/settings/ethernet/EthernetSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/ethernet/EthernetSettings$1;-><init>(Lcom/samsung/android/settings/ethernet/EthernetSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthDeviceStateReceiver:Landroid/database/ContentObserver;

    .line 29
    return-void
.end method

.method private initToggles()V
    .locals 5

    .prologue
    .line 96
    new-instance v2, Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 98
    const-string/jumbo v0, "ethernet"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/EthernetManager;

    .line 99
    const-string/jumbo v1, "toggle_eth"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 100
    const-string/jumbo v4, "eth_config"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 96
    invoke-direct {v2, v3, v0, v1, v4}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;-><init>(Landroid/content/Context;Landroid/net/EthernetManager;Landroid/preference/CheckBoxPreference;Landroid/preference/Preference;)V

    iput-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    .line 101
    new-instance v0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/ethernet/EthernetEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->setConfigDialog(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->setEthernetSettings(Lcom/samsung/android/settings/ethernet/EthernetSettings;)V

    .line 94
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v1, 0x7f08006f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->addPreferencesFromResource(I)V

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 71
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const-string/jumbo v1, "eth_config"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthConfigPref:Landroid/preference/Preference;

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->initToggles()V

    .line 66
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 108
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/ethernet/EthernetEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    return-object v0

    .line 116
    :cond_1
    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->pause()V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthDeviceStateReceiver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 88
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 44
    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthConfigPref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 45
    const-string/jumbo v1, "ethernet"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/EthernetManager;

    .line 48
    .local v0, "mEthManager":Landroid/net/EthernetManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/EthernetManager;->isEthConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->showDialog(I)V

    .line 57
    .end local v0    # "mEthManager":Landroid/net/EthernetManager;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 81
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->resume()V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "eth_device_conn"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthDeviceStateReceiver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 80
    return-void
.end method
