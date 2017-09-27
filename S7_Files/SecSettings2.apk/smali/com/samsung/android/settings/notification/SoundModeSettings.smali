.class public Lcom/samsung/android/settings/notification/SoundModeSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SoundModeSettings.java"

# interfaces
.implements Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SoundModeSettings$1;,
        Lcom/samsung/android/settings/notification/SoundModeSettings$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mAudioManager:Landroid/media/AudioManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisableListeners:Z

.field private mIntervalTime:Lcom/android/settings/SecDropDownPreference;

.field private mMute:Lcom/samsung/android/settings/notification/RadioPreference;

.field private mMuteIntervalOn:Landroid/preference/SwitchPreference;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSound:Lcom/samsung/android/settings/notification/RadioPreference;

.field private mTemporaryMuteObserver:Landroid/database/ContentObserver;

.field private mVibrate:Lcom/samsung/android/settings/notification/RadioPreference;


# direct methods
.method static synthetic -get0()Landroid/media/AudioManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/SoundModeSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/SoundModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/SoundModeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->init()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/notification/SoundModeSettings;I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/SoundModeSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/notification/SoundModeSettings;I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/SoundModeSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/notification/SoundModeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->updateControls()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 437
    new-instance v0, Lcom/samsung/android/settings/notification/SoundModeSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SoundModeSettings$2;-><init>()V

    .line 436
    sput-object v0, Lcom/samsung/android/settings/notification/SoundModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 84
    new-instance v0, Lcom/samsung/android/settings/notification/SoundModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/SoundModeSettings$1;-><init>(Lcom/samsung/android/settings/notification/SoundModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mTemporaryMuteObserver:Landroid/database/ContentObserver;

    .line 58
    return-void
.end method

.method private getRemainTimeString()Landroid/text/SpannableString;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 332
    sget-object v8, Lcom/samsung/android/settings/notification/SoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getRemainingMuteIntervalMs()I

    move-result v2

    .line 333
    .local v2, "currentRemainTime":I
    const v8, 0x36ee80

    div-int v3, v2, v8

    .line 334
    .local v3, "hour":I
    const v8, 0xea60

    div-int v8, v2, v8

    rem-int/lit8 v6, v8, 0x3c

    .line 335
    .local v6, "minute":I
    const-string/jumbo v1, "%s %s"

    .line 336
    .local v1, "FORMAT_2":Ljava/lang/String;
    const-string/jumbo v0, "%s"

    .line 338
    .local v0, "FORMAT_1":Ljava/lang/String;
    const-string/jumbo v8, "SoundModeSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getRemainMins(), currentRemainTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f130000

    invoke-virtual {v8, v9, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, "hourStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f130001

    invoke-virtual {v8, v9, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "minStr":Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 342
    .local v7, "result":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 343
    const/4 v8, 0x0

    return-object v8

    .line 346
    :cond_0
    if-nez v3, :cond_3

    if-lez v6, :cond_3

    .line 347
    :cond_1
    if-nez v3, :cond_5

    .line 348
    const-string/jumbo v8, "%s"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v5, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 355
    :cond_2
    :goto_0
    new-instance v8, Landroid/text/SpannableString;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v7, v10, v11

    const v11, 0x7f0b09ef

    invoke-virtual {v9, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v8

    .line 346
    :cond_3
    if-lez v3, :cond_4

    if-eqz v6, :cond_1

    .line 352
    :cond_4
    if-lez v3, :cond_2

    if-lez v6, :cond_2

    .line 353
    const-string/jumbo v8, "%s %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v11

    aput-object v5, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 349
    :cond_5
    if-nez v6, :cond_2

    .line 350
    const-string/jumbo v8, "%s"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v4, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private init()V
    .locals 11

    .prologue
    const/high16 v10, 0x7f130000

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 110
    const-string/jumbo v1, "SoundModeSettings"

    const-string/jumbo v2, "init() start"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 112
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 116
    :cond_0
    const v1, 0x7f080121

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SoundModeSettings;->addPreferencesFromResource(I)V

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 119
    const-string/jumbo v1, "sound"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mSound:Lcom/samsung/android/settings/notification/RadioPreference;

    .line 120
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mSound:Lcom/samsung/android/settings/notification/RadioPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/SoundModeSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/SoundModeSettings$3;-><init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    const-string/jumbo v1, "vibrate"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mVibrate:Lcom/samsung/android/settings/notification/RadioPreference;

    .line 143
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mVibrate:Lcom/samsung/android/settings/notification/RadioPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/SoundModeSettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/SoundModeSettings$4;-><init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    const-string/jumbo v1, "mute"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMute:Lcom/samsung/android/settings/notification/RadioPreference;

    .line 166
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMute:Lcom/samsung/android/settings/notification/RadioPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/SoundModeSettings$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/SoundModeSettings$5;-><init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 187
    const-string/jumbo v1, "temporary_mute"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SoundModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMuteIntervalOn:Landroid/preference/SwitchPreference;

    .line 188
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMuteIntervalOn:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/SoundModeSettings$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/SoundModeSettings$6;-><init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    const-string/jumbo v1, "mute_duration"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SoundModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SecDropDownPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mIntervalTime:Lcom/android/settings/SecDropDownPreference;

    .line 208
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mIntervalTime:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v1, v6}, Lcom/android/settings/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 209
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mIntervalTime:Lcom/android/settings/SecDropDownPreference;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b020b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    .line 209
    invoke-virtual {v1, v2}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mIntervalTime:Lcom/android/settings/SecDropDownPreference;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 216
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 217
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 218
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 219
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    .line 215
    invoke-virtual {v1, v2}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 222
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mIntervalTime:Lcom/android/settings/SecDropDownPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/SoundModeSettings$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/SoundModeSettings$7;-><init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 259
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->updateControls()V

    .line 260
    const-string/jumbo v1, "SoundModeSettings"

    const-string/jumbo v2, "init() end"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method private registerListenersAndObserver()V
    .locals 5

    .prologue
    .line 359
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 360
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 361
    .local v0, "mfilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    new-instance v1, Lcom/samsung/android/settings/notification/SoundModeSettings$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/SoundModeSettings$8;-><init>(Lcom/samsung/android/settings/notification/SoundModeSettings;)V

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 372
    .end local v0    # "mfilter":Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 373
    const-string/jumbo v2, "mode_ringer_time_on"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mTemporaryMuteObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    .line 372
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 358
    return-void
.end method

.method private releaseListenersAndObserver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 377
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 379
    iput-object v2, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mTemporaryMuteObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 376
    return-void
.end method

.method private updateControls()V
    .locals 12

    .prologue
    const v11, 0x7f0b09eb

    const/16 v10, 0x21

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 264
    const-string/jumbo v4, "SoundModeSettings"

    const-string/jumbo v5, "updateControls() start"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v4, Lcom/samsung/android/settings/notification/SoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    .line 266
    .local v2, "currentRingerMode":I
    sget-object v4, Lcom/samsung/android/settings/notification/SoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v0

    .line 267
    .local v0, "currentMuteInterval":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 268
    const-string/jumbo v5, "mode_ringer_time_on"

    .line 267
    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 269
    .local v1, "currentMuteIntervalOn":Z
    :goto_0
    const-string/jumbo v4, "SoundModeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateControls(), currentRingerMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " currentMuteInterval="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " currentMuteIntervalOn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iput-boolean v7, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mDisableListeners:Z

    .line 273
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mSound:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v4, v9}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    .line 274
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mVibrate:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v4, v9}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    .line 275
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMute:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v4, v9}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    .line 276
    const/4 v4, 0x2

    if-ne v4, v2, :cond_3

    .line 277
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mSound:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    .line 283
    :goto_1
    if-eqz v1, :cond_6

    if-nez v2, :cond_6

    .line 284
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getRemainTimeString()Landroid/text/SpannableString;

    move-result-object v3

    .line 285
    .local v3, "remain":Landroid/text/SpannableString;
    if-nez v3, :cond_5

    .line 286
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMute:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v4, v11}, Lcom/samsung/android/settings/notification/RadioPreference;->setTitle(I)V

    .line 298
    .end local v3    # "remain":Landroid/text/SpannableString;
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMuteIntervalOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 299
    sget-object v4, Lcom/samsung/android/settings/notification/SoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getPrevRingerMode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 312
    :goto_3
    const/16 v4, 0x3c

    if-eq v0, v4, :cond_0

    const/16 v4, 0x78

    if-ne v0, v4, :cond_7

    .line 313
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mIntervalTime:Lcom/android/settings/SecDropDownPreference;

    div-int/lit8 v5, v0, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 318
    :goto_4
    sget-object v4, Lcom/samsung/android/settings/notification/SoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v4

    if-eqz v4, :cond_8

    .line 319
    const-string/jumbo v4, "temporary_mute"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/SoundModeSettings;->removePreference(Ljava/lang/String;)V

    .line 320
    const-string/jumbo v4, "mute_duration"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/SoundModeSettings;->removePreference(Ljava/lang/String;)V

    .line 327
    :cond_1
    :goto_5
    iput-boolean v9, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mDisableListeners:Z

    .line 328
    const-string/jumbo v4, "SoundModeSettings"

    const-string/jumbo v5, "updateControls() end"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void

    .line 267
    .end local v1    # "currentMuteIntervalOn":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "currentMuteIntervalOn":Z
    goto/16 :goto_0

    .line 278
    :cond_3
    if-ne v7, v2, :cond_4

    .line 279
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mVibrate:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    goto :goto_1

    .line 281
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMute:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    goto :goto_1

    .line 288
    .restart local v3    # "remain":Landroid/text/SpannableString;
    :cond_5
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    const v6, 0x10301b3

    invoke-direct {v4, v5, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 289
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 288
    invoke-virtual {v3, v4, v8, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 290
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->getAutoCompleteColor(Landroid/content/Context;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 291
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 290
    invoke-virtual {v3, v4, v8, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 292
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMute:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/notification/RadioPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 295
    .end local v3    # "remain":Landroid/text/SpannableString;
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMute:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v4, v11}, Lcom/samsung/android/settings/notification/RadioPreference;->setTitle(I)V

    goto :goto_2

    .line 301
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMuteIntervalOn:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0b09ed

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    .line 302
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    const v8, 0x7f0b09ea

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 301
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 305
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mMuteIntervalOn:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0b09ed

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    .line 306
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    const v8, 0x7f0b130f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 305
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 312
    :cond_7
    const/16 v4, 0xb4

    if-eq v0, v4, :cond_0

    .line 315
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mIntervalTime:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 322
    :cond_8
    if-nez v1, :cond_1

    .line 323
    const-string/jumbo v4, "mute_duration"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/SoundModeSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 386
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 388
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->semGetListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 385
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mDisableListeners:Z

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->init()V

    .line 94
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "dialogId"    # I

    .prologue
    .line 399
    packed-switch p1, :pswitch_data_0

    .line 412
    const/4 v1, 0x0

    return-object v1

    .line 401
    :pswitch_0
    sget-object v1, Lcom/samsung/android/settings/notification/SoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRemainingMuteIntervalMs()I

    move-result v6

    .line 402
    .local v6, "currentRemainTime":I
    new-instance v0, Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 404
    const v2, 0x36ee80

    div-int v3, v6, v2

    .line 405
    const v2, 0xea60

    div-int v2, v6, v2

    rem-int/lit8 v4, v2, 0x3c

    .line 406
    const/4 v5, 0x1

    move-object v2, p0

    .line 402
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 407
    .local v0, "timePickerDialog":Lcom/samsung/android/app/SemTimePickerDialog;
    invoke-virtual {v0}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 408
    return-object v0

    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 393
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 394
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->releaseListenersAndObserver()V

    .line 392
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->registerListenersAndObserver()V

    .line 104
    return-void
.end method

.method public onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/widget/SemTimePicker;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    const/4 v2, 0x0

    .line 417
    const-string/jumbo v0, "SoundModeSettings"

    const-string/jumbo v1, "onTimeSet from timePicker set new MuteInterval"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 419
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "0 and 0 set"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 420
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer_time_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 421
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->init()V

    .line 422
    return-void

    .line 424
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/notification/SoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    mul-int/lit8 v1, p2, 0x3c

    add-int/2addr v1, p3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMuteInterval(I)V

    .line 425
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundModeSettings;->init()V

    .line 416
    return-void
.end method
