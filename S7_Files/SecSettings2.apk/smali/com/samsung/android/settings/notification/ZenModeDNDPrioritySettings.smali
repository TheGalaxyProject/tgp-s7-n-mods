.class public Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeDNDPrioritySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;
    }
.end annotation


# instance fields
.field private mAlarm:Landroid/preference/SwitchPreference;

.field private mAlarmOnly:Lcom/samsung/android/settings/notification/RadioPreference;

.field private mCalls:Lcom/android/settings/SecDropDownPreference;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mCustom:Lcom/samsung/android/settings/notification/RadioPreference;

.field private mDisableListeners:Z

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEvents:Landroid/preference/SwitchPreference;

.field private mId:Ljava/lang/String;

.field private mMessages:Lcom/android/settings/SecDropDownPreference;

.field private mNoException:Lcom/samsung/android/settings/notification/RadioPreference;

.field private mPolicy:Landroid/app/NotificationManager$Policy;

.field private mReminders:Landroid/preference/SwitchPreference;

.field private mRepeatCallers:Landroid/preference/SwitchPreference;

.field private mRule:Landroid/app/AutomaticZenRule;

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/NotificationManager$Policy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/app/AutomaticZenRule;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "rule"    # Landroid/app/AutomaticZenRule;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;ZI)I
    .locals 1
    .param p1, "allow"    # Z
    .param p2, "categoryType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getNewPriorityCategories(ZI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;IIII)V
    .locals 0
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I
    .param p4, "suppressedVisualEffects"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->savePolicy(IIII)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;ILandroid/net/Uri;)V
    .locals 0
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->setZenMode(ILandroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->updateControls()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    .line 537
    new-instance v0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$1;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 47
    return-void
.end method

.method private static addSources(Lcom/android/settings/SecDropDownPreference;)V
    .locals 8
    .param p0, "pref"    # Lcom/android/settings/SecDropDownPreference;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 482
    new-array v0, v7, [Ljava/lang/CharSequence;

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/SecDropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b19ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/SecDropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b19bb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 485
    invoke-virtual {p0}, Lcom/android/settings/SecDropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b19bc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/SecDropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0854

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 482
    invoke-virtual {p0, v0}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 488
    new-array v0, v7, [Ljava/lang/CharSequence;

    .line 489
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 490
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 491
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 492
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 488
    invoke-virtual {p0, v0}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 481
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 144
    .local v1, "root":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 148
    :cond_0
    const v2, 0x7f08015d

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->addPreferencesFromResource(I)V

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 152
    const-string/jumbo v2, "no_exception"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mNoException:Lcom/samsung/android/settings/notification/RadioPreference;

    .line 153
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mNoException:Lcom/samsung/android/settings/notification/RadioPreference;

    new-instance v3, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$2;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 179
    const-string/jumbo v2, "alarm_only"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarmOnly:Lcom/samsung/android/settings/notification/RadioPreference;

    .line 180
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarmOnly:Lcom/samsung/android/settings/notification/RadioPreference;

    new-instance v3, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$3;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    const-string/jumbo v2, "custom"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCustom:Lcom/samsung/android/settings/notification/RadioPreference;

    .line 207
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCustom:Lcom/samsung/android/settings/notification/RadioPreference;

    new-instance v3, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$4;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 233
    const-string/jumbo v2, "reminders"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mReminders:Landroid/preference/SwitchPreference;

    .line 234
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mReminders:Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$5;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 250
    const-string/jumbo v2, "events"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEvents:Landroid/preference/SwitchPreference;

    .line 251
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEvents:Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$6;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 267
    const-string/jumbo v2, "messages"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SecDropDownPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mMessages:Lcom/android/settings/SecDropDownPreference;

    .line 268
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mMessages:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->addSources(Lcom/android/settings/SecDropDownPreference;)V

    .line 269
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mMessages:Lcom/android/settings/SecDropDownPreference;

    new-instance v3, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$7;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 293
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mMessages:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 295
    const-string/jumbo v2, "calls"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SecDropDownPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/SecDropDownPreference;

    .line 296
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->addSources(Lcom/android/settings/SecDropDownPreference;)V

    .line 297
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/SecDropDownPreference;

    new-instance v3, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$8;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 319
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 321
    const-string/jumbo v2, "repeat_callers"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    .line 322
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    .line 323
    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0093

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 322
    const v5, 0x7f0b19c4

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$9;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 342
    const-string/jumbo v2, "alarms"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarm:Landroid/preference/SwitchPreference;

    .line 343
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarm:Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$10;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 357
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarm:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 359
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v2

    if-nez v2, :cond_1

    .line 360
    invoke-static {}, Lcom/android/settingslib/Utils;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.calendar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 359
    if-eqz v2, :cond_2

    .line 361
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEvents:Landroid/preference/SwitchPreference;

    const v3, 0x7f0b09d1

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 364
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 365
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mNoException:Lcom/samsung/android/settings/notification/RadioPreference;

    const v3, 0x7f0b09d4

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/notification/RadioPreference;->setSummary(I)V

    .line 366
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarm:Landroid/preference/SwitchPreference;

    const v3, 0x7f0b09c9

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 370
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    .line 371
    .local v0, "manualFilter":I
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v2, :cond_4

    .line 373
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 372
    invoke-static {v2}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v0

    .line 376
    :cond_4
    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    .line 377
    const-string/jumbo v2, "custom_category"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->removePreference(Ljava/lang/String;)V

    .line 378
    const-string/jumbo v2, "alarms"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->removePreference(Ljava/lang/String;)V

    .line 379
    const-string/jumbo v2, "repeat_callers"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->removePreference(Ljava/lang/String;)V

    .line 380
    const-string/jumbo v2, "calls"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->removePreference(Ljava/lang/String;)V

    .line 381
    const-string/jumbo v2, "messages"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->removePreference(Ljava/lang/String;)V

    .line 382
    const-string/jumbo v2, "reminders"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->removePreference(Ljava/lang/String;)V

    .line 383
    const-string/jumbo v2, "events"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->removePreference(Ljava/lang/String;)V

    .line 384
    const-string/jumbo v2, "app_notifications"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->removePreference(Ljava/lang/String;)V

    .line 387
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->updateRadioControls()V

    .line 388
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->updateControls()V

    .line 390
    return-object v1
.end method

.method private static defaultNewSchedule()Lcom/android/settings/notification/ZenRuleInfo;
    .locals 3

    .prologue
    .line 525
    new-instance v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 526
    .local v1, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    sget-object v2, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 527
    const/16 v2, 0x16

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 528
    const/4 v2, 0x7

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 529
    new-instance v0, Lcom/android/settings/notification/ZenRuleInfo;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenRuleInfo;-><init>()V

    .line 530
    .local v0, "rt":Lcom/android/settings/notification/ZenRuleInfo;
    const-string/jumbo v2, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    iput-object v2, v0, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    .line 531
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    .line 532
    return-object v0
.end method

.method private getNewPriorityCategories(ZI)I
    .locals 2
    .param p1, "allow"    # Z
    .param p2, "categoryType"    # I

    .prologue
    .line 501
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 502
    .local v0, "priorityCategories":I
    if-eqz p1, :cond_0

    .line 503
    or-int/2addr v0, p2

    .line 507
    :goto_0
    return v0

    .line 505
    :cond_0
    not-int v1, p2

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method private isPriorityCategoryEnabled(I)Z
    .locals 2
    .param p1, "categoryType"    # I

    .prologue
    const/4 v0, 0x0

    .line 497
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private refreshRuleOrFinish()Z
    .locals 4

    .prologue
    .line 413
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 414
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 415
    sget-boolean v1, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRule="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 417
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->toastAndFinish()V

    .line 418
    const/4 v1, 0x1

    return v1

    .line 420
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private savePolicy(IIII)V
    .locals 2
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I
    .param p4, "suppressedVisualEffects"    # I

    .prologue
    .line 512
    new-instance v0, Landroid/app/NotificationManager$Policy;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 514
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 511
    return-void
.end method

.method private setRule(Landroid/app/AutomaticZenRule;)Z
    .locals 1
    .param p1, "rule"    # Landroid/app/AutomaticZenRule;

    .prologue
    const/4 v0, 0x0

    .line 519
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 521
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toastAndFinish()V
    .locals 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0b19ab

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 426
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 423
    return-void
.end method

.method private updateControls()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 455
    iput-boolean v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mDisableListeners:Z

    .line 457
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarm:Landroid/preference/SwitchPreference;

    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 459
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/SecDropDownPreference;

    if-eqz v0, :cond_0

    .line 460
    iget-object v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/SecDropDownPreference;

    .line 461
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 460
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mMessages:Lcom/android/settings/SecDropDownPreference;

    .line 465
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 466
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 464
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mReminders:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 468
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEvents:Landroid/preference/SwitchPreference;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 469
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    .line 470
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v1

    .line 469
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 471
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 472
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-eqz v0, :cond_4

    move v0, v2

    .line 471
    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 473
    iput-boolean v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mDisableListeners:Z

    .line 454
    return-void

    :cond_2
    move v0, v1

    .line 462
    goto :goto_0

    :cond_3
    move v0, v2

    .line 471
    goto :goto_1

    :cond_4
    move v0, v3

    .line 472
    goto :goto_1
.end method

.method private updateRadioControls()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 430
    iput-boolean v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mDisableListeners:Z

    .line 432
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mNoException:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    .line 433
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarmOnly:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    .line 434
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCustom:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    .line 437
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    .line 438
    .local v0, "manualFilter":I
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 439
    invoke-static {v1}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v0

    .line 443
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mNoException:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    .line 451
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mDisableListeners:Z

    .line 429
    return-void

    .line 445
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 446
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarmOnly:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    goto :goto_0

    .line 448
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mCustom:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10013b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 395
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 397
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 394
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 92
    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 95
    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/NotificationManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 96
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 99
    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRules:Ljava/util/Set;

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRules:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Ljava/util/Map$Entry;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/Map$Entry;

    .line 100
    .local v2, "rt":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    array-length v8, v2

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v4, v2, v6

    .line 101
    .local v4, "ruleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    const-string/jumbo v9, "twschedule"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AutomaticZenRule;

    invoke-virtual {v5}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 102
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AutomaticZenRule;

    iput-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/app/AutomaticZenRule;

    .line 103
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mId:Ljava/lang/String;

    .line 107
    .end local v4    # "ruleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/app/AutomaticZenRule;

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 108
    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    const/16 v6, 0xad

    invoke-static {v5, v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 109
    new-instance v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 110
    .local v3, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-static {}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->defaultNewSchedule()Lcom/android/settings/notification/ZenRuleInfo;

    move-result-object v1

    .line 111
    .local v1, "ri":Lcom/android/settings/notification/ZenRuleInfo;
    const-string/jumbo v5, "twschedule"

    iput-object v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 112
    iput-boolean v7, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 113
    const/4 v5, 0x1

    iput v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 114
    iget-object v5, v1, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    iput-object v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 115
    iget-object v5, v1, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    iput-object v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 118
    .end local v1    # "ri":Lcom/android/settings/notification/ZenRuleInfo;
    .end local v3    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 121
    new-instance v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 89
    return-void

    .line 100
    .restart local v4    # "ruleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    :cond_2
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onPause()V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DoNotDisturbAllowExceptions"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "DoNotDisturbAllowExceptions"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->refreshRuleOrFinish()Z

    .line 408
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->updateControls()V

    .line 406
    return-void
.end method
