.class public Lcom/samsung/android/settings/notification/SoundSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SoundSettings$10;,
        Lcom/samsung/android/settings/notification/SoundSettings$11;,
        Lcom/samsung/android/settings/notification/SoundSettings$12;,
        Lcom/samsung/android/settings/notification/SoundSettings$13;,
        Lcom/samsung/android/settings/notification/SoundSettings$14;,
        Lcom/samsung/android/settings/notification/SoundSettings$1;,
        Lcom/samsung/android/settings/notification/SoundSettings$2;,
        Lcom/samsung/android/settings/notification/SoundSettings$3;,
        Lcom/samsung/android/settings/notification/SoundSettings$4;,
        Lcom/samsung/android/settings/notification/SoundSettings$5;,
        Lcom/samsung/android/settings/notification/SoundSettings$6;,
        Lcom/samsung/android/settings/notification/SoundSettings$7;,
        Lcom/samsung/android/settings/notification/SoundSettings$8;,
        Lcom/samsung/android/settings/notification/SoundSettings$9;,
        Lcom/samsung/android/settings/notification/SoundSettings$H;,
        Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;,
        Lcom/samsung/android/settings/notification/SoundSettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static final PREFS:[Lcom/android/settings/notification/SettingPref;

.field private static final PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_FOLDER_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_GPS_NOTI_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final RESTRICTED_KEYS:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mPowerManager:Landroid/os/PowerManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceVibration:Landroid/preference/PreferenceScreen;

.field private mDialKeypadTone:Landroid/preference/SwitchPreference;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

.field private mFeelring:Landroid/preference/Preference;

.field private final mHandler:Lcom/samsung/android/settings/notification/SoundSettings$H;

.field private mIntervalSoundMode:Landroid/preference/PreferenceScreen;

.field private mIsEmerMode:Z

.field private mKeyboardSound:Landroid/preference/SwitchPreference;

.field private mKeyboardVibration:Landroid/preference/SwitchPreference;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

.field private mPhoneRingtone2Preference:Landroid/preference/Preference;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtone:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtonePreference_DS:Landroid/preference/Preference;

.field private mRingtoyou:Landroid/preference/Preference;

.field private mScreenLockSound:Landroid/preference/SwitchPreference;

.field private final mSettingsObserver:Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;

.field private mSoundEffects:Landroid/preference/PreferenceScreen;

.field private mSoundMode:Lcom/android/settings/SecDropDownPreference;

.field private mSubNtofications:Landroid/preference/PreferenceScreen;

.field private mTcoloring:Landroid/preference/Preference;

.field private mTouchSounds:Landroid/preference/SwitchPreference;

.field private mUserManager:Landroid/os/UserManager;

.field private mVibrateWhenRinging:Landroid/preference/SwitchPreference;

.field private mVibrationOnTouch:Landroid/preference/SwitchPreference;

.field private mVoiceCapable:Z

.field private mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private offset:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Lcom/android/settings/notification/SettingPref;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic -get1()Landroid/media/AudioManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mScreenLockSound:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundEffects:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mTouchSounds:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDialKeypadTone:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/notification/SoundSettings$H;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mHandler:Lcom/samsung/android/settings/notification/SoundSettings$H;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardSound:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic -set0(Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/service/notification/ZenModeConfig;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->hasDockSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/samsung/android/settings/notification/SoundSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->refreshDNDmode()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->refreshSoundMode()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->startRingtoneSetting()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 183
    new-array v0, v1, [Ljava/lang/String;

    .line 184
    const-string/jumbo v2, "zen_mode"

    aput-object v2, v0, v9

    .line 185
    const-string/jumbo v2, "zen_mode_dnd"

    aput-object v2, v0, v4

    .line 183
    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    .line 245
    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$1;

    .line 246
    const-string/jumbo v2, "dial_pad_tones"

    const-string/jumbo v3, "dtmf_tone"

    .line 245
    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    .line 259
    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$2;

    .line 260
    const-string/jumbo v2, "screen_locking_sounds"

    const-string/jumbo v3, "lockscreen_sounds_enabled"

    .line 259
    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 269
    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$3;

    .line 270
    const-string/jumbo v2, "gps_notification_sounds"

    const-string/jumbo v3, "gps_noti_sound_enabled"

    .line 269
    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_GPS_NOTI_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 281
    new-instance v3, Lcom/samsung/android/settings/notification/SoundSettings$4;

    .line 282
    const-string/jumbo v5, "charging_sounds"

    const-string/jumbo v6, "charging_sounds_enabled"

    .line 281
    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/notification/SoundSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 290
    new-instance v3, Lcom/samsung/android/settings/notification/SoundSettings$5;

    .line 291
    const-string/jumbo v5, "docking_sounds"

    const-string/jumbo v6, "dock_sounds_enabled"

    .line 290
    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/notification/SoundSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 298
    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$6;

    .line 299
    const-string/jumbo v2, "touch_sounds"

    const-string/jumbo v3, "sound_effects_enabled"

    .line 298
    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundSettings$6;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 317
    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$7;

    .line 318
    const-string/jumbo v2, "keyboard_sound"

    const-string/jumbo v3, "sip_key_feedback_sound"

    .line 317
    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundSettings$7;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

    .line 325
    new-instance v3, Lcom/samsung/android/settings/notification/SoundSettings$8;

    .line 326
    const-string/jumbo v5, "dock_audio_media"

    const-string/jumbo v6, "dock_audio_media_enabled"

    .line 325
    filled-new-array {v9, v4}, [I

    move-result-object v8

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/notification/SoundSettings$8;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    .line 346
    new-instance v3, Lcom/samsung/android/settings/notification/SoundSettings$9;

    .line 347
    const-string/jumbo v5, "emergency_tone"

    const-string/jumbo v6, "emergency_tone"

    .line 346
    filled-new-array {v4, v1, v9}, [I

    move-result-object v8

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/notification/SoundSettings$9;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    .line 370
    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$10;

    .line 371
    const-string/jumbo v2, "folder_sounds"

    const-string/jumbo v3, "folder_sounds_enabled"

    .line 370
    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundSettings$10;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_FOLDER_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 378
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/settings/notification/SettingPref;

    .line 379
    sget-object v2, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v9

    .line 380
    sget-object v2, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v4

    .line 381
    sget-object v2, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    .line 382
    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 384
    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_GPS_NOTI_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 386
    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 387
    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_FOLDER_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 388
    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 389
    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 390
    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 378
    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    .line 1215
    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$12;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SoundSettings$12;-><init>()V

    .line 1214
    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 1654
    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$13;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SoundSettings$13;-><init>()V

    .line 1653
    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 130
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 209
    iput v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDirect:I

    .line 210
    iput-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDirectUri:Landroid/net/Uri;

    .line 232
    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;

    .line 238
    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$H;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/notification/SoundSettings$H;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;Lcom/samsung/android/settings/notification/SoundSettings$H;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mHandler:Lcom/samsung/android/settings/notification/SoundSettings$H;

    .line 242
    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIsEmerMode:Z

    .line 858
    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SoundSettings$11;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 1663
    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SoundSettings$14;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 130
    return-void
.end method

.method private canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 1495
    const-string/jumbo v4, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    .line 1496
    const-string/jumbo v4, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "inside canSetRingtone ringtone uri is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "Inside cansetringtone ringtone uri not null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "content://media/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1499
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "ringtoneUri.toString().contains(content:media)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 1503
    .local v0, "drmClient":Landroid/drm/DrmManagerClient;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v4}, Landroid/drm/DrmManagerClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1504
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "drmClient.canHandle(ringtoneUri, null)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    const/4 v4, 0x2

    invoke-virtual {v0, p2, v4}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v2

    .line 1506
    .local v2, "rightSts":I
    if-eqz v2, :cond_0

    .line 1507
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "PR DRM File Ringtone Rights Invalid !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    return v7

    .line 1511
    .end local v2    # "rightSts":I
    :cond_0
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 1512
    .local v3, "rtTemp":Landroid/media/Ringtone;
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "RingtoneManager.getRingtone(context, ringtoneUri)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    if-nez v3, :cond_1

    .line 1514
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "returning false because rtTemp is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "getRingtone() null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1516
    return v7

    .line 1518
    .end local v3    # "rtTemp":Landroid/media/Ringtone;
    :catch_0
    move-exception v1

    .line 1519
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "canSetRingtone() exception !!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    .end local v0    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 1523
    :cond_2
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "inside canSetRingtone ringtone uri is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    .prologue
    .line 1138
    const-string/jumbo v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1137
    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 1140
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1141
    :catch_0
    move-exception v0

    .line 1142
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SoundSettings"

    const-string/jumbo v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1143
    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    return-object v2
.end method

.method private static hasDockSettings(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 840
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private initRingtones()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 846
    const-string/jumbo v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 847
    const-string/jumbo v0, "ringtone2"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;

    .line 848
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    if-eqz v0, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    const-string/jumbo v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 850
    iput-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    goto :goto_0
.end method

.method private initSoundMode()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1005
    const-string/jumbo v5, "sound_mode"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SecDropDownPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    .line 1007
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    if-eqz v5, :cond_1

    .line 1009
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1010
    .local v2, "listItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    .local v3, "listItemsValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v5, v7}, Lcom/android/settings/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1012
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0068

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1013
    .local v4, "values":[Ljava/lang/String;
    const v5, 0x7f0b130f

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/notification/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1015
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1016
    const v5, 0x7f0b09ea

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/notification/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    aget-object v5, v4, v7

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    :cond_0
    const v5, 0x7f0b09eb

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/notification/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1020
    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1021
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 1022
    .local v0, "itemEntries":[Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 1023
    .local v1, "itemEntryValue":[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v5, v0}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1024
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v5, v1}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1025
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    new-instance v6, Lcom/samsung/android/settings/notification/SoundSettings$20;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/notification/SoundSettings$20;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v5, v6}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1004
    .end local v0    # "itemEntries":[Ljava/lang/CharSequence;
    .end local v1    # "itemEntryValue":[Ljava/lang/CharSequence;
    .end local v2    # "listItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "listItemsValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "values":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1610
    const-string/jumbo v4, "connectivity"

    .line 1609
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1612
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2

    .line 1613
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1615
    .local v3, "wifiNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1617
    .local v2, "mobileNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1619
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1620
    return v5

    .line 1621
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1622
    return v5

    .line 1623
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1624
    return v5

    .line 1627
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .end local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_2
    return v6
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 854
    return-void
.end method

.method private refreshDNDmode()V
    .locals 9

    .prologue
    const v4, 0x7f0b19db

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1104
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "zen_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    move v3, v4

    .line 1107
    .local v3, "mSummary":I
    :goto_0
    if-eq v3, v4, :cond_2

    .line 1108
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 1109
    .local v1, "mConfig":Landroid/service/notification/ZenModeConfig;
    const/4 v2, 0x0

    .line 1110
    .local v2, "mRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1111
    const-string/jumbo v7, "twschedule"

    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1112
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1116
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1117
    const v3, 0x7f0b09d5

    .line 1119
    :cond_1
    if-eqz v2, :cond_2

    iget-boolean v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v4, :cond_2

    .line 1120
    const v3, 0x7f0b09ca

    .line 1123
    .end local v0    # "i":I
    .end local v1    # "mConfig":Landroid/service/notification/ZenModeConfig;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v4, :cond_3

    .line 1124
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1125
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1126
    const-string/jumbo v8, "zen_mode"

    .line 1125
    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1130
    :goto_3
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    .line 1131
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1132
    const-string/jumbo v8, "zen_mode"

    .line 1131
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    :goto_4
    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 1103
    :cond_3
    return-void

    .line 1106
    .end local v3    # "mSummary":I
    :cond_4
    const v3, 0x7f0b19dc

    goto :goto_0

    .line 1110
    .restart local v0    # "i":I
    .restart local v1    # "mConfig":Landroid/service/notification/ZenModeConfig;
    .restart local v2    # "mRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local v3    # "mSummary":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "mConfig":Landroid/service/notification/ZenModeConfig;
    .end local v2    # "mRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_6
    move v4, v6

    .line 1125
    goto :goto_2

    .line 1128
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_3

    :cond_8
    move v5, v6

    .line 1131
    goto :goto_4
.end method

.method private refreshSoundMode()V
    .locals 9

    .prologue
    const v8, 0x7f0b130f

    const v7, 0x7f0b09eb

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1060
    sget-object v2, Lcom/samsung/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    .line 1061
    .local v1, "ringerMode":I
    if-ne v6, v1, :cond_2

    .line 1062
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1066
    :goto_0
    const-string/jumbo v2, "SoundSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshSoundMode : ringerMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    .line 1069
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1070
    if-nez v1, :cond_3

    .line 1071
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1086
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    if-eqz v2, :cond_1

    .line 1088
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1089
    rsub-int/lit8 v0, v1, 0x2

    .line 1098
    .local v0, "position":I
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    .line 1099
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundMode:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v3}, Lcom/android/settings/SecDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1059
    .end local v0    # "position":I
    :cond_1
    return-void

    .line 1064
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1072
    :cond_3
    if-ne v1, v5, :cond_4

    .line 1073
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    const v3, 0x7f0b09ea

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    .line 1074
    :cond_4
    if-ne v1, v6, :cond_0

    .line 1075
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    .line 1078
    :cond_5
    if-eqz v1, :cond_6

    if-ne v1, v5, :cond_7

    .line 1080
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    .line 1082
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    .line 1091
    :cond_8
    if-eqz v1, :cond_9

    if-ne v1, v5, :cond_a

    .line 1093
    :cond_9
    const/4 v0, 0x1

    .line 1091
    .restart local v0    # "position":I
    goto :goto_2

    .line 1095
    .end local v0    # "position":I
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "position":I
    goto :goto_2
.end method

.method private registerListeners()V
    .locals 3

    .prologue
    .line 1152
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1153
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1154
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1155
    new-instance v1, Lcom/samsung/android/settings/notification/SoundSettings$21;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/SoundSettings$21;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1163
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1151
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private releaseListeners()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1168
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1169
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1170
    iput-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1167
    :cond_0
    return-void
.end method

.method private startRingtoneSetting()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 652
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 653
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "com.android.settings"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    const-string/jumbo v6, "sound title"

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v7}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 655
    const-string/jumbo v6, "gsm.sim.state"

    const-string/jumbo v7, "UNKNOWN"

    invoke-static {v6, v9, v7}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 656
    .local v3, "simState1":Ljava/lang/String;
    const-string/jumbo v6, "gsm.sim.state"

    const-string/jumbo v7, "UNKNOWN"

    invoke-static {v6, v8, v7}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 657
    .local v4, "simState2":Ljava/lang/String;
    const-string/jumbo v6, "gsm.sim.currentcardstatus"

    const-string/jumbo v7, "9"

    invoke-static {v6, v9, v7}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, "cardStatus1":Ljava/lang/String;
    const-string/jumbo v6, "gsm.sim.currentcardstatus"

    const-string/jumbo v7, "9"

    invoke-static {v6, v8, v7}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "cardStatus2":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 660
    const-string/jumbo v6, "sound title"

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v7}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 661
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.settings.RingtoneSettingTabActivity"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    .line 651
    return-void

    .line 662
    :cond_0
    const-string/jumbo v6, "3"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "3"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 663
    :cond_1
    const-string/jumbo v6, "READY"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "READY"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 662
    if-eqz v6, :cond_3

    .line 664
    :cond_2
    const-string/jumbo v6, "sim Id"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 665
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 668
    :cond_3
    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 667
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 669
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v6

    if-ne v6, v8, :cond_4

    .line 670
    invoke-virtual {v5, v8}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    const/4 v7, 0x5

    if-ne v7, v6, :cond_4

    .line 671
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "phone2_on"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_4

    .line 672
    const-string/jumbo v6, "sim Id"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 676
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 674
    :cond_4
    const-string/jumbo v6, "sim Id"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 13
    .param p1, "originalUri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x0

    .line 1529
    const-string/jumbo v9, "SoundSettings"

    const-string/jumbo v10, "UpdateMediaDB"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1531
    .local v3, "filePath":Ljava/lang/String;
    const-string/jumbo v9, "SoundSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "file path : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1533
    .local v2, "extension":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1534
    const/16 v9, 0x2e

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1535
    .local v0, "dotPos":I
    if-ltz v0, :cond_0

    .line 1536
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1541
    .end local v0    # "dotPos":I
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1542
    .local v4, "mimeType":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1543
    const-string/jumbo v9, "SoundSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMediaDB - extension("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "), mimeType("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    const-string/jumbo v9, "audio"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1545
    const-string/jumbo v9, "SoundSettings"

    const-string/jumbo v10, "updateMediaDB - mimeType is not audio - return null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    return-object v12

    .line 1551
    :cond_1
    if-nez v4, :cond_2

    .line 1552
    const-string/jumbo v9, "3ga"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1551
    if-eqz v9, :cond_2

    .line 1553
    const-string/jumbo v9, "SoundSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMediaDB - no mimeType, but it\'s audio file extension - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1560
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1576
    .local v5, "newSoundFile":Ljava/io/File;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1577
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v9, "_data"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    const-string/jumbo v9, "title"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    const-string/jumbo v9, "mime_type"

    const-string/jumbo v10, "audio/*"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    const-string/jumbo v9, "_size"

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1582
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1583
    .local v7, "tempUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "_data=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1584
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1585
    .local v6, "newUri":Landroid/net/Uri;
    const-string/jumbo v9, "SoundSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMediaDB - tempUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "), newUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    return-object v6

    .line 1555
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "newSoundFile":Ljava/io/File;
    .end local v6    # "newUri":Landroid/net/Uri;
    .end local v7    # "tempUri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 1556
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "SoundSettings"

    const-string/jumbo v10, "updateMediaDB - exception is Occured - return null"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1557
    return-object v12
.end method

.method private updateRingtoneData(I)V
    .locals 1
    .param p1, "ringtoneType"    # I

    .prologue
    .line 1591
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1592
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 1593
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->lookupRingtoneNames()V

    .line 1590
    :cond_0
    :goto_0
    return-void

    .line 1596
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 1597
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->lookupRingtoneNames()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 886
    if-nez p0, :cond_0

    .line 887
    const-string/jumbo v0, "SoundSettings"

    const-string/jumbo v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    return-object v3

    .line 890
    :cond_0
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 891
    .local v1, "ringtoneUri":Landroid/net/Uri;
    const v0, 0x10403e1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 893
    .local v9, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 894
    const v0, 0x10403df

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 921
    :cond_1
    :goto_0
    return-object v9

    .line 896
    :cond_2
    const/4 v6, 0x0

    .line 898
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 900
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 901
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "title"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 900
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 906
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 907
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 908
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 916
    :cond_4
    if-eqz v6, :cond_1

    .line 917
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 902
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_5
    :try_start_1
    const-string/jumbo v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 903
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 904
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_display_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 903
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    goto :goto_1

    .line 913
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 916
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    if-eqz v6, :cond_1

    .line 917
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 911
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 916
    .local v8, "sqle":Landroid/database/sqlite/SQLiteException;
    if-eqz v6, :cond_1

    .line 917
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 915
    .end local v8    # "sqle":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 916
    if-eqz v6, :cond_6

    .line 917
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 915
    :cond_6
    throw v0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 926
    const v0, 0x7f0b18a7

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 395
    const/16 v0, 0x150

    return v0
.end method

.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 7
    .param p1, "pickedUri"    # Landroid/net/Uri;
    .param p2, "ringtoneType"    # I

    .prologue
    const v6, 0x7f0b09f4

    const/4 v5, 0x0

    .line 1440
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1441
    :cond_0
    const-string/jumbo v2, "SoundSettings"

    const-string/jumbo v3, "handleRingtonePicked() : Not changed"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_1
    :goto_0
    const-string/jumbo v2, "SoundSettings"

    const-string/jumbo v3, "updateRingtoneData(ringtoneType)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/notification/SoundSettings;->updateRingtoneData(I)V

    .line 1439
    return-void

    .line 1443
    :cond_2
    const-string/jumbo v2, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/settings/notification/SoundSettings;->canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1444
    const-string/jumbo v2, "SoundSettings"

    const-string/jumbo v3, "Inside cansetringtone false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1446
    return-void

    .line 1450
    :cond_3
    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1452
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.vcast.mediamanager.fileProvider"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1453
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 1459
    :cond_4
    const-string/jumbo v2, "SoundSettings"

    const-string/jumbo v3, "handleRingtonePicked updating media DB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1461
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/SoundSettings;->updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 1463
    if-nez p1, :cond_5

    .line 1464
    const-string/jumbo v2, "SoundSettings"

    const-string/jumbo v3, "handleRingtonePicked - pickedUri is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1466
    return-void

    .line 1470
    :cond_5
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1471
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "is_ringtone"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1474
    const-string/jumbo v2, "SoundSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleRingtonePicked - pickedUri("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "), ringtoneType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1481
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->offset:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1482
    const/16 v2, 0x80

    if-ne p2, v2, :cond_6

    .line 1483
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "recommendation_time_2"

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1476
    :catch_0
    move-exception v0

    .line 1478
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1485
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "recommendation_time"

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 733
    new-instance v11, Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v12, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    .line 735
    .local v11, "relativeLinkView":Lcom/samsung/android/settings/widget/RelativeLinkView;
    new-instance v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v8}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 736
    .local v8, "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    const v12, 0x7f0b0202

    iput v12, v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 737
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 738
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v12, "com.android.settings"

    const-string/jumbo v13, "com.android.settings.Settings$AccessibilitySettingsHearingActivity"

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    iput-object v3, v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 741
    invoke-virtual {v11, v8}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 743
    iget-object v12, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "pick_up_switch"

    invoke-static {v12, v13}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 744
    new-instance v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v9}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 745
    .local v9, "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    const v12, 0x7f0b090b

    iput v12, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 746
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 747
    .local v4, "intent2":Landroid/content/Intent;
    const-string/jumbo v12, "com.android.settings"

    const-string/jumbo v13, "com.android.settings.Settings$UsefulFeatureActivity"

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    const-string/jumbo v12, "type"

    const-string/jumbo v13, "pick_up_switch"

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    iput-object v4, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 751
    invoke-virtual {v11, v9}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 754
    .end local v4    # "intent2":Landroid/content/Intent;
    .end local v9    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    :cond_0
    const/4 v6, 0x1

    .line 755
    .local v6, "isSupportMute":Z
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string/jumbo v13, "CscFeature_Setting_ConfigMotionType"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "Motion":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 757
    const-string/jumbo v12, ","

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, "NotSupportMotion":[Ljava/lang/String;
    array-length v7, v1

    .line 759
    .local v7, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 760
    aget-object v12, v1, v2

    const-string/jumbo v13, "merged_mute_or_pause_switch"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 761
    const/4 v6, 0x0

    .line 767
    .end local v1    # "NotSupportMotion":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v7    # "length":I
    :cond_1
    iget-object v12, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "merged_mute_or_pause_switch"

    invoke-static {v12, v13}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-eqz v6, :cond_2

    .line 768
    new-instance v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v10}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 769
    .local v10, "linkedData3":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    const v12, 0x7f0b090c

    iput v12, v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 770
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 771
    .local v5, "intent3":Landroid/content/Intent;
    const-string/jumbo v12, "com.android.settings"

    const-string/jumbo v13, "com.android.settings.Settings$UsefulFeatureActivity"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    const-string/jumbo v12, "type"

    const-string/jumbo v13, "merged_mute_or_pause_switch"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    iput-object v5, v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 775
    invoke-virtual {v11, v10}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 778
    .end local v5    # "intent3":Landroid/content/Intent;
    .end local v10    # "linkedData3":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getListView()Landroid/widget/ListView;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    .line 781
    .end local v0    # "Motion":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "isSupportMute":Z
    .end local v8    # "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .end local v11    # "relativeLinkView":Lcom/samsung/android/settings/widget/RelativeLinkView;
    :cond_3
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 731
    return-void

    .line 759
    .restart local v0    # "Motion":Ljava/lang/String;
    .restart local v1    # "NotSupportMotion":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v6    # "isSupportMute":Z
    .restart local v7    # "length":I
    .restart local v8    # "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .restart local v11    # "relativeLinkView":Lcom/samsung/android/settings/widget/RelativeLinkView;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 1371
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1372
    const-string/jumbo v4, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onActivityResult: requestCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", resultCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    packed-switch p1, :pswitch_data_0

    .line 1370
    :cond_0
    :goto_0
    return-void

    .line 1375
    :pswitch_0
    if-eq p2, v7, :cond_1

    return-void

    .line 1376
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1377
    .local v2, "pickedUri":Landroid/net/Uri;
    const-string/jumbo v4, "highlight_offset"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->offset:Ljava/lang/String;

    .line 1383
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/settings/notification/SoundSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 1387
    .end local v2    # "pickedUri":Landroid/net/Uri;
    :pswitch_1
    if-eq p2, v7, :cond_2

    return-void

    .line 1388
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1389
    .restart local v2    # "pickedUri":Landroid/net/Uri;
    const-string/jumbo v4, "highlight_offset"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->offset:Ljava/lang/String;

    .line 1395
    const/16 v4, 0x80

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/settings/notification/SoundSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 1399
    .end local v2    # "pickedUri":Landroid/net/Uri;
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/notification/SoundSettings;->isConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1400
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1401
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Setting_ConfigOpRngToneLink"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1402
    .local v1, "mRingtoneType":Ljava/lang/String;
    const-string/jumbo v4, "Tcoloring"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1403
    const-string/jumbo v4, "http://www.tcoloring.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1404
    .local v3, "u":Landroid/net/Uri;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1405
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1406
    .end local v3    # "u":Landroid/net/Uri;
    :cond_3
    const-string/jumbo v4, "Ringtoyou"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1407
    const-string/jumbo v4, "http://ringtoyou.olleh.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1408
    .restart local v3    # "u":Landroid/net/Uri;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1409
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1410
    .end local v3    # "u":Landroid/net/Uri;
    :cond_4
    const-string/jumbo v4, "FeelRing"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1411
    const-string/jumbo v4, "http://www.musicbellring.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1412
    .restart local v3    # "u":Landroid/net/Uri;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1413
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1415
    .end local v3    # "u":Landroid/net/Uri;
    :cond_5
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "Preference not found: "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v12, 0x7f0800af

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 400
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 401
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    .line 402
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mUserManager:Landroid/os/UserManager;

    .line 403
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    .line 405
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    sput-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 406
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "power"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    sput-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->mPowerManager:Landroid/os/PowerManager;

    .line 408
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 409
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b130f

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setTitle(I)V

    .line 418
    :goto_0
    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/notification/SoundSettings;->addPreferencesFromResource(I)V

    .line 420
    const-string/jumbo v8, "ds_ring_tone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    .line 422
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->initRingtones()V

    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 425
    const-string/jumbo v8, "ringtone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    .line 426
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v8, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObject(Lcom/samsung/android/settings/notification/SoundSettings;)V

    .line 427
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v8, v11}, Lcom/android/settings/DefaultRingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 429
    :cond_0
    const-string/jumbo v8, "ringtone2"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    .line 430
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v8, v11}, Lcom/android/settings/DefaultRingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 431
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v8, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObject(Lcom/samsung/android/settings/notification/SoundSettings;)V

    .line 432
    const-string/jumbo v8, "tcoloring"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mTcoloring:Landroid/preference/Preference;

    .line 433
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_Setting_ConfigOpRngToneLink"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 434
    .local v5, "mRingtoneType":Ljava/lang/String;
    const-string/jumbo v8, "Tcoloring"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 435
    const-string/jumbo v8, "tcoloring"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 438
    :cond_1
    const-string/jumbo v8, "ringtoyou"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtoyou:Landroid/preference/Preference;

    .line 439
    const-string/jumbo v8, "Ringtoyou"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 440
    const-string/jumbo v8, "ringtoyou"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 443
    :cond_2
    const-string/jumbo v8, "feelring"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mFeelring:Landroid/preference/Preference;

    .line 444
    const-string/jumbo v8, "FeelRing"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 445
    const-string/jumbo v8, "feelring"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 449
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "download_contents":Ljava/lang/String;
    const-string/jumbo v8, "Ringtone"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 451
    const-string/jumbo v8, "download_ringtone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 454
    :cond_4
    const-string/jumbo v8, "emergency_tone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/SecDropDownPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

    .line 455
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

    if-eqz v8, :cond_5

    .line 456
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v8, v11}, Lcom/android/settings/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 459
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 468
    .local v0, "activity":Landroid/content/Intent;
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->setHasOptionsMenu(Z)V

    .line 472
    sget-object v9, Lcom/samsung/android/settings/notification/SoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    const/4 v8, 0x0

    array-length v10, v9

    :goto_1
    if-ge v8, v10, :cond_9

    aget-object v6, v9, v8

    .line 473
    .local v6, "pref":Lcom/android/settings/notification/SettingPref;
    invoke-virtual {v6, p0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 472
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 411
    .end local v0    # "activity":Landroid/content/Intent;
    .end local v2    # "download_contents":Ljava/lang/String;
    .end local v5    # "mRingtoneType":Ljava/lang/String;
    .end local v6    # "pref":Lcom/android/settings/notification/SettingPref;
    :cond_6
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 412
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b0477

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_0

    .line 414
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b0991

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_0

    .line 476
    .restart local v0    # "activity":Landroid/content/Intent;
    .restart local v2    # "download_contents":Ljava/lang/String;
    .restart local v5    # "mRingtoneType":Ljava/lang/String;
    :cond_9
    const-string/jumbo v8, "dial_pad_tones"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDialKeypadTone:Landroid/preference/SwitchPreference;

    .line 477
    const-string/jumbo v8, "screen_locking_sounds"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mScreenLockSound:Landroid/preference/SwitchPreference;

    .line 478
    const-string/jumbo v8, "touch_sounds"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mTouchSounds:Landroid/preference/SwitchPreference;

    .line 479
    const-string/jumbo v8, "keyboard_sound"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardSound:Landroid/preference/SwitchPreference;

    .line 482
    const-string/jumbo v8, "phone_vibration"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    .line 483
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 484
    const-string/jumbo v8, "vibrate_when_ringing"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    .line 485
    const-string/jumbo v8, "vibrate_on_touch"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    .line 486
    const-string/jumbo v8, "keyboard_vibration"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    .line 488
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    new-instance v9, Lcom/samsung/android/settings/notification/SoundSettings$15;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/notification/SoundSettings$15;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 499
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    new-instance v9, Lcom/samsung/android/settings/notification/SoundSettings$16;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/notification/SoundSettings$16;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 510
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    new-instance v9, Lcom/samsung/android/settings/notification/SoundSettings$17;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/notification/SoundSettings$17;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 521
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 522
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 529
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 530
    .local v1, "conf":Landroid/content/res/Configuration;
    iget v8, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v8, v11, :cond_a

    .line 532
    const-string/jumbo v8, "vibrate_on_touch"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 533
    const-string/jumbo v8, "keyboard_vibration"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 535
    :cond_a
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 536
    const-string/jumbo v8, "phone_vibration"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 537
    const-string/jumbo v8, "vibrate_when_ringing"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 538
    const-string/jumbo v8, "ringtone_vibration"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 542
    :cond_b
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 543
    iput-boolean v11, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIsEmerMode:Z

    .line 547
    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 548
    const-string/jumbo v8, "ringtone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 549
    const-string/jumbo v8, "ringtone2"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 554
    :goto_3
    const-string/jumbo v8, "ds_ring_tone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    .line 555
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    if-eqz v8, :cond_d

    .line 556
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    const v9, 0x7f0b097c

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 557
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    new-instance v9, Lcom/samsung/android/settings/notification/SoundSettings$18;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/notification/SoundSettings$18;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 565
    :cond_d
    const-string/jumbo v8, "zen_mode_dnd"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/SettingsSwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 566
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    new-instance v9, Lcom/samsung/android/settings/notification/SoundSettings$19;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/notification/SoundSettings$19;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 581
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v8

    if-nez v8, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 590
    :cond_e
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKey()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 591
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 594
    :cond_f
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 595
    const-string/jumbo v8, "sound_mode"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 596
    const-string/jumbo v8, "interval_sound_mode"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    .line 597
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 603
    :goto_5
    sget-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->semIsMultiSoundSupported()Z

    move-result v8

    if-nez v8, :cond_10

    .line 604
    const-string/jumbo v8, "multi_sound"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 611
    :cond_10
    const-string/jumbo v8, "notifications_sub_settings"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    .line 612
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v8

    if-nez v8, :cond_11

    .line 613
    invoke-static {}, Lcom/android/settingslib/Utils;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.calendar"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 612
    if-eqz v8, :cond_1a

    .line 614
    :cond_11
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0b09a3

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 615
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 616
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0b09a6

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 624
    :cond_12
    :goto_6
    const-string/jumbo v8, "sound_effect"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundEffects:Landroid/preference/PreferenceScreen;

    .line 625
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundEffects:Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_13

    .line 630
    :cond_13
    iget-boolean v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIsEmerMode:Z

    if-eqz v8, :cond_1d

    .line 633
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "UPSM"

    invoke-static {v8, v12, v9}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 635
    .local v7, "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_1c

    .line 636
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "list$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 637
    .local v3, "list":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_7

    .line 523
    .end local v1    # "conf":Landroid/content/res/Configuration;
    .end local v3    # "list":Ljava/lang/String;
    .end local v4    # "list$iterator":Ljava/util/Iterator;
    .end local v7    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_14
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isCoinDcPMIC(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_15

    .line 524
    const-string/jumbo v8, "vibration_feedback_intensity"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 526
    :cond_15
    const-string/jumbo v8, "vibrate_on_touch"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 527
    const-string/jumbo v8, "keyboard_vibration"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 551
    .restart local v1    # "conf":Landroid/content/res/Configuration;
    :cond_16
    const-string/jumbo v8, "ringtone2"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 552
    const-string/jumbo v8, "ds_ring_tone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 582
    :cond_17
    const-string/jumbo v8, "dnd_category"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 583
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 584
    const-string/jumbo v8, "zen_mode_dnd"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOrder(I)V

    goto/16 :goto_4

    .line 586
    :cond_18
    const-string/jumbo v8, "zen_mode_dnd"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 599
    :cond_19
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->initSoundMode()V

    .line 600
    const-string/jumbo v8, "interval_sound_mode"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 618
    :cond_1a
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 619
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0b09a4

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_6

    .line 620
    :cond_1b
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 621
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0b09a5

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_6

    .line 641
    .restart local v7    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1c
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 642
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 648
    .end local v7    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1d
    :goto_8
    new-instance v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 399
    return-void

    .line 643
    .restart local v7    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1e
    const-string/jumbo v8, "vibrations"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 956
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 959
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIsEmerMode:Z

    if-eqz v0, :cond_0

    .line 960
    return-void

    .line 955
    :cond_0
    return-void
.end method

.method public onMusicPickerChosen(I)V
    .locals 3
    .param p1, "ringtoneType"    # I

    .prologue
    const/4 v2, 0x1

    .line 1424
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1425
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1426
    const-string/jumbo v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1427
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1428
    const-string/jumbo v1, "enable_ringtone_recommender"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1429
    const-string/jumbo v1, "DocumentsUIPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1430
    if-ne p1, v2, :cond_0

    .line 1431
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1432
    const-string/jumbo v1, "SoundSettings"

    const-string/jumbo v2, "startActivityForResult: requestCode : REQUEST_AUDIO_RINGTONE : 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :goto_0
    return-void

    .line 1434
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1435
    const-string/jumbo v1, "SoundSettings"

    const-string/jumbo v2, "startActivityForResult: requestCode : REQUEST_AUDIO_RINGTONE_2 : 2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 967
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 975
    const/4 v1, 0x0

    return v1

    .line 969
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 970
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "helphub:section"

    const-string/jumbo v2, "ringtone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    .line 972
    const/4 v1, 0x1

    return v1

    .line 967
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 719
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 720
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;->register(Z)V

    .line 723
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->releaseListeners()V

    .line 727
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SoundsAndVibration"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 718
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 786
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mTcoloring:Landroid/preference/Preference;

    if-eq p2, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtoyou:Landroid/preference/Preference;

    if-ne p2, v4, :cond_2

    .line 787
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/notification/SoundSettings;->isConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 788
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 789
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "extra_prefs_show_button_bar"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 790
    const-string/jumbo v4, "extra_prefs_set_back_text"

    const v5, 0x7f0b175a

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/notification/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    const-string/jumbo v4, "wifi_enable_next_on_connect"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 793
    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 836
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4

    .line 786
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mFeelring:Landroid/preference/Preference;

    if-eq p2, v4, :cond_0

    .line 813
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardSound:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_7

    .line 814
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "SRKS"

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 795
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 797
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mTcoloring:Landroid/preference/Preference;

    if-ne p2, v4, :cond_4

    .line 798
    const-string/jumbo v4, "http://www.tcoloring.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 799
    .local v3, "u":Landroid/net/Uri;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 800
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 801
    .end local v3    # "u":Landroid/net/Uri;
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtoyou:Landroid/preference/Preference;

    if-ne p2, v4, :cond_5

    .line 802
    const-string/jumbo v4, "http://ringtoyou.olleh.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 803
    .restart local v3    # "u":Landroid/net/Uri;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 804
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 805
    .end local v3    # "u":Landroid/net/Uri;
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mFeelring:Landroid/preference/Preference;

    if-ne p2, v4, :cond_6

    .line 806
    const-string/jumbo v4, "http://www.musicbellring.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 807
    .restart local v3    # "u":Landroid/net/Uri;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 808
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 810
    .end local v3    # "u":Landroid/net/Uri;
    :cond_6
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "Preference not found: "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 815
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundEffects:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_8

    .line 817
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 818
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v4, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 820
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 821
    :catch_0
    move-exception v0

    .local v0, "activityNotFound":Landroid/content/ActivityNotFoundException;
    goto :goto_0

    .line 830
    .end local v0    # "activityNotFound":Landroid/content/ActivityNotFoundException;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_9

    .line 831
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "SVKV"

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 832
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_1

    .line 833
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100120

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 683
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 684
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;->register(Z)V

    .line 686
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->refreshSoundMode()V

    .line 687
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->refreshDNDmode()V

    .line 688
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->registerListeners()V

    .line 691
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->lookupRingtoneNames()V

    .line 693
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_0

    .line 694
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "vibrate_when_ringing"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 695
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_1

    .line 696
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "haptic_feedback_enabled"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 697
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    .line 698
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "sip_key_feedback_vibration"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 699
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->updateDeviceVibrationName()V

    .line 701
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v7, "no_adjust_volume"

    invoke-virtual {v4, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    .line 702
    .local v0, "isRestricted":Z
    sget-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    array-length v9, v8

    move v7, v6

    :goto_3
    if-ge v7, v9, :cond_8

    aget-object v1, v8, v7

    .line 703
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 704
    .local v2, "pref":Landroid/preference/Preference;
    if-eqz v2, :cond_3

    .line 705
    if-eqz v0, :cond_7

    move v4, v6

    :goto_4
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 702
    :cond_3
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_3

    .end local v0    # "isRestricted":Z
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_4
    move v4, v6

    .line 694
    goto :goto_0

    :cond_5
    move v4, v6

    .line 696
    goto :goto_1

    :cond_6
    move v4, v6

    .line 698
    goto :goto_2

    .restart local v0    # "isRestricted":Z
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "pref":Landroid/preference/Preference;
    :cond_7
    move v4, v5

    .line 705
    goto :goto_4

    .line 709
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_8
    sget-object v4, Lcom/samsung/android/settings/notification/SoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    array-length v5, v4

    :goto_5
    if-ge v6, v5, :cond_9

    aget-object v3, v4, v6

    .line 710
    .local v3, "pref":Lcom/android/settings/notification/SettingPref;
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 709
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 714
    .end local v3    # "pref":Lcom/android/settings/notification/SettingPref;
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v7, "SoundsAndVibration"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 682
    return-void
.end method

.method protected setZenMode(ILandroid/net/Uri;)V
    .locals 2
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "SoundSettings"

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 1147
    return-void
.end method

.method public updateDeviceVibrationName()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 979
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 982
    .local v7, "temp":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 983
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 985
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 989
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 990
    return-void

    .line 992
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 994
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 995
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 996
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 997
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1000
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 978
    :cond_3
    return-void
.end method
