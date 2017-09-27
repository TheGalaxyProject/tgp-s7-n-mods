.class public Lcom/samsung/android/settings/DateTimeSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;
.implements Lcom/samsung/android/app/SemDatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DateTimeSettings$1;,
        Lcom/samsung/android/settings/DateTimeSettings$2;,
        Lcom/samsung/android/settings/DateTimeSettings$3;,
        Lcom/samsung/android/settings/DateTimeSettings$4;,
        Lcom/samsung/android/settings/DateTimeSettings$SettingsObserver;,
        Lcom/samsung/android/settings/DateTimeSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static resources:Landroid/content/res/Resources;


# instance fields
.field private category_international_roaming:Landroid/preference/PreferenceGroup;

.field private mAutoTimePref:Lcom/android/settingslib/SecRestrictedSwitchPreference;

.field private mAutoTimeZonePref:Landroid/preference/SwitchPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDualclock:Landroid/preference/PreferenceScreen;

.field private mDummyDate:Ljava/util/Calendar;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFirstId:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSecondId:I

.field private mSettingsObserver:Lcom/samsung/android/settings/DateTimeSettings$SettingsObserver;

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimeDisplayScheme:Landroid/preference/Preference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;

.field private mTimeZoneRecommend:Landroid/preference/Preference;

.field private mTzHidden1:Z

.field private mTzHidden2:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/DateTimeSettings;Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/DateTimeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 992
    new-instance v0, Lcom/samsung/android/settings/DateTimeSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/DateTimeSettings$2;-><init>()V

    .line 991
    sput-object v0, Lcom/samsung/android/settings/DateTimeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 1072
    new-instance v0, Lcom/samsung/android/settings/DateTimeSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/DateTimeSettings$3;-><init>()V

    .line 1071
    sput-object v0, Lcom/samsung/android/settings/DateTimeSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 135
    iput-boolean v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTzHidden1:Z

    .line 136
    iput-boolean v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTzHidden2:Z

    .line 138
    iput v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mFirstId:I

    .line 139
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mSecondId:I

    .line 787
    new-instance v0, Lcom/samsung/android/settings/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/DateTimeSettings$1;-><init>(Lcom/samsung/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1081
    new-instance v0, Lcom/samsung/android/settings/DateTimeSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/DateTimeSettings$4;-><init>(Lcom/samsung/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 95
    return-void
.end method

.method private applyEDMDateTimeChangePolicy()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 304
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "firstRun"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 305
    .local v7, "isFirstRun":Z
    const-string/jumbo v8, "device_policy"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 308
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v7, :cond_0

    .line 309
    return-void

    .line 312
    :cond_0
    const-string/jumbo v8, "auto_time"

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 313
    .local v1, "autoEnabled":Z
    const-string/jumbo v8, "auto_time_zone"

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    .line 315
    .local v2, "autoZoneEnabled":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 316
    const-string/jumbo v11, "content://com.sec.knox.provider/DateTimePolicy"

    const-string/jumbo v12, "isDateTimeChangeEnalbed"

    .line 315
    invoke-static {v8, v11, v12}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 317
    .local v6, "isDateTimeChangeEnabled":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 318
    if-ne v6, v10, :cond_3

    const/4 v3, 0x1

    .line 319
    .local v3, "dateTimeChangeEnabled":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 328
    const-string/jumbo v8, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 329
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 331
    .local v0, "activePhone":I
    const/4 v8, 0x4

    if-lt v0, v8, :cond_5

    .line 332
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v8, v9}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 333
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 334
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 335
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 336
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 302
    .end local v0    # "activePhone":I
    :cond_1
    :goto_1
    return-void

    .line 317
    .end local v3    # "dateTimeChangeEnabled":Z
    :cond_2
    const/4 v3, 0x1

    .restart local v3    # "dateTimeChangeEnabled":Z
    goto :goto_0

    .line 318
    .end local v3    # "dateTimeChangeEnabled":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "dateTimeChangeEnabled":Z
    goto :goto_0

    .line 320
    :cond_4
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 321
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 322
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 323
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v8, v9}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 324
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 338
    .restart local v0    # "activePhone":I
    :cond_5
    iget-object v11, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-eqz v1, :cond_6

    move v8, v9

    :goto_2
    invoke-virtual {v11, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 339
    iget-object v11, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-eqz v1, :cond_7

    move v8, v9

    :goto_3
    invoke-virtual {v11, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 340
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-eqz v2, :cond_8

    :goto_4
    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 341
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v8, v10}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 342
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    move v8, v10

    .line 338
    goto :goto_2

    :cond_7
    move v8, v10

    .line 339
    goto :goto_3

    :cond_8
    move v9, v10

    .line 340
    goto :goto_4

    .line 344
    .end local v0    # "activePhone":I
    :cond_9
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result v8

    if-nez v8, :cond_1

    .line 345
    iget-object v11, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-eqz v1, :cond_a

    move v8, v9

    :goto_5
    invoke-virtual {v11, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 346
    iget-object v11, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-eqz v1, :cond_b

    move v8, v9

    :goto_6
    invoke-virtual {v11, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 347
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-eqz v2, :cond_c

    :goto_7
    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 348
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v8, v10}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 349
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_a
    move v8, v10

    .line 345
    goto :goto_5

    :cond_b
    move v8, v10

    .line 346
    goto :goto_6

    :cond_c
    move v9, v10

    .line 347
    goto :goto_7
.end method

.method static convertToArabic(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 733
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 734
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 735
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/lit16 v2, v2, 0x660

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 733
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 737
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 740
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 630
    :try_start_0
    const-string/jumbo v2, "DateTimeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in getAutoState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method

.method static getTimeZoneName(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 7
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "mResources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 746
    const v3, 0x7f08012e

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 748
    .local v2, "xrp":Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 752
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 754
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 755
    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 756
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 763
    :cond_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "timezone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 764
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 765
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 777
    :cond_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 784
    .end local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :goto_2
    return-object p0

    .line 760
    .restart local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 778
    .end local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    .line 779
    .local v1, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v3, "DateTimeSettings"

    const-string/jumbo v4, "Ill-formatted timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 770
    .end local v1    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_4
    :goto_3
    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_5

    .line 771
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 780
    .end local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v0

    .line 781
    .local v0, "ioe":Ljava/io/IOException;
    const-string/jumbo v3, "DateTimeSettings"

    const-string/jumbo v4, "Unable to read timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 774
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_5
    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public static getTimeZoneText(Ljava/util/TimeZone;Z)Ljava/lang/String;
    .locals 12
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "includeName"    # Z

    .prologue
    const/4 v3, 0x1

    .line 665
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 668
    .local v6, "now":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "ZZZZ"

    invoke-direct {v1, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 669
    .local v1, "gmtFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 670
    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "gmtString":Ljava/lang/String;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 674
    .local v0, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 675
    .local v4, "l":Ljava/util/Locale;
    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v9

    if-ne v9, v3, :cond_0

    .line 677
    .local v3, "isRtl":Z
    :goto_0
    if-eqz v3, :cond_1

    sget-object v9, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    .line 676
    :goto_1
    invoke-virtual {v0, v2, v9}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    .line 679
    if-nez p1, :cond_2

    .line 680
    return-object v2

    .line 675
    .end local v3    # "isRtl":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 677
    .restart local v3    # "isRtl":Z
    :cond_1
    sget-object v9, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 689
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 690
    .local v5, "locale":Ljava/util/Locale;
    invoke-static {v5}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v7

    .line 694
    .local v7, "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Asia/Jerusalem"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 695
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_Setting_DisableIsraelCountry"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 694
    if-eqz v9, :cond_7

    .line 696
    const-string/jumbo v9, "DateTimeSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "for MEA timeZoneId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 698
    .local v8, "zoneNameString":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 699
    const-string/jumbo v9, "DateTimeSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "for MEA zoneNameString = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_3
    :goto_2
    if-nez v8, :cond_4

    .line 707
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    .line 710
    :cond_4
    const-string/jumbo v9, "GMT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 711
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/DateTimeSettings;->resources:Landroid/content/res/Resources;

    invoke-static {v9, v10}, Lcom/samsung/android/settings/DateTimeSettings;->getTimeZoneName(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v8

    .line 715
    :cond_5
    if-eqz v3, :cond_6

    .line 716
    invoke-static {v2}, Lcom/samsung/android/settings/DateTimeSettings;->convertToArabic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 719
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 702
    .end local v8    # "zoneNameString":Ljava/lang/String;
    :cond_7
    invoke-static {v7, p0, v6}, Lcom/samsung/android/settings/DateTimeSettings;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "zoneNameString":Ljava/lang/String;
    goto :goto_2
.end method

.method private static getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .param p0, "names"    # Landroid/icu/text/TimeZoneNames;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "now"    # Ljava/util/Date;

    .prologue
    .line 724
    invoke-virtual {p1, p2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    .line 726
    .local v0, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :goto_0
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 725
    .end local v0    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :cond_0
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    .restart local v0    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    goto :goto_0
.end method

.method private initUI()V
    .locals 14

    .prologue
    const v13, 0x7f0b0871

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 188
    .local v6, "root":Landroid/preference/PreferenceScreen;
    if-eqz v6, :cond_0

    .line 189
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 191
    :cond_0
    const v8, 0x7f0800da

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 193
    const-string/jumbo v8, "auto_time"

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 194
    .local v1, "autoTimeEnabled":Z
    const-string/jumbo v8, "auto_time_zone"

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    .line 195
    .local v2, "autoTimeZoneEnabled":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    if-eq v1, v2, :cond_1

    .line 196
    move v2, v1

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "auto_time_zone"

    if-eqz v1, :cond_8

    move v8, v9

    .line 197
    :goto_0
    invoke-static {v11, v12, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    :cond_1
    const-string/jumbo v8, "auto_time"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/SecRestrictedSwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    .line 202
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v8, p0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfAutoTimeRequired(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 204
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v8, v0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 207
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "firstRun"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 209
    .local v4, "isFirstRun":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 213
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v8, v1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    .line 214
    const-string/jumbo v8, "auto_zone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    .line 215
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v4, :cond_9

    .line 219
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 220
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const v11, 0x7f0b1125

    invoke-virtual {v8, v11}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummary(I)V

    .line 221
    const-string/jumbo v8, "phone_category"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v11, "auto_time_zone"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    const/4 v2, 0x0

    .line 229
    .end local v2    # "autoTimeZoneEnabled":Z
    :goto_1
    const-string/jumbo v8, "time"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    .line 230
    const-string/jumbo v8, "24 hour"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    .line 231
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v8, Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 232
    const-string/jumbo v8, "timezone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    .line 233
    const-string/jumbo v8, "date"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    .line 234
    const-string/jumbo v8, "dualclock_settings"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    .line 235
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v8, v10}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 236
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 237
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 238
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 239
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 240
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 242
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v8

    if-nez v8, :cond_3

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 246
    :cond_3
    const-string/jumbo v8, "oversea"

    const-string/jumbo v11, "ril.currentplmn"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 247
    .local v5, "isRoamingArea":Z
    if-nez v5, :cond_a

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 248
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0af2

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 248
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 250
    .local v7, "sText":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 257
    .end local v7    # "sText":Ljava/lang/String;
    :goto_2
    if-eqz v4, :cond_4

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 261
    :cond_4
    iget-object v11, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-eqz v1, :cond_b

    move v8, v10

    :goto_3
    invoke-virtual {v11, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 262
    iget-object v11, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-eqz v1, :cond_c

    move v8, v10

    :goto_4
    invoke-virtual {v11, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 263
    iget-object v11, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-eqz v2, :cond_d

    move v8, v10

    :goto_5
    invoke-virtual {v11, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 265
    const-string/jumbo v8, "auto_zone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    .line 266
    if-eqz v1, :cond_5

    .line 267
    const-string/jumbo v8, "date"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    .line 268
    const-string/jumbo v8, "time"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 270
    const-string/jumbo v8, "timezone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    .line 273
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 281
    const-string/jumbo v8, "category_international_roaming_time_settings"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    .line 282
    const-string/jumbo v8, "time_zone_recommend"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/preference/Preference;

    .line 283
    const-string/jumbo v8, "time_display_scheme_setting"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/preference/Preference;

    .line 285
    const-string/jumbo v8, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 286
    if-eqz v4, :cond_6

    .line 287
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    if-eqz v8, :cond_6

    .line 288
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 292
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->timeZoneRcmndAvail()Z

    move-result v8

    if-eqz v8, :cond_e

    const-string/jumbo v8, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 298
    :cond_7
    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->refresRoaming()V

    .line 186
    return-void

    .end local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "isFirstRun":Z
    .end local v5    # "isRoamingArea":Z
    .restart local v2    # "autoTimeZoneEnabled":Z
    :cond_8
    move v8, v10

    .line 198
    goto/16 :goto_0

    .line 225
    .restart local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "isFirstRun":Z
    :cond_9
    const-string/jumbo v8, "wifi_only_category"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 253
    .end local v2    # "autoTimeZoneEnabled":Z
    .restart local v5    # "isRoamingArea":Z
    :cond_a
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v13}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 254
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_b
    move v8, v9

    .line 261
    goto/16 :goto_3

    :cond_c
    move v8, v9

    .line 262
    goto/16 :goto_4

    :cond_d
    move v8, v9

    .line 263
    goto/16 :goto_5

    .line 293
    :cond_e
    iput-boolean v9, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTzHidden1:Z

    .line 294
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v8, v9, v10}, Lcom/samsung/android/settings/DateTimeSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 295
    const-string/jumbo v8, "DateTimeSettings"

    const-string/jumbo v9, "Not in roaming state"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .locals 3
    .param p1, "is24Hour"    # Z

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 624
    const-string/jumbo v2, "time_12_24"

    .line 625
    if-eqz p1, :cond_0

    const-string/jumbo v0, "24"

    .line 623
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 622
    return-void

    .line 625
    :cond_0
    const-string/jumbo v0, "12"

    goto :goto_0
.end method

.method static setDate(Landroid/content/Context;III)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 638
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 640
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 641
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 642
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 643
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide v6, 0x1160d1b4800L

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 645
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 646
    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 637
    :cond_0
    return-void
.end method

.method static setTime(Landroid/content/Context;II)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v4, 0x0

    .line 651
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 653
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 654
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 655
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 656
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 657
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide v6, 0x1160d1b4800L

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 659
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 660
    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 650
    :cond_0
    return-void
.end method

.method private showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V
    .locals 2
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p3, "isShow"    # Z

    .prologue
    .line 807
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 808
    const-string/jumbo v0, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 809
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private timeUpdated(Z)V
    .locals 2
    .param p1, "is24Hour"    # Z

    .prologue
    .line 611
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    .local v0, "timeChanged":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 613
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 610
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 169
    const/16 v0, 0x26

    return v0
.end method

.method public getSlotSelectionInformation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 948
    const-string/jumbo v0, "0"

    .line 949
    .local v0, "current_slot":Ljava/lang/String;
    const-string/jumbo v1, "gsm.sim.selectnetwork"

    const-string/jumbo v2, "CDMA"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CDMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 950
    const-string/jumbo v0, "0"

    .line 957
    :goto_0
    return-object v0

    .line 951
    :cond_0
    const-string/jumbo v1, "gsm.sim.selectnetwork"

    const-string/jumbo v2, "CDMA"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 952
    const-string/jumbo v0, "1"

    goto :goto_0

    .line 954
    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public isDataRoaming()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 886
    const-string/jumbo v1, "gsm.sim.state"

    iget v2, p0, Lcom/samsung/android/settings/DateTimeSettings;->mFirstId:I

    const-string/jumbo v3, "UNKNOWN"

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, "simState":Ljava/lang/String;
    const-string/jumbo v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 888
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/DateTimeSettings;->mFirstId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    return v1

    .line 890
    :cond_0
    return v4
.end method

.method public isDataRoamingSecondary()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 895
    const-string/jumbo v1, "gsm.sim.state"

    iget v2, p0, Lcom/samsung/android/settings/DateTimeSettings;->mSecondId:I

    const-string/jumbo v3, "UNKNOWN"

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, "simState2":Ljava/lang/String;
    const-string/jumbo v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/DateTimeSettings;->mSecondId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    return v1

    .line 899
    :cond_0
    return v4
.end method

.method public isSlot1CdmaActive()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 939
    const-string/jumbo v4, "gsm.sim.currentcardstatus"

    iget v5, p0, Lcom/samsung/android/settings/DateTimeSettings;->mFirstId:I

    const-string/jumbo v6, "9"

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 940
    .local v1, "cdmaCardStatus":I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    const/4 v0, 0x1

    .line 941
    .local v0, "cdmaActive":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 942
    .local v2, "isSlotSwitched":Z
    const-string/jumbo v4, "DateTimeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cdmaActive : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " isSlotSwitched : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " cdmaCardStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    if-eqz v0, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v3

    .line 940
    .end local v0    # "cdmaActive":Z
    .end local v2    # "isSlotSwitched":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "cdmaActive":Z
    goto :goto_0

    .line 944
    .restart local v2    # "isSlotSwitched":Z
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public isSlot1GsmActive()Z
    .locals 6

    .prologue
    .line 920
    const/16 v1, 0x9

    .line 921
    .local v1, "gsmCardStatus":I
    const-string/jumbo v3, "gsm.sim.currentcardstatus"

    iget v4, p0, Lcom/samsung/android/settings/DateTimeSettings;->mFirstId:I

    const-string/jumbo v5, "9"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 922
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    .line 923
    .local v0, "gsmActive":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 924
    .local v2, "isSlotSwitched":Z
    const-string/jumbo v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "gsmActive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isSlotSwitched : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " gsmCardStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    if-eqz v0, :cond_1

    .end local v2    # "isSlotSwitched":Z
    :goto_1
    return v2

    .line 922
    .end local v0    # "gsmActive":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "gsmActive":Z
    goto :goto_0

    .line 926
    .restart local v2    # "isSlotSwitched":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isSlot2GsmActive()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 930
    const-string/jumbo v4, "gsm.sim.currentcardstatus"

    iget v5, p0, Lcom/samsung/android/settings/DateTimeSettings;->mSecondId:I

    const-string/jumbo v6, "9"

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 931
    .local v1, "gsmCardStatus":I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    const/4 v0, 0x1

    .line 932
    .local v0, "gsmActive":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 933
    .local v2, "isSlotSwitched":Z
    const-string/jumbo v4, "DateTimeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "gsmActive : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " isSlotSwitched : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " gsmCardStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    if-eqz v0, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v3

    .line 931
    .end local v0    # "gsmActive":Z
    .end local v2    # "isSlotSwitched":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "gsmActive":Z
    goto :goto_0

    .line 935
    .restart local v2    # "isSlotSwitched":Z
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 606
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/DateTimeSettings;->resources:Landroid/content/res/Resources;

    .line 177
    invoke-direct {p0}, Lcom/samsung/android/settings/DateTimeSettings;->initUI()V

    .line 179
    new-instance v0, Lcom/samsung/android/settings/DateTimeSettings$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/DateTimeSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/DateTimeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mSettingsObserver:Lcom/samsung/android/settings/DateTimeSettings$SettingsObserver;

    .line 183
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 173
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 19
    .param p1, "id"    # I

    .prologue
    .line 482
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 483
    .local v10, "calendar":Ljava/util/Calendar;
    packed-switch p1, :pswitch_data_0

    .line 524
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 485
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 486
    .local v13, "mCalendar":Ljava/util/Calendar;
    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    .line 487
    const/16 v4, 0x7d0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v13, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 488
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    .line 489
    .local v16, "minDate":J
    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    .line 490
    const/16 v4, 0x7f4

    const/16 v5, 0xb

    const/16 v6, 0x1f

    invoke-virtual {v13, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 491
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 492
    .local v14, "maxDate":J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    .line 493
    .local v12, "currentTimezone":Ljava/util/TimeZone;
    const-string/jumbo v4, "America/Sao_Paulo"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    .line 494
    .local v9, "brasilia":Ljava/util/TimeZone;
    const-string/jumbo v4, "America/Santiago"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    .line 496
    .local v18, "santiago":Ljava/util/TimeZone;
    invoke-virtual {v12, v9}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 497
    :cond_0
    const-wide/32 v4, 0x36ee80

    sub-long v16, v16, v4

    .line 499
    :cond_1
    new-instance v2, Lcom/samsung/android/app/SemDatePickerDialog;

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 502
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 503
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 504
    const/4 v4, 0x5

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object/from16 v4, p0

    .line 499
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/SemDatePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemDatePickerDialog$OnDateSetListener;III)V

    .line 505
    .local v2, "d":Lcom/samsung/android/app/SemDatePickerDialog;
    invoke-virtual {v2}, Lcom/samsung/android/app/SemDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 506
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 507
    .local v11, "calendar1":Ljava/util/Calendar;
    invoke-virtual {v11}, Ljava/util/Calendar;->clear()V

    .line 508
    const/16 v4, 0x7d7

    const/16 v5, 0xa

    const/4 v6, 0x5

    invoke-virtual {v11, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 509
    invoke-virtual {v2}, Lcom/samsung/android/app/SemDatePickerDialog;->getDatePicker()Lcom/samsung/android/widget/SemDatePicker;

    move-result-object v4

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/widget/SemDatePicker;->setMinDate(J)V

    .line 510
    invoke-virtual {v11}, Ljava/util/Calendar;->clear()V

    .line 511
    const/16 v4, 0x7f4

    const/16 v5, 0xb

    const/16 v6, 0x1f

    invoke-virtual {v11, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 512
    invoke-virtual {v2}, Lcom/samsung/android/app/SemDatePickerDialog;->getDatePicker()Lcom/samsung/android/widget/SemDatePicker;

    move-result-object v4

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/widget/SemDatePicker;->setMaxDate(J)V

    .line 513
    return-object v2

    .line 515
    .end local v2    # "d":Lcom/samsung/android/app/SemDatePickerDialog;
    .end local v9    # "brasilia":Ljava/util/TimeZone;
    .end local v11    # "calendar1":Ljava/util/Calendar;
    .end local v12    # "currentTimezone":Ljava/util/TimeZone;
    .end local v13    # "mCalendar":Ljava/util/Calendar;
    .end local v14    # "maxDate":J
    .end local v16    # "minDate":J
    .end local v18    # "santiago":Ljava/util/TimeZone;
    :pswitch_1
    new-instance v3, Lcom/samsung/android/app/SemTimePickerDialog;

    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 518
    const/16 v5, 0xb

    invoke-virtual {v10, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 519
    const/16 v5, 0xc

    invoke-virtual {v10, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    move-object/from16 v5, p0

    .line 515
    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 521
    .local v3, "t":Lcom/samsung/android/app/SemTimePickerDialog;
    invoke-virtual {v3}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 522
    return-object v3

    .line 483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateSet(Lcom/samsung/android/widget/SemDatePicker;III)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/widget/SemDatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 417
    const-string/jumbo v1, "auto_time"

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    return-void

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 423
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 424
    invoke-static {v0, p2, p3, p4}, Lcom/samsung/android/settings/DateTimeSettings;->setDate(Landroid/content/Context;III)V

    .line 425
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 415
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 387
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 388
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 393
    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DateAndTime"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 386
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/16 v6, 0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 450
    const-string/jumbo v3, "DateTimeSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string/jumbo v3, "auto_time"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 452
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 453
    .local v0, "autoEnabled":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "auto_time"

    .line 454
    if-eqz v0, :cond_3

    move v3, v4

    .line 453
    :goto_0
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 455
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "auto_time_zone"

    if-eqz v0, :cond_4

    move v3, v4

    .line 456
    :goto_1
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/DateTimeSettings;->initUI()V

    .line 460
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1002dd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-eqz v0, :cond_1

    move v5, v6

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v7, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 477
    .end local v0    # "autoEnabled":Z
    :cond_2
    :goto_2
    return v4

    .restart local v0    # "autoEnabled":Z
    :cond_3
    move v3, v5

    .line 454
    goto :goto_0

    :cond_4
    move v3, v5

    .line 457
    goto :goto_1

    .line 461
    .end local v0    # "autoEnabled":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v3, "auto_zone"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 462
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 464
    .local v1, "autoZoneEnabled":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "auto_time_zone"

    if-eqz v1, :cond_6

    move v3, v4

    .line 463
    :goto_3
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 465
    iget-object v3, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-eqz v1, :cond_7

    :goto_4
    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 467
    invoke-direct {p0}, Lcom/samsung/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    goto :goto_2

    :cond_6
    move v3, v5

    .line 464
    goto :goto_3

    :cond_7
    move v5, v4

    .line 465
    goto :goto_4

    .line 469
    .end local v1    # "autoZoneEnabled":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_8
    const-string/jumbo v3, "24 hour"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 471
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 472
    .local v2, "is24Hour":Z
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/DateTimeSettings;->set24Hour(Z)V

    .line 473
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 474
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/DateTimeSettings;->timeUpdated(Z)V

    .line 475
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1002e2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-eqz v2, :cond_9

    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v7, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_2

    :cond_9
    move v6, v5

    goto :goto_5
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 567
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 568
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 569
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/DateTimeSettings;->showDialog(I)V

    .line 570
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1002de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 596
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 571
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v2, :cond_2

    .line 573
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 574
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DateTimeSettings;->showDialog(I)V

    .line 575
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1002df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    .line 582
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/preference/Preference;

    invoke-virtual {p2, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 583
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 584
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 586
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.sec.android.app.irsettings"

    .line 587
    const-string/jumbo v4, "com.sec.android.app.irsettings.TimeZoneRecommend"

    .line 586
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 588
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DateTimeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 593
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/preference/Preference;

    invoke-virtual {p2, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->showTimeDisplaySchemeDialog()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 357
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 359
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->setStorageDeviceProtected()V

    .line 363
    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/DateTimeSettings;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 366
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 367
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 374
    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const-string/jumbo v2, "auto_time"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    .line 379
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->refresRoaming()V

    .line 382
    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/DateTimeSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "DateAndTime"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 356
    return-void
.end method

.method public onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/widget/SemTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 432
    const-string/jumbo v1, "auto_time"

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    return-void

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 438
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 439
    invoke-static {v0, p2, p3}, Lcom/samsung/android/settings/DateTimeSettings;->setTime(Landroid/content/Context;II)V

    .line 440
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 430
    :cond_1
    return-void
.end method

.method public refresRoaming()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 961
    const-string/jumbo v0, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 962
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->timeZoneRcmndBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 964
    iput-boolean v3, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTzHidden1:Z

    .line 965
    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/DateTimeSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 969
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->isDataRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->isDataRoamingSecondary()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 973
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->timeZoneDisplaySchemeBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 974
    iput-boolean v3, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTzHidden2:Z

    .line 975
    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/DateTimeSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 976
    const-string/jumbo v0, "DateTimeSettings"

    const-string/jumbo v1, "remove TimeDisplayScheme menu in GMT +8:00"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTzHidden1:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTzHidden2:Z

    if-eqz v0, :cond_3

    .line 980
    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_3

    .line 981
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 960
    :cond_3
    :goto_1
    return-void

    .line 970
    :cond_4
    iput-boolean v3, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTzHidden2:Z

    .line 971
    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/DateTimeSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 972
    const-string/jumbo v0, "DateTimeSettings"

    const-string/jumbo v1, "remove TimeDisplayScheme menu not in roaming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 985
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_3

    .line 986
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method showTimeDisplaySchemeDialog()V
    .locals 3

    .prologue
    .line 600
    const v1, 0x7f0b0ab9

    invoke-static {v1}, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->newInstance(I)Lcom/samsung/android/settings/TimeDisplaySchemeSettings;

    move-result-object v0

    .line 601
    .local v0, "newFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public timeZoneDisplaySchemeBlocked()Z
    .locals 6

    .prologue
    .line 904
    const/4 v1, 0x0

    .line 905
    .local v1, "tzBlocked":Z
    const/4 v0, 0x0

    .line 906
    .local v0, "offset":I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 907
    .local v2, "zone":Ljava/util/TimeZone;
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    div-int/lit8 v3, v3, 0x3c

    div-int/lit8 v3, v3, 0x3c

    div-int/lit16 v0, v3, 0x3e8

    .line 908
    const-string/jumbo v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timeZoneDisplaySchemeBlocked time zone offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    .line 911
    const/4 v1, 0x1

    .line 916
    :goto_0
    return v1

    .line 913
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public timeZoneRcmndAvail()Z
    .locals 14

    .prologue
    .line 826
    const/4 v1, 0x0

    .line 827
    .local v1, "chinaArea":Z
    const-string/jumbo v11, "gsm.operator.numeric"

    iget v12, p0, Lcom/samsung/android/settings/DateTimeSettings;->mFirstId:I

    const-string/jumbo v13, ""

    invoke-static {v11, v12, v13}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 828
    .local v3, "opNumCdma":Ljava/lang/String;
    const-string/jumbo v11, "gsm.operator.numeric"

    iget v12, p0, Lcom/samsung/android/settings/DateTimeSettings;->mSecondId:I

    const-string/jumbo v13, ""

    invoke-static {v11, v12, v13}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 829
    .local v5, "opNumGsm":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->isSlot1CdmaActive()Z

    move-result v0

    .line 830
    .local v0, "cdmaActive":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->isSlot1GsmActive()Z

    move-result v9

    .line 831
    .local v9, "slot1GsmActive":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->isSlot2GsmActive()Z

    move-result v10

    .line 833
    .local v10, "slot2GsmActive":Z
    const/4 v4, 0x0

    .local v4, "opNumCdmaInt":I
    const/4 v6, 0x0

    .line 835
    .local v6, "opNumGsmInt":I
    const/4 v8, 0x1

    .line 838
    .local v8, "serviceState":I
    const-string/jumbo v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 840
    .local v7, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 841
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getPhoneServiceState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 847
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-lt v11, v12, :cond_1

    .line 848
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 850
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-lt v11, v12, :cond_2

    .line 851
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 853
    :cond_2
    const/16 v11, 0x1cc

    if-eq v4, v11, :cond_3

    const/16 v11, 0x1c7

    if-ne v4, v11, :cond_5

    .line 854
    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 857
    :cond_4
    const-string/jumbo v11, "DateTimeSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "timeZoneRcmndAvail chinaArea: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " cdma SS: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " cdmaActive:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " slot1GsmActive:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " slot2GsmActive:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const-string/jumbo v11, "DateTimeSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "timeZoneRcmndAvail UserHandle.myUserId(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    const/16 v12, 0x64

    if-lt v11, v12, :cond_6

    .line 861
    const/4 v11, 0x1

    return v11

    .line 843
    :catch_0
    move-exception v2

    .line 844
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 853
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_5
    const/16 v11, 0x1cc

    if-eq v6, v11, :cond_3

    const/16 v11, 0x1c7

    if-ne v6, v11, :cond_4

    goto :goto_1

    .line 864
    :cond_6
    if-nez v0, :cond_8

    if-nez v9, :cond_7

    if-eqz v10, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->isDataRoamingSecondary()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 865
    :cond_7
    const/4 v11, 0x1

    return v11

    .line 867
    :cond_8
    const/4 v11, 0x0

    return v11
.end method

.method public timeZoneRcmndBlocked()Z
    .locals 6

    .prologue
    .line 872
    const/4 v2, 0x0

    .line 873
    .local v2, "timezoneRcmndBlocked":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->isSlot1CdmaActive()Z

    move-result v0

    .line 874
    .local v0, "cdmaActive":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->isSlot2GsmActive()Z

    move-result v1

    .line 875
    .local v1, "gsm2Active":Z
    const-string/jumbo v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timeZoneRcmndBlocked cdmaActive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " gsm2Active : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const-string/jumbo v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timeZoneRcmndBlocked UserHandle.myUserId(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_2

    .line 879
    :cond_1
    const/4 v2, 0x1

    .line 882
    :cond_2
    return v2
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 397
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 398
    .local v8, "now":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 401
    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 402
    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 403
    .local v7, "dummyDate":Ljava/util/Date;
    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/samsung/android/settings/DateTimeSettings;->getTimeZoneText(Ljava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 410
    invoke-direct {p0}, Lcom/samsung/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    .line 396
    return-void
.end method
