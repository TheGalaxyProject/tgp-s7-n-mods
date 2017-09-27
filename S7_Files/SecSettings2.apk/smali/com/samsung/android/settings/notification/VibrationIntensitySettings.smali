.class public Lcom/samsung/android/settings/notification/VibrationIntensitySettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "VibrationIntensitySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/VibrationIntensitySettings$1;,
        Lcom/samsung/android/settings/notification/VibrationIntensitySettings$2;,
        Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;,
        Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mPowerManager:Landroid/os/PowerManager;


# instance fields
.field private callVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

.field private mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mBixbyMsgHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private notiVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

.field private systemVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

.field private vibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->callVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mBixbyMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->notiVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-string/jumbo v0, "VibrationIntensity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->DEBUG:Z

    .line 253
    new-instance v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$2;-><init>()V

    .line 252
    sput-object v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 75
    new-instance v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$1;-><init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 277
    new-instance v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;-><init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 312
    new-instance v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$4;-><init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mBixbyMsgHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method private initVibrationPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->vibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    .line 225
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->vibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->setType(I)V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->vibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method private stopAllVibration()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->callVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->notiVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    .line 244
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f080139

    .line 132
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mContext:Landroid/content/Context;

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    sput-object v3, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mPowerManager:Landroid/os/PowerManager;

    .line 136
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->addPreferencesFromResource(I)V

    .line 138
    const-string/jumbo v3, "ring_vibration"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->callVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    .line 139
    const-string/jumbo v3, "notification_vibration"

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->notiVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    .line 140
    const-string/jumbo v3, "system_vibration"

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "UPSM"

    invoke-static {v3, v5, v4}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 144
    .local v2, "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 145
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "list$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    .local v0, "list":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    .end local v0    # "list":Ljava/lang/String;
    .end local v1    # "list$iterator":Ljava/util/Iterator;
    .end local v2    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    const-string/jumbo v3, "ring_vibration"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->removePreference(Ljava/lang/String;)V

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isCoinDcPMIC(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    const-string/jumbo v3, "system_vibration"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->removePreference(Ljava/lang/String;)V

    .line 159
    :cond_2
    new-instance v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 131
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 231
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 230
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 236
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 242
    const/4 v0, 0x0

    return v0

    .line 238
    :pswitch_0
    const-string/jumbo v0, "VibrationIntensity"

    const-string/jumbo v1, "onOptionsItemSelected : home"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->stopAllVibration()V

    .line 240
    const/4 v0, 0x1

    return v0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 201
    const-string/jumbo v0, "VibrationIntensity"

    const-string/jumbo v1, "onPause : "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 203
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->stopAllVibration()V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Vibrationintensity"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 164
    const-string/jumbo v0, "VibrationIntensity"

    const-string/jumbo v1, "onResume : "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Vibrationintensity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 163
    return-void
.end method
