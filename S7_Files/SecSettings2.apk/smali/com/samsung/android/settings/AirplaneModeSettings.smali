.class public Lcom/samsung/android/settings/AirplaneModeSettings;
.super Lcom/samsung/android/settings/SecInstrumentedFragment;
.source "AirplaneModeSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/AirplaneModeSettings$1;,
        Lcom/samsung/android/settings/AirplaneModeSettings$2;,
        Lcom/samsung/android/settings/AirplaneModeSettings$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mImsManager:Lcom/sec/ims/ImsManager;


# instance fields
.field airplaneModeDesc:Landroid/widget/TextView;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mEnabler:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/AirplaneModeSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/AirplaneModeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->setDescription()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/AirplaneModeSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 282
    new-instance v0, Lcom/samsung/android/settings/AirplaneModeSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/AirplaneModeSettings$2;-><init>()V

    .line 281
    sput-object v0, Lcom/samsung/android/settings/AirplaneModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 69
    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 73
    new-instance v0, Lcom/samsung/android/settings/AirplaneModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/AirplaneModeSettings$1;-><init>(Lcom/samsung/android/settings/AirplaneModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 311
    new-instance v0, Lcom/samsung/android/settings/AirplaneModeSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/AirplaneModeSettings$3;-><init>(Lcom/samsung/android/settings/AirplaneModeSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 60
    return-void
.end method

.method public static getImsManager(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    sget-object v0, Lcom/samsung/android/settings/AirplaneModeSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    new-instance v0, Lcom/sec/ims/ImsManager;

    new-instance v1, Lcom/samsung/android/settings/AirplaneModeSettings$4;

    invoke-direct {v1}, Lcom/samsung/android/settings/AirplaneModeSettings$4;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    sput-object v0, Lcom/samsung/android/settings/AirplaneModeSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 173
    sget-object v0, Lcom/samsung/android/settings/AirplaneModeSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    .line 153
    return-void
.end method

.method public static isVoWifiProvisioned(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    const/4 v1, 0x0

    .line 225
    .local v1, "isVoWiFiProvisioned":Z
    sget-object v3, Lcom/samsung/android/settings/AirplaneModeSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v3, :cond_1

    .line 226
    sget-object v3, Lcom/samsung/android/settings/AirplaneModeSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    const-string/jumbo v4, "mmtel"

    const/16 v5, 0xd

    invoke-virtual {v3, v4, v5}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v2

    .line 227
    .local v2, "isVoWiFiSupported":Z
    sget-object v3, Lcom/samsung/android/settings/AirplaneModeSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v3}, Lcom/sec/ims/ImsManager;->hasVoLteSim()Z

    move-result v0

    .line 228
    .local v0, "hasVoLteSim":Z
    const-string/jumbo v3, "AirplaneModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vowifi:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " hasVoltesim: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 230
    const/4 v1, 0x1

    .line 235
    .end local v0    # "hasVoLteSim":Z
    .end local v2    # "isVoWiFiSupported":Z
    :cond_0
    :goto_0
    return v1

    .line 233
    :cond_1
    const-string/jumbo v3, "AirplaneModeSettings"

    const-string/jumbo v4, "mImsManager Null can not check voltesupport"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isVolteEnabled(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 177
    const/4 v0, 0x0

    .line 191
    .local v0, "isVolteProvisioned":Z
    const/4 v4, 0x0

    .line 193
    .local v4, "volteregi":Z
    sget-object v5, Lcom/samsung/android/settings/AirplaneModeSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v5, :cond_3

    .line 194
    sget-object v5, Lcom/samsung/android/settings/AirplaneModeSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    const-string/jumbo v6, "volte"

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsManager;->getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 195
    .local v3, "volteInfo":Lcom/sec/ims/ImsRegistration;
    sget-object v5, Lcom/samsung/android/settings/AirplaneModeSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v5}, Lcom/sec/ims/ImsManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 196
    .local v1, "regiInfo":[Lcom/sec/ims/ImsRegistration;
    if-eqz v1, :cond_2

    array-length v5, v1

    if-lez v5, :cond_2

    const/4 v2, 0x1

    .line 198
    .local v2, "ret":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 199
    const-string/jumbo v5, "volte"

    invoke-virtual {v3, v5}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v4

    .line 200
    .local v4, "volteregi":Z
    const-string/jumbo v5, "AirplaneModeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isVoLteRegistered:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v4    # "volteregi":Z
    :cond_0
    const-string/jumbo v5, "AirplaneModeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isVoLteRegistered:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-nez v4, :cond_1

    if-eqz v2, :cond_4

    .line 204
    :cond_1
    const/4 v5, 0x1

    return v5

    .line 196
    .end local v2    # "ret":Z
    .local v4, "volteregi":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "ret":Z
    goto :goto_0

    .line 206
    .end local v1    # "regiInfo":[Lcom/sec/ims/ImsRegistration;
    .end local v2    # "ret":Z
    .end local v3    # "volteInfo":Lcom/sec/ims/ImsRegistration;
    :cond_3
    const-string/jumbo v5, "AirplaneModeSettings"

    const-string/jumbo v6, "mImsManager Null can not check isVoLteRegistered"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v4    # "volteregi":Z
    :cond_4
    return v8
.end method

.method private setDescription()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    const v0, 0x7f0b0360

    .line 115
    .local v0, "resEnableMsg":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/AirplaneModeSettings;->getImsManager(Landroid/content/Context;)V

    .line 117
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/AirplaneModeSettings;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/AirplaneModeSettings;->isVoWifiProvisioned(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 120
    const v0, 0x7f0b0366

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->airplaneModeDesc:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 113
    return-void

    .line 122
    :cond_0
    const v0, 0x7f0b0364

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 126
    const v0, 0x7f0b0365

    goto :goto_0

    .line 128
    :cond_2
    const v0, 0x7f0b0363

    goto :goto_0

    .line 131
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 133
    const v0, 0x7f0b0361

    goto :goto_0

    .line 135
    :cond_4
    const v0, 0x7f0b036a

    goto :goto_0

    .line 138
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 139
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 140
    const v0, 0x7f0b0360

    goto :goto_0

    .line 142
    :cond_6
    const v0, 0x7f0b0367

    goto :goto_0

    .line 145
    :cond_7
    const v0, 0x7f0b0369

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 97
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 99
    new-instance v1, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEnabler:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;

    .line 94
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 86
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    const v1, 0x7f04002b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f110136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->airplaneModeDesc:Landroid/widget/TextView;

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->setDescription()V

    .line 109
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onDestroyView()V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 275
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onPause()V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEnabler:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEnabler:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->pause()V

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 266
    sget-object v0, Lcom/samsung/android/settings/AirplaneModeSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_1

    .line 267
    sget-object v0, Lcom/samsung/android/settings/AirplaneModeSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->disconnectService()V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "AirplaneMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 240
    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onResume()V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEnabler:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEnabler:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->resume()V

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 245
    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 244
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 247
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 249
    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M> AIRPLANE_MODE_STATUS_OFF </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "AirplaneMode"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 239
    return-void

    .line 251
    :cond_2
    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M> AIRPLANE_MODE_STATUS_ON </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
