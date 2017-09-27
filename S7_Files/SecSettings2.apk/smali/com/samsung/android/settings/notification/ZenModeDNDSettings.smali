.class public Lcom/samsung/android/settings/notification/ZenModeDNDSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;,
        Lcom/samsung/android/settings/notification/ZenModeDNDSettings$2;,
        Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;,
        Lcom/samsung/android/settings/notification/ZenModeDNDSettings$SettingsObserver;,
        Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;
    }
.end annotation


# static fields
.field public static final ALL_DAYS:[I

.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAllowException:Landroid/preference/PreferenceScreen;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mContext:Landroid/content/Context;

.field private final mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mDayDialog:Landroid/app/Dialog;

.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private mDays:Landroid/preference/Preference;

.field private mDaysDialog:Landroid/app/AlertDialog;

.field private mDisableListeners:Z

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEnableNow:Landroid/preference/SwitchPreference;

.field private mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mId:Ljava/lang/String;

.field private mPolicy:Landroid/app/NotificationManager$Policy;

.field private mRule:Landroid/app/AutomaticZenRule;

.field private mRules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field private mScheduling:Landroid/preference/SwitchPreference;

.field private final mSettingsObserver:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

.field private mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mVisualSettings:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mScheduling:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDayDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnableNow:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/app/AutomaticZenRule;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDayDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;ZZ)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "fireChanged"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->maybeRefreshRules(ZZ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->showDaysDialog()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateControls()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateDays()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;Landroid/net/Uri;)V
    .locals 0
    .param p1, "newConditionId"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateRule(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    const-string/jumbo v0, "ZenModeSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->DEBUG:Z

    .line 110
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->ALL_DAYS:[I

    .line 620
    new-instance v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$2;-><init>()V

    .line 619
    sput-object v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 88
    return-void

    .line 110
    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 116
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDaysDialog:Landroid/app/AlertDialog;

    .line 140
    new-instance v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$1;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 890
    new-instance v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 88
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 199
    .local v2, "root":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 202
    :cond_0
    const v3, 0x7f08015e

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->addPreferencesFromResource(I)V

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 205
    const-string/jumbo v3, "downtime"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 207
    .local v0, "downtime":Landroid/preference/PreferenceCategory;
    const-string/jumbo v3, "days"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    .line 208
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    new-instance v4, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$4;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 215
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 219
    .local v1, "mgr":Landroid/app/FragmentManager;
    new-instance v3, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    .line 220
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    const-string/jumbo v4, "start_time"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 221
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    const v4, 0x7f0b19c9

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setTitle(I)V

    .line 222
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    new-instance v4, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$5;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setCallback(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;)V

    .line 239
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 240
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 243
    new-instance v3, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    .line 244
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    const-string/jumbo v4, "end_time"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 245
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    const v4, 0x7f0b19ca

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setTitle(I)V

    .line 246
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    new-instance v4, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$6;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setCallback(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;)V

    .line 263
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 264
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 265
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 267
    const-string/jumbo v3, "scheduling_switch"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mScheduling:Landroid/preference/SwitchPreference;

    .line 268
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mScheduling:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$7;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 299
    const-string/jumbo v3, "enable_now"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnableNow:Landroid/preference/SwitchPreference;

    .line 300
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnableNow:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$8;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 318
    const-string/jumbo v3, "allow_exceptions"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    .line 320
    const-string/jumbo v3, "visual_interruptions_settings"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mVisualSettings:Landroid/preference/Preference;

    .line 321
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 322
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mVisualSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 324
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    const-string/jumbo v3, "dnd_description"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const v4, 0x7f0b09bf

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 328
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 329
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 330
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 331
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 334
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateControls()V

    .line 336
    return-object v2
.end method

.method private getZenModeRules()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 583
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v0

    .line 584
    .local v0, "ruleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private isEffectSuppressed(I)Z
    .locals 2
    .param p1, "effect"    # I

    .prologue
    const/4 v0, 0x0

    .line 402
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private maybeRefreshRules(ZZ)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "fireChanged"    # Z

    .prologue
    .line 569
    if-eqz p1, :cond_1

    .line 570
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getZenModeRules()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRules:Ljava/util/Set;

    .line 571
    sget-boolean v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Refreshed mRules="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRules:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    if-eqz p2, :cond_1

    .line 573
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->refreshRuleOrFinish()Z

    .line 574
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 575
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateControls()V

    .line 568
    :cond_1
    return-void
.end method

.method private refreshRuleOrFinish()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 589
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 590
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 592
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRules:Ljava/util/Set;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRules:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/util/Map$Entry;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    .line 593
    .local v1, "rt":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    array-length v6, v1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v1, v4

    .line 594
    .local v2, "ruleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    const-string/jumbo v7, "twschedule"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AutomaticZenRule;

    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 595
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AutomaticZenRule;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    .line 596
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mId:Ljava/lang/String;

    .line 600
    .end local v2    # "ruleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    :cond_0
    sget-boolean v3, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ZenModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mRule="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 602
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->toastAndFinish()V

    .line 603
    const/4 v3, 0x1

    return v3

    .line 593
    .restart local v2    # "ruleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 605
    .end local v2    # "ruleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    :cond_3
    return v5
.end method

.method private setRule(Landroid/app/AutomaticZenRule;)Z
    .locals 1
    .param p1, "rule"    # Landroid/app/AutomaticZenRule;

    .prologue
    const/4 v0, 0x0

    .line 340
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 342
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "rule"    # Landroid/app/AutomaticZenRule;

    .prologue
    .line 563
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result v0

    .line 564
    .local v0, "success":Z
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->maybeRefreshRules(ZZ)V

    .line 565
    return v0
.end method

.method private showDaysDialog()V
    .locals 11

    .prologue
    const v9, 0x7f0b09d7

    const/4 v10, 0x0

    .line 435
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 436
    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDaysDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDaysDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 466
    :goto_0
    return-void

    .line 437
    :cond_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 439
    new-instance v7, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$9;

    iget-object v8, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v9, v9, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-direct {v7, p0, v8, v9}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$9;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;Landroid/content/Context;[I)V

    .line 437
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 450
    new-instance v7, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$10;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$10;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    .line 437
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 462
    const v7, 0x7f0b183c

    .line 437
    invoke-virtual {v6, v7, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDaysDialog:Landroid/app/AlertDialog;

    .line 464
    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDaysDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 470
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 469
    check-cast v1, Landroid/view/LayoutInflater;

    .line 472
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0400d0

    .line 471
    invoke-virtual {v1, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 473
    .local v3, "mDepthView":Landroid/view/View;
    const v6, 0x7f1102bb

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 474
    .local v2, "mDayView":Landroid/widget/LinearLayout;
    new-instance v6, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$11;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v8, v8, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-direct {v6, p0, v7, v8}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$11;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;Landroid/content/Context;[I)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 485
    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDayDialog:Landroid/app/Dialog;

    if-eqz v6, :cond_2

    return-void

    .line 486
    :cond_2
    new-instance v0, Landroid/app/Dialog;

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getThemeResId()I

    move-result v7

    invoke-direct {v0, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDayDialog:Landroid/app/Dialog;

    .line 487
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 488
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    const v7, 0x7f0f0283

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 489
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 490
    new-instance v6, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$12;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$12;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 504
    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 506
    const v6, 0x7f1102b5

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 507
    .local v4, "mHeaderBar":Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 508
    const-string/jumbo v7, "current_sec_active_themepackage"

    .line 507
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 509
    const v6, 0x7f0200d8

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 511
    :cond_3
    const v6, 0x7f1102b6

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar;

    .line 512
    .local v5, "toolbar":Landroid/widget/Toolbar;
    new-instance v6, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$13;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$13;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v5, v6}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    invoke-virtual {v5, v9}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 519
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 434
    return-void
.end method

.method private toastAndFinish()V
    .locals 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0b19ab

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 611
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 608
    return-void
.end method

.method private updateControls()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 418
    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z

    .line 420
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateControlsInternal()V

    .line 421
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_2

    .line 422
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 423
    const-string/jumbo v4, "zen_mode"

    .line 422
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 428
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mScheduling:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 429
    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z

    .line 430
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateEnable()V

    .line 431
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateAllowSummary()V

    .line 417
    return-void

    :cond_1
    move v0, v1

    .line 422
    goto :goto_0

    .line 424
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnableNow:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 425
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnableNow:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 426
    const-string/jumbo v4, "zen_mode"

    .line 425
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private updateDays()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 353
    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v2, v6, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 354
    .local v2, "days":[I
    if-eqz v2, :cond_4

    array-length v6, v2

    if-lez v6, :cond_4

    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 357
    .local v0, "c":Ljava/util/Calendar;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v6, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    array-length v6, v6

    if-ge v3, v6, :cond_3

    .line 358
    sget-object v6, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    aget v1, v6, v3

    .line 359
    .local v1, "day":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v6, v2

    if-ge v4, v6, :cond_1

    .line 360
    aget v6, v2, v4

    if-ne v1, v6, :cond_2

    .line 361
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 362
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 363
    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f0b19b3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 359
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 370
    .end local v1    # "day":I
    .end local v4    # "j":I
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 371
    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 373
    return-void

    .line 376
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v3    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    const v7, 0x7f0b19af

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 377
    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 351
    return-void
.end method

.method private updateEndSummary()V
    .locals 6

    .prologue
    .line 381
    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int v2, v4, v5

    .line 382
    .local v2, "startMin":I
    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int v0, v4, v5

    .line 383
    .local v0, "endMin":I
    if-lt v2, v0, :cond_0

    const/4 v1, 0x1

    .line 384
    .local v1, "nextDay":Z
    :goto_0
    if-eqz v1, :cond_1

    const v3, 0x7f0b19cb

    .line 385
    .local v3, "summaryFormat":I
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setSummaryFormat(I)V

    .line 380
    return-void

    .line 383
    .end local v1    # "nextDay":Z
    .end local v3    # "summaryFormat":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 384
    .restart local v1    # "nextDay":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "summaryFormat":I
    goto :goto_1
.end method

.method private updateRule(Landroid/net/Uri;)V
    .locals 2
    .param p1, "newConditionId"    # Landroid/net/Uri;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, p1}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    .line 345
    return-void
.end method

.method private updateVisualSettingsSummary()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 389
    const v1, 0x7f0b19d4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "s":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->isEffectSuppressed(I)Z

    move-result v1

    .line 390
    if-eqz v1, :cond_1

    .line 392
    const v1, 0x7f0b19d7

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 398
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mVisualSettings:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 388
    return-void

    .line 393
    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    const v1, 0x7f0b19d5

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 395
    :cond_2
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    const v1, 0x7f0b19d6

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 886
    const/16 v0, 0x4c

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 524
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 525
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDayDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDayDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 523
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    .line 184
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->maybeRefreshRules(ZZ)V

    .line 185
    sget-boolean v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loaded mRules="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRules:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->refreshRuleOrFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    return-void

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 194
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 179
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 550
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 551
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->unregister()V

    .line 554
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 558
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DoNotDisturb"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 549
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 532
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 533
    invoke-direct {p0, v1, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->maybeRefreshRules(ZZ)V

    .line 535
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateControls()V

    .line 536
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->register()V

    .line 539
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 540
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.DND_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 545
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "DoNotDisturb"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 531
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    .line 822
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z

    if-nez v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateZenMode(Z)V

    .line 824
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0b09c5

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0b09c6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected setZenMode(ILandroid/net/Uri;)V
    .locals 2
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "ZenModeSettings"

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method public updateAllowSummary()V
    .locals 3

    .prologue
    .line 866
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    .line 867
    .local v0, "manualFilter":I
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v1, :cond_0

    .line 869
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 868
    invoke-static {v1}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v0

    .line 872
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 873
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b09c1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 880
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 864
    return-void

    .line 874
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 875
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b1958

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 877
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b020b

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method protected updateControlsInternal()V
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-nez v0, :cond_0

    .line 407
    const-string/jumbo v0, "ZenModeSettings"

    const-string/jumbo v1, "mSchedule is null in updateDays()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateDays()V

    .line 411
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setTime(II)V

    .line 412
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setTime(II)V

    .line 413
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateEndSummary()V

    .line 414
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->updateVisualSettingsSummary()V

    .line 405
    return-void
.end method

.method public updateEnable()V
    .locals 2

    .prologue
    .line 858
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    .line 859
    .local v0, "mIsEnable":Z
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 860
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setEnabled(Z)V

    .line 861
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setEnabled(Z)V

    .line 857
    return-void
.end method

.method public updateZenMode(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    const/4 v2, 0x0

    .line 835
    if-eqz p1, :cond_3

    .line 836
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    .line 837
    .local v0, "globalZen":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 838
    const/4 v0, 0x2

    .line 846
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v1, :cond_0

    .line 847
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v0, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 850
    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->setZenMode(ILandroid/net/Uri;)V

    .line 851
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "DNDS"

    const/16 v4, 0x3e8

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 834
    .end local v0    # "globalZen":I
    :goto_1
    return-void

    .line 839
    .restart local v0    # "globalZen":I
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 840
    const/4 v0, 0x3

    goto :goto_0

    .line 842
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 853
    .end local v0    # "globalZen":I
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->setZenMode(ILandroid/net/Uri;)V

    goto :goto_1
.end method
