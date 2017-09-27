.class public Lcom/samsung/android/settings/notification/SoundEffectSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SoundEffectSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SoundEffectSettings$1;,
        Lcom/samsung/android/settings/notification/SoundEffectSettings$2;,
        Lcom/samsung/android/settings/notification/SoundEffectSettings$3;,
        Lcom/samsung/android/settings/notification/SoundEffectSettings$4;,
        Lcom/samsung/android/settings/notification/SoundEffectSettings$5;,
        Lcom/samsung/android/settings/notification/SoundEffectSettings$6;,
        Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;,
        Lcom/samsung/android/settings/notification/SoundEffectSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final KEYS:[Ljava/lang/String;

.field private static final PREFS:[Lcom/android/settings/notification/SettingPref;

.field private static final PREF_K2HD:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_SOUND_ALIVE:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_TUBE_AMP:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_TUBE_AMP_PRO:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_UHQ_UPSCALER:Lcom/android/settings/notification/SettingPref;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final SUPPORT_FW_FEATURE_LOGGING:Z

.field private static final SUPPORT_K2HD:Z

.field private static final SUPPORT_UPSCALER:Z

.field private static final sFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;


# instance fields
.field private currentUser:Landroid/content/pm/UserInfo;

.field private intentFilter:Landroid/content/IntentFilter;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentAudioPath:I

.field private mEnabledSoundAlive:Z

.field private mEnabledTubeAmp:Z

.field private mEnabledUhqUpscaler:Z

.field private mMusicReceiver:Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;

.field private mMySound:Landroid/preference/PreferenceScreen;

.field private final mSettingsObserver:Lcom/samsung/android/settings/notification/SoundEffectSettings$SettingsObserver;

.field private mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0()[Lcom/android/settings/notification/SettingPref;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->SUPPORT_K2HD:Z

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->SUPPORT_UPSCALER:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/SoundEffectSettings;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/SoundEffectSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/SoundEffectSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/notification/SoundEffectSettings;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/SoundEffectSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/SoundEffectSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->setDimSwitchPreference()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 96
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "uhq_upscaler"

    aput-object v2, v0, v6

    const-string/jumbo v2, "sound_alive"

    aput-object v2, v0, v4

    const-string/jumbo v2, "k2hd"

    aput-object v2, v0, v1

    const-string/jumbo v2, "tube_amp"

    aput-object v2, v0, v7

    const-string/jumbo v2, "tube_amp_pro"

    aput-object v2, v0, v8

    sput-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->KEYS:[Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/samsung/android/settings/notification/SoundEffectSettings$1;

    .line 100
    const-string/jumbo v2, "uhq_upscaler"

    const-string/jumbo v3, "k2hd_effect"

    .line 99
    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundEffectSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREF_UHQ_UPSCALER:Lcom/android/settings/notification/SettingPref;

    .line 103
    new-instance v0, Lcom/samsung/android/settings/notification/SoundEffectSettings$2;

    .line 104
    const-string/jumbo v2, "sound_alive"

    const-string/jumbo v3, "sound_alive_effect"

    .line 103
    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundEffectSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREF_SOUND_ALIVE:Lcom/android/settings/notification/SettingPref;

    .line 107
    new-instance v0, Lcom/samsung/android/settings/notification/SoundEffectSettings$3;

    .line 108
    const-string/jumbo v2, "k2hd"

    const-string/jumbo v3, "k2hd_effect"

    .line 107
    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundEffectSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREF_K2HD:Lcom/android/settings/notification/SettingPref;

    .line 111
    new-instance v0, Lcom/samsung/android/settings/notification/SoundEffectSettings$4;

    .line 112
    const-string/jumbo v2, "tube_amp"

    const-string/jumbo v3, "tube_amp_effect"

    .line 111
    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundEffectSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREF_TUBE_AMP:Lcom/android/settings/notification/SettingPref;

    .line 115
    new-instance v0, Lcom/samsung/android/settings/notification/SoundEffectSettings$5;

    .line 116
    const-string/jumbo v2, "tube_amp_pro"

    const-string/jumbo v3, "tube_amp_effect"

    .line 115
    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundEffectSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREF_TUBE_AMP_PRO:Lcom/android/settings/notification/SettingPref;

    .line 119
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/notification/SettingPref;

    .line 120
    sget-object v2, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREF_UHQ_UPSCALER:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v6

    .line 121
    sget-object v2, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREF_SOUND_ALIVE:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v4

    .line 122
    sget-object v2, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREF_K2HD:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    .line 123
    sget-object v1, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREF_TUBE_AMP:Lcom/android/settings/notification/SettingPref;

    aput-object v1, v0, v7

    .line 124
    sget-object v1, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREF_TUBE_AMP_PRO:Lcom/android/settings/notification/SettingPref;

    aput-object v1, v0, v8

    .line 119
    sput-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    .line 146
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->sFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    .line 147
    sget-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->sFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->SUPPORT_FW_FEATURE_LOGGING:Z

    .line 148
    sget-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->sFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_VIRTUAL_UHQ_UPSCALER"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->SUPPORT_UPSCALER:Z

    .line 149
    sget-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->sFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_K2HD_SOLUTION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->SUPPORT_K2HD:Z

    .line 557
    new-instance v0, Lcom/samsung/android/settings/notification/SoundEffectSettings$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SoundEffectSettings$6;-><init>()V

    .line 556
    sput-object v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 97
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    .line 127
    new-instance v0, Lcom/samsung/android/settings/notification/SoundEffectSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SoundEffectSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/notification/SoundEffectSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SoundEffectSettings$SettingsObserver;

    .line 130
    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledSoundAlive:Z

    .line 131
    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledUhqUpscaler:Z

    .line 132
    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledTubeAmp:Z

    .line 138
    iput v1, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    .line 85
    return-void
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 677
    sget-boolean v2, Lcom/samsung/android/settings/notification/SoundEffectSettings;->SUPPORT_FW_FEATURE_LOGGING:Z

    if-nez v2, :cond_0

    .line 678
    return-void

    .line 681
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 682
    .local v1, "row":Landroid/content/ContentValues;
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.android.settings.notification"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    if-eqz p2, :cond_1

    .line 685
    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_1
    if-eqz p3, :cond_2

    .line 688
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 691
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 693
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 676
    return-void
.end method

.method private setDimSwitchPreference()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 399
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v6, 0x5

    if-ge v1, v6, :cond_e

    .line 400
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    if-eqz v6, :cond_0

    .line 401
    const-string/jumbo v4, ""

    .line 402
    .local v4, "setting":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 418
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v9, 0x1

    invoke-static {v6, v4, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 419
    .local v5, "val":I
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v9, v6, v1

    if-eqz v5, :cond_1

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 421
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->currentUser:Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 423
    iget v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    if-ne v6, v7, :cond_2

    .line 424
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 450
    :goto_3
    const-string/jumbo v6, "sound_alive_effect"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 451
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 452
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledSoundAlive:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .end local v4    # "setting":Ljava/lang/String;
    .end local v5    # "val":I
    :cond_0
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .restart local v4    # "setting":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v4, "sound_alive_effect"

    goto :goto_1

    .line 408
    :pswitch_1
    const-string/jumbo v4, "k2hd_effect"

    goto :goto_1

    .line 412
    :pswitch_2
    const-string/jumbo v4, "tube_amp_effect"

    goto :goto_1

    .restart local v5    # "val":I
    :cond_1
    move v6, v8

    .line 419
    goto :goto_2

    .line 425
    :cond_2
    :try_start_1
    iget v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_5

    .line 426
    const-string/jumbo v6, "k2hd_effect"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 427
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "bluetooth_a2dp_uhqa_support"

    const/4 v10, 0x0

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 428
    .local v2, "isSupport":I
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "bluetooth_a2dp_uhqa_mode"

    const/4 v10, 0x1

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 429
    .local v3, "isUhqMode":I
    if-ne v2, v7, :cond_3

    if-ne v3, v7, :cond_3

    .line 430
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 470
    .end local v2    # "isSupport":I
    .end local v3    # "isUhqMode":I
    .end local v5    # "val":I
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4

    .line 432
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "isSupport":I
    .restart local v3    # "isUhqMode":I
    .restart local v5    # "val":I
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto :goto_3

    .line 435
    .end local v2    # "isSupport":I
    .end local v3    # "isUhqMode":I
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto :goto_3

    .line 437
    :cond_5
    iget v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    if-nez v6, :cond_7

    .line 438
    const-string/jumbo v6, "sound_alive_effect"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "2"

    const-string/jumbo v9, "1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 439
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 441
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 444
    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 447
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 454
    :cond_9
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledSoundAlive:Z

    goto/16 :goto_4

    .line 456
    :cond_a
    const-string/jumbo v6, "k2hd_effect"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 457
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 458
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledUhqUpscaler:Z

    goto/16 :goto_4

    .line 460
    :cond_b
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledUhqUpscaler:Z

    goto/16 :goto_4

    .line 462
    :cond_c
    const-string/jumbo v6, "tube_amp_effect"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 463
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 464
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledTubeAmp:Z

    goto/16 :goto_4

    .line 466
    :cond_d
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledTubeAmp:Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 398
    .end local v4    # "setting":Ljava/lang/String;
    .end local v5    # "val":I
    :cond_e
    return-void

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 269
    const/16 v0, 0x47

    return v0
.end method

.method public isAudioPathBTHeadphone()Z
    .locals 4

    .prologue
    .line 478
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v3, "audioParam;outDevice"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 480
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 484
    :cond_1
    const/16 v2, 0x80

    .line 483
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 485
    const/16 v2, 0x100

    .line 484
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 488
    .local v0, "isBt":Z
    :goto_0
    return v0

    .line 483
    .end local v0    # "isBt":Z
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAudioPathEarjack()Z
    .locals 4

    .prologue
    .line 502
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v3, "audioParam;curDevice"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, "path":Ljava/lang/String;
    const-string/jumbo v2, "HPH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 506
    .local v0, "isEarjack":Z
    return v0
.end method

.method public isAudioPathWFD()Z
    .locals 4

    .prologue
    .line 492
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v3, "audioParam;outDevice"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 494
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 497
    :cond_1
    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 498
    .local v0, "isWFD":Z
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 274
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 276
    const v2, 0x7f080120

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->addPreferencesFromResource(I)V

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    .line 280
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mUm:Landroid/os/UserManager;

    .line 282
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mUm:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->currentUser:Landroid/content/pm/UserInfo;

    .line 285
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 287
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    sget-object v2, Lcom/samsung/android/settings/notification/SoundEffectSettings;->KEYS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/TwoStatePreference;

    aput-object v2, v3, v0

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_0
    new-instance v2, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;

    invoke-direct {v2, p0, v4}, Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;-><init>(Lcom/samsung/android/settings/notification/SoundEffectSettings;Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;)V

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mMusicReceiver:Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;

    .line 292
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->intentFilter:Landroid/content/IntentFilter;

    .line 293
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->intentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->intentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->intentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->intentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->intentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 304
    const-string/jumbo v2, "my_sound"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mMySound:Landroid/preference/PreferenceScreen;

    .line 317
    sget-boolean v2, Lcom/samsung/android/settings/notification/SoundEffectSettings;->SUPPORT_UPSCALER:Z

    if-nez v2, :cond_2

    .line 318
    const-string/jumbo v2, "uhq_upscaler"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->removePreference(Ljava/lang/String;)V

    .line 319
    const-string/jumbo v2, "k2hd"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->removePreference(Ljava/lang/String;)V

    .line 320
    const-string/jumbo v2, "tube_amp_pro"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->removePreference(Ljava/lang/String;)V

    .line 334
    :goto_1
    sget-boolean v2, Lcom/samsung/android/settings/notification/SoundEffectSettings;->SUPPORT_FW_FEATURE_LOGGING:Z

    if-eqz v2, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "mComponentName":Ljava/lang/String;
    const-string/jumbo v2, "com.android.settings.SubSettings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 337
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "SEST"

    invoke-static {v2, v3, v4, v4}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .end local v1    # "mComponentName":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 323
    :cond_2
    const-string/jumbo v2, "tube_amp"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->removePreference(Ljava/lang/String;)V

    .line 325
    sget-boolean v2, Lcom/samsung/android/settings/notification/SoundEffectSettings;->SUPPORT_K2HD:Z

    if-nez v2, :cond_3

    .line 326
    const-string/jumbo v2, "k2hd"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 328
    :cond_3
    const-string/jumbo v2, "uhq_upscaler"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 338
    .restart local v1    # "mComponentName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "com.android.settings.Settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 339
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "SEST"

    invoke-static {v2, v3, v4, v4}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 340
    :cond_5
    const-string/jumbo v2, "com.android.settings.Settings$SoundEffectSettingsActivity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "SEMU"

    invoke-static {v2, v3, v4, v4}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 384
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 385
    sget-boolean v0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->SUPPORT_FW_FEATURE_LOGGING:Z

    if-eqz v0, :cond_2

    .line 386
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledSoundAlive:Z

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "SESA"

    const-string/jumbo v2, "sound_alive"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledUhqUpscaler:Z

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "SESA"

    const-string/jumbo v2, "k2hd"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mEnabledTubeAmp:Z

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "SESA"

    const-string/jumbo v2, "tube_amp"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 377
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 378
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SoundEffectSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SoundEffectSettings$SettingsObserver;->register(Z)V

    .line 379
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mMusicReceiver:Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 376
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 511
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mMySound:Landroid/preference/PreferenceScreen;

    if-nez v2, :cond_1

    .line 512
    :cond_0
    const-string/jumbo v2, "SoundEffectSettings"

    const-string/jumbo v3, "Preference or mMySound is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v2, 0x0

    return v2

    .line 515
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mMySound:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 517
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.hearingadjust.launch"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .local v1, "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v1    # "intent1":Landroid/content/Intent;
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "SoundEffectSettings"

    const-string/jumbo v3, " following activity com.sec.hearingadjust.launch  Not exist!! "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 353
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 354
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mMusicReceiver:Lcom/samsung/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SoundEffectSettings$SettingsObserver;

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/notification/SoundEffectSettings$SettingsObserver;->register(Z)V

    .line 359
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathEarjack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    iput v5, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    .line 368
    :goto_0
    sget-object v2, Lcom/samsung/android/settings/notification/SoundEffectSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 369
    .local v0, "pref":Lcom/android/settings/notification/SettingPref;
    invoke-virtual {v0, p0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 361
    .end local v0    # "pref":Lcom/android/settings/notification/SettingPref;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathBTHeadphone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->isAudioPathWFD()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    const/4 v2, 0x3

    iput v2, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    goto :goto_0

    .line 366
    :cond_2
    iput v1, p0, Lcom/samsung/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    goto :goto_0

    .line 372
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundEffectSettings;->setDimSwitchPreference()V

    .line 352
    return-void
.end method
