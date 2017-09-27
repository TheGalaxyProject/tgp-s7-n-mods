.class public Lcom/android/settings/location/LocationSettings;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/LocationSettings$1;,
        Lcom/android/settings/location/LocationSettings$2;,
        Lcom/android/settings/location/LocationSettings$3;,
        Lcom/android/settings/location/LocationSettings$4;,
        Lcom/android/settings/location/LocationSettings$5;,
        Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;,
        Lcom/android/settings/location/LocationSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private injector:Lcom/android/settings/location/SettingsInjector;

.field private mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

.field private mAgpsMenu:Landroid/preference/PreferenceCategory;

.field private mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

.field private mClockSync:Landroid/preference/SwitchPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mImproveLocation:Landroid/preference/Preference;

.field private mIsEmerMode:Z

.field private mLocationMode:Landroid/preference/Preference;

.field private mLocationObserver:Landroid/database/ContentObserver;

.field private mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

.field private mLocationUseInBackground:Landroid/preference/Preference;

.field private mManagedProfile:Landroid/os/UserHandle;

.field private mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

.field private mManagedProfileSwitchClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSatelliteView:Landroid/preference/PreferenceScreen;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/location/SettingsInjector;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/location/LocationSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/location/LocationSettingsEnabler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/location/LocationSettings;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/location/LocationSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/location/LocationSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/location/LocationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    invoke-static {p0}, Lcom/android/settings/location/LocationSettings;->getLocationString(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 686
    new-instance v0, Lcom/android/settings/location/LocationSettings$3;

    invoke-direct {v0}, Lcom/android/settings/location/LocationSettings$3;-><init>()V

    .line 685
    sput-object v0, Lcom/android/settings/location/LocationSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 696
    new-instance v0, Lcom/android/settings/location/LocationSettings$4;

    invoke-direct {v0}, Lcom/android/settings/location/LocationSettings$4;-><init>()V

    .line 695
    sput-object v0, Lcom/android/settings/location/LocationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 109
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mIsEmerMode:Z

    .line 165
    new-instance v0, Lcom/android/settings/location/LocationSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/location/LocationSettings$1;-><init>(Lcom/android/settings/location/LocationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationObserver:Landroid/database/ContentObserver;

    .line 625
    new-instance v0, Lcom/android/settings/location/LocationSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationSettings$2;-><init>(Lcom/android/settings/location/LocationSettings;)V

    .line 624
    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitchClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 729
    new-instance v0, Lcom/android/settings/location/LocationSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationSettings$5;-><init>(Lcom/android/settings/location/LocationSettings;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 109
    return-void
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;
    .param p3, "lockdownOnLocationAccess"    # Z

    .prologue
    .line 473
    const-string/jumbo v3, "location_services"

    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 474
    .local v0, "categoryLocationServices":Landroid/preference/PreferenceCategory;
    new-instance v3, Lcom/android/settings/location/SettingsInjector;

    invoke-direct {v3, p1}, Lcom/android/settings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    .line 477
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    if-eqz p3, :cond_1

    .line 478
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 477
    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/settings/location/SettingsInjector;->getInjectedSettings(I)Ljava/util/List;

    move-result-object v2

    .line 480
    .local v2, "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v3, Lcom/android/settings/location/LocationSettings$10;

    invoke-direct {v3, p0}, Lcom/android/settings/location/LocationSettings$10;-><init>(Lcom/android/settings/location/LocationSettings;)V

    iput-object v3, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 490
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 491
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 494
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/location/LocationSettings;->isKioskEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 498
    :cond_0
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 471
    :goto_1
    return-void

    .line 478
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_1
    const/4 v3, -0x2

    goto :goto_0

    .line 495
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_2
    invoke-direct {p0, v2, v0}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    goto :goto_1
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/android/settings/location/LocationSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/location/LocationSettings$6;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 271
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 272
    .local v0, "entry":Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 263
    .end local v0    # "entry":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private changeManagedProfileLocationAccessStatus(Z)V
    .locals 8
    .param p1, "mainSwitchOn"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 411
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    if-nez v5, :cond_0

    .line 412
    return-void

    .line 414
    :cond_0
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v5, v6}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 416
    const-string/jumbo v6, "no_share_location"

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 415
    invoke-static {v5, v6, v7}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 417
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->isManagedProfileRestrictedByBase()Z

    move-result v2

    .line 418
    .local v2, "isRestrictedByBase":Z
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 419
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v5, v0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 420
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    .line 410
    :goto_0
    return-void

    .line 422
    :cond_1
    move v1, p1

    .line 423
    .local v1, "enabled":Z
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v5, p1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 425
    const v3, 0x7f0b19dc

    .line 426
    .local v3, "summaryResId":I
    if-nez p1, :cond_2

    .line 427
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 429
    :cond_2
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    if-eqz v2, :cond_3

    :goto_1
    invoke-virtual {v5, v4}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    .line 430
    if-eqz v2, :cond_4

    .line 431
    const v3, 0x7f0b19dc

    .line 433
    :goto_2
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    new-instance v5, Lcom/android/settings/location/LocationSettings$9;

    invoke-direct {v5, p0}, Lcom/android/settings/location/LocationSettings$9;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-virtual {v4, v5}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 447
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 429
    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    .line 431
    :cond_4
    const v3, 0x7f0b19db

    goto :goto_2
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 21

    .prologue
    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsActivity;

    .line 278
    .local v4, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 279
    .local v16, "root":Landroid/preference/PreferenceScreen;
    if-eqz v16, :cond_0

    .line 280
    invoke-virtual/range {v16 .. v16}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 282
    :cond_0
    const v17, 0x7f080091

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 287
    const-string/jumbo v17, "clock_sync"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/SwitchPreference;

    .line 288
    const-string/jumbo v17, "assisted_gps_function_switch"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

    .line 289
    const-string/jumbo v17, "satellite_view"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mSatelliteView:Landroid/preference/PreferenceScreen;

    .line 290
    const-string/jumbo v17, "cmcc_agpsmenu"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mAgpsMenu:Landroid/preference/PreferenceCategory;

    .line 292
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v17

    if-nez v17, :cond_3

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mSatelliteView:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mAgpsMenu:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 314
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/location/LocationSettings;->setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V

    .line 315
    const-string/jumbo v17, "location_mode"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 318
    const-string/jumbo v17, "improve_location"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mImproveLocation:Landroid/preference/Preference;

    .line 319
    const-string/jumbo v17, "use_in_background_location"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mLocationUseInBackground:Landroid/preference/Preference;

    .line 320
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v17

    if-nez v17, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 325
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    move-object/from16 v17, v0

    .line 326
    new-instance v18, Lcom/android/settings/location/LocationSettings$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/settings/location/LocationSettings$8;-><init>(Lcom/android/settings/location/LocationSettings;Lcom/android/settings/SettingsActivity;)V

    .line 325
    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 338
    const-string/jumbo v17, "recent_location_requests"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceCategory;

    .line 337
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    .line 339
    new-instance v10, Lcom/android/settingslib/location/RecentLocationApps;

    invoke-direct {v10, v4}, Lcom/android/settingslib/location/RecentLocationApps;-><init>(Landroid/content/Context;)V

    .line 340
    .local v10, "recentApps":Lcom/android/settingslib/location/RecentLocationApps;
    invoke-virtual {v10}, Lcom/android/settingslib/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v12

    .line 341
    .local v12, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/location/RecentLocationApps$Request;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 342
    .local v11, "recentLocationPrefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "request$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settingslib/location/RecentLocationApps$Request;

    .line 343
    .local v14, "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    new-instance v9, Lcom/android/settings/DimmableIconPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v17

    .line 344
    iget-object v0, v14, Lcom/android/settingslib/location/RecentLocationApps$Request;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    .line 343
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Lcom/android/settings/DimmableIconPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 345
    .local v9, "pref":Lcom/android/settings/DimmableIconPreference;
    iget-object v0, v14, Lcom/android/settingslib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/DimmableIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 346
    iget-object v0, v14, Lcom/android/settingslib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/DimmableIconPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    iget-boolean v0, v14, Lcom/android/settingslib/location/RecentLocationApps$Request;->isHighBattery:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 348
    const v17, 0x7f0b1488

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/DimmableIconPreference;->setSummary(I)V

    .line 353
    :goto_3
    new-instance v17, Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;

    iget-object v0, v14, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v14, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;-><init>(Lcom/android/settings/location/LocationSettings;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 352
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/DimmableIconPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 354
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 300
    .end local v9    # "pref":Lcom/android/settings/DimmableIconPreference;
    .end local v10    # "recentApps":Lcom/android/settingslib/location/RecentLocationApps;
    .end local v11    # "recentLocationPrefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    .end local v12    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/location/RecentLocationApps$Request;>;"
    .end local v14    # "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    .end local v15    # "request$iterator":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v19, "clock_sync_enabled"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/settings/location/LocationSettings$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/location/LocationSettings$7;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 301
    :cond_4
    const/16 v17, 0x0

    goto :goto_4

    .line 321
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mLocationUseInBackground:Landroid/preference/Preference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 350
    .restart local v9    # "pref":Lcom/android/settings/DimmableIconPreference;
    .restart local v10    # "recentApps":Lcom/android/settingslib/location/RecentLocationApps;
    .restart local v11    # "recentLocationPrefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    .restart local v12    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/location/RecentLocationApps$Request;>;"
    .restart local v14    # "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    .restart local v15    # "request$iterator":Ljava/util/Iterator;
    :cond_6
    const v17, 0x7f0b1489

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/DimmableIconPreference;->setSummary(I)V

    goto :goto_3

    .line 357
    .end local v9    # "pref":Lcom/android/settings/DimmableIconPreference;
    .end local v14    # "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    :cond_7
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_8

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v1}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 370
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/location/LocationSettings;->mIsEmerMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string/jumbo v18, "UPSM"

    const v19, 0x7f080091

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 372
    .local v13, "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_b

    .line 373
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "list$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 374
    .local v6, "list":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings/location/LocationSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_6

    .line 361
    .end local v6    # "list":Ljava/lang/String;
    .end local v7    # "list$iterator":Ljava/util/Iterator;
    .end local v13    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 362
    .local v5, "banner":Landroid/preference/Preference;
    const v17, 0x7f040165

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 363
    const v17, 0x7f0b1486

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 364
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 378
    .end local v5    # "banner":Landroid/preference/Preference;
    :cond_9
    const/4 v8, 0x0

    .line 382
    .local v8, "lockdownOnLocationAccess":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v17, v0

    const-string/jumbo v18, "no_share_location"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v17

    .line 382
    if-eqz v17, :cond_a

    .line 384
    const/4 v8, 0x1

    .line 386
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v1, v8}, Lcom/android/settings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V

    .line 388
    .end local v8    # "lockdownOnLocationAccess":Z
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/location/LocationSettings;->refreshLocationMode(Landroid/content/Context;)V

    .line 392
    return-object v16
.end method

.method private static getLocationString(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 530
    packed-switch p0, :pswitch_data_0

    .line 540
    const/4 v0, 0x0

    return v0

    .line 532
    :pswitch_0
    const v0, 0x7f0b1484

    return v0

    .line 534
    :pswitch_1
    const v0, 0x7f0b1483

    return v0

    .line 536
    :pswitch_2
    const v0, 0x7f0b1482

    return v0

    .line 538
    :pswitch_3
    const v0, 0x7f0b1481

    return v0

    .line 530
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isKioskEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 454
    const-string/jumbo v1, "persona"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 456
    .local v0, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 458
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v1

    return v1
.end method

.method private isManagedProfileRestrictedByBase()Z
    .locals 3

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 619
    const/4 v0, 0x0

    return v0

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v1, "no_share_location"

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v2, 0x0

    .line 398
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    .line 399
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getManagedProfiles(Landroid/os/UserManager;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 401
    :cond_0
    const-string/jumbo v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 402
    iput-object v2, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    .line 395
    :goto_0
    return-void

    .line 405
    :cond_1
    const-string/jumbo v0, "managed_profile_location_switch"

    .line 404
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/SecRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    .line 406
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 526
    const v0, 0x7f0b18af

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 176
    const/16 v0, 0x3f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 184
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    .line 187
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 188
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    .line 189
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 191
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->requestFocus()Z

    .line 192
    new-instance v1, Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    .line 180
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->setHasOptionsMenu(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mIsEmerMode:Z

    .line 216
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 204
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 504
    const/4 v0, 0x1

    const v1, 0x7f0b148e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 506
    invoke-super {p0, p1, p2}, Lcom/android/settings/location/LocationSettingsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 503
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onDestroyView()V

    .line 199
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 197
    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 13
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 545
    invoke-static {p1}, Lcom/android/settings/location/LocationSettings;->getLocationString(I)I

    move-result v6

    .line 546
    .local v6, "modeDescription":I
    if-eqz v6, :cond_0

    .line 547
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 553
    :cond_0
    if-eqz p1, :cond_5

    const/4 v1, 0x1

    .line 554
    .local v1, "enabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 555
    const-string/jumbo v10, "no_share_location"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 554
    invoke-static {v7, v10, v11}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 556
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 557
    const-string/jumbo v10, "no_share_location"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 556
    invoke-static {v7, v10, v11}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    .line 559
    .local v2, "hasBaseUserRestriction":Z
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 560
    const-string/jumbo v10, "gps"

    .line 559
    invoke-static {v7, v10}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    .line 561
    .local v4, "isGpsOn":Z
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 562
    const-string/jumbo v10, "content://com.sec.knox.provider/LocationPolicy"

    .line 563
    const-string/jumbo v11, "isGPSStateChangeAllowed"

    .line 561
    invoke-static {v7, v10, v11, v12}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 564
    .local v5, "isLocationGPSStateChangeAllowed":I
    if-eqz v4, :cond_6

    if-nez v5, :cond_6

    const/4 v3, 0x1

    .line 569
    .local v3, "isGpsEnforced":Z
    :goto_1
    if-nez v2, :cond_7

    if-eqz v0, :cond_7

    .line 570
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, v0}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 575
    :goto_2
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_a

    :cond_1
    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 576
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mImproveLocation:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_b

    :cond_2
    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 577
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mLocationUseInBackground:Landroid/preference/Preference;

    if-eqz v1, :cond_3

    if-eqz p2, :cond_c

    :cond_3
    :goto_5
    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 578
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 593
    invoke-direct {p0, v1}, Lcom/android/settings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(Z)V

    .line 595
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-virtual {v7, p1, p2}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->onModeChanged(IZ)V

    .line 599
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    if-eqz v7, :cond_4

    .line 600
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v7}, Lcom/android/settings/location/SettingsInjector;->reloadStatusMessages()V

    .line 544
    :cond_4
    return-void

    .line 553
    .end local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .end local v1    # "enabled":Z
    .end local v2    # "hasBaseUserRestriction":Z
    .end local v3    # "isGpsEnforced":Z
    .end local v4    # "isGpsOn":Z
    .end local v5    # "isLocationGPSStateChangeAllowed":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_0

    .line 564
    .restart local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .restart local v2    # "hasBaseUserRestriction":Z
    .restart local v4    # "isGpsOn":Z
    .restart local v5    # "isLocationGPSStateChangeAllowed":I
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "isGpsEnforced":Z
    goto :goto_1

    .line 572
    :cond_7
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez p2, :cond_8

    if-eqz v3, :cond_9

    :cond_8
    move v7, v8

    :goto_6
    invoke-virtual {v10, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_2

    :cond_9
    move v7, v9

    goto :goto_6

    :cond_a
    move v7, v9

    .line 575
    goto :goto_3

    :cond_b
    move v7, v9

    .line 576
    goto :goto_4

    :cond_c
    move v8, v9

    .line 577
    goto :goto_5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 512
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 520
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 515
    :pswitch_0
    const-class v1, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 516
    const v3, 0x7f0b148f

    .line 517
    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    .line 514
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 518
    const/4 v1, 0x1

    return v1

    .line 512
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 241
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mLocationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 254
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->pause()V

    .line 258
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Location"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 260
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    .line 239
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "LocationSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    const-string/jumbo v1, "LocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Swallowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 222
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    .line 223
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->resume()V

    .line 224
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mLocationObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 230
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Location"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 221
    return-void
.end method
